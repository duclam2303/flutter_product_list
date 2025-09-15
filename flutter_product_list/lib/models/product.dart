import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required List<String> tags,
    String? brand,
    String? sku,
    required double weight,
    required ProductDimensions dimensions,
    required String warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required List<ProductReview> reviews,
    required String returnPolicy,
    required int minimumOrderQuantity,
    required ProductMeta meta,
    required List<String> images,
    required String thumbnail,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class ProductDimensions with _$ProductDimensions {
  const factory ProductDimensions({
    required double width,
    required double height,
    required double depth,
  }) = _ProductDimensions;

  factory ProductDimensions.fromJson(Map<String, dynamic> json) => 
      _$ProductDimensionsFromJson(json);
}

@freezed
class ProductReview with _$ProductReview {
  const factory ProductReview({
    required int rating,
    required String comment,
    required DateTime date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _ProductReview;

  factory ProductReview.fromJson(Map<String, dynamic> json) => 
      _$ProductReviewFromJson(json);
}

@freezed
class ProductMeta with _$ProductMeta {
  const factory ProductMeta({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String barcode,
    required String qrCode,
  }) = _ProductMeta;

  factory ProductMeta.fromJson(Map<String, dynamic> json) => 
      _$ProductMetaFromJson(json);
}

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    required List<Product> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => 
      _$ProductResponseFromJson(json);
}
