import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import '../models/product.dart';
import '../services/api_service.dart';
import '../services/database_service.dart';

enum LoadingState { idle, loading, loadingMore, error }

class ProductProvider extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  final DatabaseService _databaseService = DatabaseService();
  
  // State variables
  List<Product> _products = [];
  List<Product> get products => _products;
  
  Set<int> _favoriteIds = {};
  // Get favorite products from current list
  List<Product> get favoriteProducts {
    if (_favoritesSearchQuery.isEmpty) {
      return _products.where((product) => _favoriteIds.contains(product.id)).toList();
    } else {
      return _products
          .where((product) => _favoriteIds.contains(product.id))
          .where((product) => 
            product.title.toLowerCase().contains(_favoritesSearchQuery.toLowerCase()) ||
            product.description.toLowerCase().contains(_favoritesSearchQuery.toLowerCase()) ||
            product.category.toLowerCase().contains(_favoritesSearchQuery.toLowerCase())
          )
          .toList();
    }
  }
  
  Set<int> get favoriteIds => _favoriteIds;
  
  String _favoritesSearchQuery = '';
  String get favoritesSearchQuery => _favoritesSearchQuery;
  
  LoadingState _loadingState = LoadingState.idle;
  LoadingState get loadingState => _loadingState;
  
  String _errorMessage = '';
  String get errorMessage => _errorMessage;
  
  bool _hasReachedMax = false;
  bool get hasReachedMax => _hasReachedMax;
  
  String _currentSearchQuery = '';
  String get currentSearchQuery => _currentSearchQuery;
  
  int _currentSkip = 0;
  int _totalProducts = 0;
  
  // Search debouncing
  final BehaviorSubject<String> _searchSubject = BehaviorSubject<String>();
  
  ProductProvider() {
    _initializeSearch();
    _loadFavorites();
  }
  
  void _initializeSearch() {
    _searchSubject
        .debounceTime(const Duration(milliseconds: 500))
        .distinct()
        .listen((query) {
      _performSearch(query);
    });
  }
  
  Future<void> _loadFavorites() async {
    try {
      _favoriteIds = (await _databaseService.getFavoriteIds()).toSet();
      notifyListeners();
    } catch (e) {
      debugPrint('Error loading favorites: $e');
    }
  }
  
  // Initial load
  Future<void> loadProducts() async {
    if (_loadingState == LoadingState.loading) return;
    
    _setLoadingState(LoadingState.loading);
    _currentSkip = 0;
    _hasReachedMax = false;
    _currentSearchQuery = '';
    
    try {
      final response = await _apiService.getProducts(skip: 0, limit: 20);
      _products = response.products;
      _totalProducts = response.total;
      _currentSkip = response.products.length;
      _hasReachedMax = _products.length >= _totalProducts;
      _setLoadingState(LoadingState.idle);
    } catch (e) {
      _setError(e.toString());
    }
  }
  
  // Load more products (infinite scroll)
  Future<void> loadMoreProducts() async {
    if (_loadingState == LoadingState.loadingMore || _hasReachedMax) return;
    _setLoadingState(LoadingState.loadingMore);
    try {
      ProductResponse response;
      if (_currentSearchQuery.isEmpty) {
        response = await _apiService.getProducts(skip: _currentSkip, limit: 20);
      } else {
        response = await _apiService.searchProducts(
          query: _currentSearchQuery,
          skip: _currentSkip,
          limit: 20,
        );
      }
      // Nếu không có sản phẩm mới hoặc số lượng trả về < 20 thì đã hết dữ liệu
      if (response.products.isEmpty || response.products.length < 20) {
        _hasReachedMax = true;
      }
      _products.addAll(response.products);
      _currentSkip += response.products.length;
      _setLoadingState(LoadingState.idle);
    } catch (e) {
      _setError('Không thể tải thêm sản phẩm');
    }
  }
  
  // Search with debouncing
  void search(String query) {
    _searchSubject.add(query.trim());
  }
  
  Future<void> _performSearch(String query) async {
    if (_loadingState == LoadingState.loading) return;
    
    _currentSearchQuery = query;
    _currentSkip = 0;
    _hasReachedMax = false;
    
    if (query.isEmpty) {
      await loadProducts();
      return;
    }
    
    _setLoadingState(LoadingState.loading);
    
    try {
      final response = await _apiService.searchProducts(
        query: query,
        skip: 0,
        limit: 20,
      );
      _products = response.products;
      _totalProducts = response.total;
      _currentSkip = response.products.length;
      _hasReachedMax = _products.length >= _totalProducts;
      _setLoadingState(LoadingState.idle);
    } catch (e) {
      _setError(e.toString());
    }
  }
  
  // Toggle favorite
  Future<void> toggleFavorite(Product product) async {
    try {
      final productId = product.id;
      if (_favoriteIds.contains(productId)) {
        await _databaseService.removeFromFavorites(productId);
        _favoriteIds.remove(productId);
      } else {
        await _databaseService.addToFavorites(
          productId,
          json.encode(product.toJson()),
        );
        _favoriteIds.add(productId);
      }
      notifyListeners();
    } catch (e) {
      debugPrint('Error toggling favorite: $e');
    }
  }
  
  // Search favorites locally
  void searchFavorites(String query) {
    _favoritesSearchQuery = query.trim();
    notifyListeners();
  }
  
  bool isFavorite(int productId) {
    return _favoriteIds.contains(productId);
  }
  
  void _setLoadingState(LoadingState state) {
    _loadingState = state;
    if (state != LoadingState.error) {
      _errorMessage = '';
    }
    notifyListeners();
  }
  
  void _setError(String message) {
    _loadingState = LoadingState.error;
    _errorMessage = message;
    notifyListeners();
  }
  
  void clearError() {
    if (_loadingState == LoadingState.error) {
      _loadingState = LoadingState.idle;
      _errorMessage = '';
      notifyListeners();
    }
  }
  
  @override
  void dispose() {
    _searchSubject.close();
    super.dispose();
  }
}
