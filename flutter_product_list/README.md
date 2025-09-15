# Flutter Product List App

Ứng dụng Flutter hiển thị danh sách sản phẩm với cuộn vô hạn, tìm kiếm thông minh, yêu thích, giỏ hàng và giao diện hiện đại. Sử dụng API từ DummyJSON.

## 🚀 Tính năng nổi bật

- **Cuộn vô hạn**: Tải thêm sản phẩm khi cuộn đến cuối danh sách.
- **Tìm kiếm real-time**: Debounce 500ms, tìm kiếm theo tên sản phẩm.
- **Yêu thích**: Lưu sản phẩm vào SQLite, badge đếm số lượng.
- **Giỏ hàng**: Thêm/xóa sản phẩm, xác nhận thanh toán với giao diện đẹp.
- **Chi tiết sản phẩm**: Xem thông tin, hình ảnh, thêm vào giỏ hàng.
- **Tab Navigation**: Chuyển đổi giữa sản phẩm, yêu thích, giỏ hàng.
- **UI/UX hiện đại**: Skeleton loading, error/empty state, responsive, Material Design 3.

## 🛠 Công nghệ sử dụng

- **Flutter 3.x**
- **Provider**: State management
- **Freezed**: Code generation cho models
- **SQLite**: Lưu trữ yêu thích
- **RxDart**: Debounce tìm kiếm
- **CachedNetworkImage**: Cache ảnh sản phẩm
- **HTTP**: Kết nối API

## 📁 Cấu trúc dự án

```
lib/
├── main.dart
├── models/
│   └── product.dart
├── services/
│   ├── api_service.dart
│   └── database_service.dart
├── providers/
│   └── product_provider.dart
├── screens/
│   ├── main_screen.dart
│   ├── product_list_screen.dart
│   ├── favorites_screen.dart
│   ├── cart_screen.dart
│   └── product_detail_screen.dart
└── widgets/
    ├── product_card.dart
    ├── loading_widgets.dart
    └── custom_dialogs.dart
```

## ⚡ Hướng dẫn cài đặt & chạy

1. **Cài đặt dependencies**
   ```bash
   flutter pub get
   ```

2. **Generate code cho Freezed models**
   ```bash
   dart run build_runner build
   ```

3. **Chạy ứng dụng**
   ```bash
   flutter run
   ```

## 🔗 API sử dụng

- Lấy danh sách: `GET /products?limit=20&skip=0`
- Tìm kiếm: `GET /products/search?q=query&limit=20&skip=0`
- Tham khảo: [DummyJSON Products API](https://dummyjson.com/docs/products)

## 💡 Chi tiết tính năng

### Infinite Scrolling
- Tự động tải thêm khi cuộn đến cuối
- Loading indicator khi đang tải
- Retry khi lỗi mạng

### Smart Search
- Debounce 500ms
- Tìm kiếm real-time
- Nút clear search

### Favorites System
- Lưu vào SQLite
- Animation khi toggle
- Badge hiển thị số lượng

### Cart & Checkout
- Thêm/xóa sản phẩm vào giỏ
- Dialog xác nhận thanh toán hiện đại
- Snackbar thông báo thành công

### UI/UX
- Skeleton loading, progress indicator
- Error/empty state rõ ràng
- Pull to refresh
- Responsive cho mọi thiết bị

## 🧩 Xử lý lỗi

- **Mất kết nối**: Hiển thị thông báo, nút "Thử lại"
- **API lỗi**: Cơ chế retry khi tải thêm
- **Không tìm thấy sản phẩm**: Empty state, hướng dẫn
- **Database lỗi**: Fallback cho favorites

## 🚀 Tối ưu hiệu năng

- CachedNetworkImage cho ảnh
- ListView.builder lazy loading
- Debounced search giảm API calls
- Provider quản lý state hiệu quả
- Dispose controller đúng cách

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  http: ^1.1.0
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1
  sqflite: ^2.3.0
  path: ^1.8.3
  provider: ^6.1.1
  rxdart: ^0.27.7
  cached_network_image: ^3.3.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
  build_runner: ^2.4.7
  freezed: ^2.4.6
  json_serializable: ^6.7.1
```

## 🧪 Testing

```bash
flutter test
flutter test test/widget_test.dart
```

## 📦 Build

```bash
flutter build apk      # Android
flutter build ios      # iOS
flutter build web      # Web
```

---
