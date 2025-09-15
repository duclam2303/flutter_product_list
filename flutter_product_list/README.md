# Flutter Product List App

Ứng dụng Flutter hiển thị danh sách sản phẩm với tính năng cuộn vô hạn và tìm kiếm, sử dụng API từ DummyJSON.

## Tính năng chính

✅ **Cuộn vô hạn**: Tự động tải thêm 20 sản phẩm khi người dùng cuộn đến cuối danh sách  
✅ **Tìm kiếm**: Tìm kiếm sản phẩm theo tên với debouncing (500ms)  
✅ **Yêu thích**: Lưu sản phẩm yêu thích vào SQLite database  
✅ **UI/UX thân thiện**: Hiển thị trạng thái loading, error, empty state  
✅ **Hiệu suất cao**: Sử dụng cached images, lazy loading  

## Công nghệ sử dụng

- **Flutter**: Framework chính
- **Provider**: State management  
- **Freezed**: Code generation cho models
- **SQLite**: Local database cho favorites
- **RxDart**: Debouncing cho search
- **Cached Network Image**: Cache và hiển thị ảnh
- **HTTP**: API calls

## Cấu trúc project

```
lib/
├── main.dart                    # Entry point
├── models/
│   ├── product.dart            # Product model với Freezed
│   ├── product.freezed.dart    # Generated file
│   └── product.g.dart          # Generated file
├── services/
│   ├── api_service.dart        # API calls
│   └── database_service.dart   # SQLite operations
├── providers/
│   └── product_provider.dart   # State management
├── screens/
│   └── product_list_screen.dart # Main screen
└── widgets/
    └── product_card.dart       # Product card widget
```

## Cài đặt và chạy

### 1. Cài đặt dependencies

```bash
flutter pub get
```

### 2. Generate code (Freezed models)

```bash
dart run build_runner build
```

### 3. Chạy ứng dụng

```bash
flutter run
```

## API Reference

Ứng dụng sử dụng [DummyJSON Products API](https://dummyjson.com/docs/products):

- **Lấy danh sách**: `GET /products?limit=20&skip=0`
- **Tìm kiếm**: `GET /products/search?q=query&limit=20&skip=0`

## Tính năng đặc biệt

### 🔄 Infinite Scrolling
- Tự động phát hiện khi người dùng cuộn đến cuối
- Tải thêm 20 sản phẩm một lần
- Hiển thị loading indicator khi đang tải

### 🔍 Smart Search
- Debouncing 500ms để tránh gọi API quá nhiều
- Tìm kiếm real-time khi người dùng gõ
- Clear search với một nút

### ❤️ Favorites System
- Lưu trữ trong SQLite database
- Toggle favorite với animation
- Persistent storage across app sessions

### 🎨 UI/UX
- **Loading states**: Skeleton loading, progress indicators
- **Error handling**: Network errors, API failures
- **Empty states**: No products found, end of list
- **Pull to refresh**: Refresh toàn bộ danh sách
- **Responsive design**: Hoạt động tốt trên mọi kích thước màn hình

## Xử lý lỗi

Ứng dụng xử lý các trường hợp sau:

- ❌ **Không có kết nối internet**: Hiển thị error message với nút "Try Again"
- ❌ **API lỗi**: Retry mechanism cho loading more
- ❌ **Không tìm thấy sản phẩm**: Empty state với hướng dẫn
- ❌ **Database lỗi**: Graceful fallback cho favorites

## Performance Optimizations

- **Image caching**: Sử dụng CachedNetworkImage
- **Lazy loading**: ListView.builder
- **Debounced search**: Giảm API calls
- **State management**: Efficient Provider usage
- **Memory management**: Proper dispose of controllers

## Dependencies

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

## Testing

```bash
# Run unit tests
flutter test

# Run widget tests
flutter test test/widget_test.dart
```

## Build

```bash
# Build for Android
flutter build apk

# Build for iOS
flutter build ios

# Build for Web
flutter build web
```

---

**Tác giả**: GitHub Copilot  
**Ngày tạo**: 15/09/2025  
**Flutter Version**: 3.9.0+
