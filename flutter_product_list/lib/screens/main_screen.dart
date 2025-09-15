import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../providers/cart_provider.dart';
import '../widgets/product_card.dart';
import 'favorites_screen.dart';
import 'cart_screen.dart';
import 'product_detail_screen.dart'; // Import màn hình chi tiết sản phẩm

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _searchController = TextEditingController();
    
    // Thêm listener để rebuild khi tab thay đổi
    _tabController.addListener(() {
      setState(() {});
    });
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProductProvider>().loadProducts();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          'Product Store',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor.withValues(alpha: 0.8),
              ],
            ),
          ),
        ),
        foregroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(125), // Cố định chiều cao cho tất cả tab
          child: Column(
            children: [
              // Search Bar (hiển thị ở tab sản phẩm và yêu thích)
              Consumer<ProductProvider>(
                builder: (context, productProvider, child) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    height: 70, // Hiển thị search ở tất cả tab
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: TextField(
                        controller: _searchController,
                        onChanged: (value) {
                          if (_tabController.index == 0) {
                            // Tab sản phẩm - search API
                            productProvider.search(value);
                          } else if (_tabController.index == 1) {
                            // Tab yêu thích - search local
                            productProvider.searchFavorites(value);
                          } else if (_tabController.index == 2) {
                            // Tab giỏ hàng - search local
                            context.read<CartProvider>().searchCart(value);
                          }
                        },
                        decoration: InputDecoration(
                          hintText: _tabController.index == 0 
                              ? 'Tìm kiếm sản phẩm...'
                              : _tabController.index == 1
                                  ? 'Tìm kiếm trong yêu thích...'
                                  : 'Tìm kiếm trong giỏ hàng...',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 14,
                          ),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Colors.grey[600],
                          ),
                          suffixIcon: _searchController.text.isNotEmpty
                              ? IconButton(
                                  icon: Icon(
                                    Icons.clear_rounded,
                                    color: Colors.grey[600],
                                  ),
                                  onPressed: () {
                                    _searchController.clear();
                                    if (_tabController.index == 0) {
                                      productProvider.search('');
                                    } else {
                                      productProvider.searchFavorites('');
                                    }
                                  },
                                )
                              : null,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              
              // Tab Bar với thiết kế đẹp hơn
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4), // Giảm margin
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  controller: _tabController,
                  onTap: (index) {
                    setState(() {
                      // Clear search when switching tabs
                      _searchController.clear();
                      if (index == 0) {
                        context.read<ProductProvider>().search('');
                        context.read<ProductProvider>().searchFavorites('');
                      } else {
                        context.read<ProductProvider>().search('');
                        context.read<ProductProvider>().searchFavorites('');
                      }
                    });
                  },
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                      height: 45, // Giảm từ 50 xuống 45
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            size: 18, // Giảm size icon
                          ),
                          const SizedBox(width: 6), // Giảm spacing
                          const Text(
                            'Sản phẩm',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13, // Giảm font size
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      height: 45, // Giảm từ 50 xuống 45
                      child: Consumer<ProductProvider>(
                        builder: (context, productProvider, child) {
                          final favoriteCount = productProvider.favoriteIds.length;
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.favorite_outlined,
                                    size: 18, // Giảm size icon
                                  ),
                                  if (favoriteCount > 0)
                                    Positioned(
                                      right: -4,
                                      top: -4,
                                      child: Container(
                                        padding: const EdgeInsets.all(3), // Giảm padding
                                        decoration: BoxDecoration(
                                          color: Colors.red[600],
                                          shape: BoxShape.circle,
                                        ),
                                        constraints: const BoxConstraints(
                                          minWidth: 16, // Giảm size
                                          minHeight: 16,
                                        ),
                                        child: Text(
                                          '$favoriteCount',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 9, // Giảm font size
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox(width: 6), // Giảm spacing
                              const Text(
                                'Yêu thích',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13, // Giảm font size
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Tab(
                      height: 45, // Giảm từ 50 xuống 45
                      child: Consumer<CartProvider>(
                        builder: (context, cartProvider, child) {
                          final cartCount = cartProvider.totalQuantity;
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 18, // Giảm size icon
                                  ),
                                  if (cartCount > 0)
                                    Positioned(
                                      right: -4,
                                      top: -4,
                                      child: Container(
                                        padding: const EdgeInsets.all(3), // Giảm padding
                                        decoration: BoxDecoration(
                                          color: Colors.green[600],
                                          shape: BoxShape.circle,
                                        ),
                                        constraints: const BoxConstraints(
                                          minWidth: 16, // Giảm size
                                          minHeight: 16,
                                        ),
                                        child: Text(
                                          '$cartCount',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 9, // Giảm font size
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox(width: 6), // Giảm spacing
                              const Text(
                                'Giỏ hàng',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13, // Giảm font size
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ProductListContent(),
          FavoritesScreen(),
          CartScreen(),
        ],
      ),
    );
  }
}

// Tách phần content của ProductListScreen thành widget riêng
class ProductListContent extends StatefulWidget {
  const ProductListContent({super.key});

  @override
  State<ProductListContent> createState() => _ProductListContentState();
}

class _ProductListContentState extends State<ProductListContent> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels == 
        _scrollController.position.maxScrollExtent) {
      context.read<ProductProvider>().loadMoreProducts();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey[50]!,
            Colors.white,
          ],
        ),
      ),
      child: Consumer<ProductProvider>(
        builder: (context, productProvider, child) {
          // Handle different loading states
          if (productProvider.loadingState == LoadingState.loading &&
              productProvider.products.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(strokeWidth: 3),
                  SizedBox(height: 16),
                  Text(
                    'Đang tải sản phẩm...',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            );
          }

          if (productProvider.loadingState == LoadingState.error &&
              productProvider.products.isEmpty) {
            return _buildErrorWidget(productProvider);
          }

          if (productProvider.products.isEmpty) {
            return _buildEmptyWidget();
          }

          return RefreshIndicator(
            onRefresh: () async {
              await productProvider.loadProducts();
            },
            color: Theme.of(context).primaryColor,
            child: GridView.builder(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 0.75,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: productProvider.products.length + 1,
              itemBuilder: (context, index) {
                if (index == productProvider.products.length) {
                  return _buildBottomLoader(productProvider);
                }

                final product = productProvider.products[index];
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300 + (index % 3) * 100),
                  curve: Curves.easeOutBack,
                  child: ProductCard(
                    product: product,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetailScreen(product: product),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildErrorWidget(ProductProvider productProvider) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.red[50],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.wifi_off_rounded,
                size: 48,
                color: Colors.red[400],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Oops! Có lỗi xảy ra',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Kiểm tra kết nối mạng và thử lại',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                productProvider.clearError();
                productProvider.loadProducts();
              },
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Thử lại'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyWidget() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.search_off_rounded,
                size: 48,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Không tìm thấy sản phẩm',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Thử sử dụng từ khóa khác để tìm kiếm',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomLoader(ProductProvider productProvider) {
    if (productProvider.hasReachedMax) {
      return Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 16,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 8),
                Text(
                  'Đã tải hết sản phẩm',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    if (productProvider.loadingState == LoadingState.loadingMore) {
      return Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Đang tải thêm...',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (productProvider.loadingState == LoadingState.error) {
      return Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Không thể tải thêm sản phẩm',
                  style: TextStyle(
                    color: Colors.red[700],
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                TextButton.icon(
                  onPressed: () {
                    productProvider.clearError();
                    productProvider.loadMoreProducts();
                  },
                  icon: Icon(
                    Icons.refresh_rounded,
                    size: 16,
                    color: Colors.red[700],
                  ),
                  label: Text(
                    'Thử lại',
                    style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
