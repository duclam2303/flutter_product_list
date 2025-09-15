import 'package:flutter/foundation.dart';
import '../models/product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    this.quantity = 1,
  });

  double get totalPrice => product.price * quantity;
}

class CartProvider extends ChangeNotifier {
  final Map<int, CartItem> _items = {};
  String _searchQuery = '';

  Map<int, CartItem> get items => _items;

  List<CartItem> get cartItems {
    if (_searchQuery.isEmpty) {
      return _items.values.toList();
    }
    return _items.values.where((item) =>
      item.product.title.toLowerCase().contains(_searchQuery.toLowerCase()) ||
      item.product.category.toLowerCase().contains(_searchQuery.toLowerCase())
    ).toList();
  }

  int get itemCount => _items.length;

  int get totalQuantity => _items.values.fold(0, (sum, item) => sum + item.quantity);

  double get totalAmount => _items.values.fold(0.0, (sum, item) => sum + item.totalPrice);

  void addToCart(Product product) {
    if (_items.containsKey(product.id)) {
      _items[product.id]!.quantity++;
    } else {
      _items[product.id] = CartItem(product: product);
    }
    notifyListeners();
  }

  void removeFromCart(int productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void updateQuantity(int productId, int newQuantity) {
    if (_items.containsKey(productId)) {
      if (newQuantity <= 0) {
        _items.remove(productId);
      } else {
        _items[productId]!.quantity = newQuantity;
      }
      notifyListeners();
    }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  bool isInCart(int productId) {
    return _items.containsKey(productId);
  }

  int getQuantity(int productId) {
    return _items[productId]?.quantity ?? 0;
  }

  void searchCart(String query) {
    _searchQuery = query;
    notifyListeners();
  }
}
