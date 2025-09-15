// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  ProductDimensions get dimensions => throw _privateConstructorUsedError;
  String get warrantyInformation => throw _privateConstructorUsedError;
  String get shippingInformation => throw _privateConstructorUsedError;
  String get availabilityStatus => throw _privateConstructorUsedError;
  List<ProductReview> get reviews => throw _privateConstructorUsedError;
  String get returnPolicy => throw _privateConstructorUsedError;
  int get minimumOrderQuantity => throw _privateConstructorUsedError;
  ProductMeta get meta => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String category,
    double price,
    double discountPercentage,
    double rating,
    int stock,
    List<String> tags,
    String? brand,
    String? sku,
    double weight,
    ProductDimensions dimensions,
    String warrantyInformation,
    String shippingInformation,
    String availabilityStatus,
    List<ProductReview> reviews,
    String returnPolicy,
    int minimumOrderQuantity,
    ProductMeta meta,
    List<String> images,
    String thumbnail,
  });

  $ProductDimensionsCopyWith<$Res> get dimensions;
  $ProductMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = null,
    Object? dimensions = null,
    Object? warrantyInformation = null,
    Object? shippingInformation = null,
    Object? availabilityStatus = null,
    Object? reviews = null,
    Object? returnPolicy = null,
    Object? minimumOrderQuantity = null,
    Object? meta = null,
    Object? images = null,
    Object? thumbnail = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            discountPercentage: null == discountPercentage
                ? _value.discountPercentage
                : discountPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            stock: null == stock
                ? _value.stock
                : stock // ignore: cast_nullable_to_non_nullable
                      as int,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            brand: freezed == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                      as String?,
            sku: freezed == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                      as String?,
            weight: null == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as double,
            dimensions: null == dimensions
                ? _value.dimensions
                : dimensions // ignore: cast_nullable_to_non_nullable
                      as ProductDimensions,
            warrantyInformation: null == warrantyInformation
                ? _value.warrantyInformation
                : warrantyInformation // ignore: cast_nullable_to_non_nullable
                      as String,
            shippingInformation: null == shippingInformation
                ? _value.shippingInformation
                : shippingInformation // ignore: cast_nullable_to_non_nullable
                      as String,
            availabilityStatus: null == availabilityStatus
                ? _value.availabilityStatus
                : availabilityStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            reviews: null == reviews
                ? _value.reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                      as List<ProductReview>,
            returnPolicy: null == returnPolicy
                ? _value.returnPolicy
                : returnPolicy // ignore: cast_nullable_to_non_nullable
                      as String,
            minimumOrderQuantity: null == minimumOrderQuantity
                ? _value.minimumOrderQuantity
                : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
            meta: null == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as ProductMeta,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            thumbnail: null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDimensionsCopyWith<$Res> get dimensions {
    return $ProductDimensionsCopyWith<$Res>(_value.dimensions, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductMetaCopyWith<$Res> get meta {
    return $ProductMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
    _$ProductImpl value,
    $Res Function(_$ProductImpl) then,
  ) = __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String category,
    double price,
    double discountPercentage,
    double rating,
    int stock,
    List<String> tags,
    String? brand,
    String? sku,
    double weight,
    ProductDimensions dimensions,
    String warrantyInformation,
    String shippingInformation,
    String availabilityStatus,
    List<ProductReview> reviews,
    String returnPolicy,
    int minimumOrderQuantity,
    ProductMeta meta,
    List<String> images,
    String thumbnail,
  });

  @override
  $ProductDimensionsCopyWith<$Res> get dimensions;
  @override
  $ProductMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
    _$ProductImpl _value,
    $Res Function(_$ProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = null,
    Object? dimensions = null,
    Object? warrantyInformation = null,
    Object? shippingInformation = null,
    Object? availabilityStatus = null,
    Object? reviews = null,
    Object? returnPolicy = null,
    Object? minimumOrderQuantity = null,
    Object? meta = null,
    Object? images = null,
    Object? thumbnail = null,
  }) {
    return _then(
      _$ProductImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        discountPercentage: null == discountPercentage
            ? _value.discountPercentage
            : discountPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        stock: null == stock
            ? _value.stock
            : stock // ignore: cast_nullable_to_non_nullable
                  as int,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        brand: freezed == brand
            ? _value.brand
            : brand // ignore: cast_nullable_to_non_nullable
                  as String?,
        sku: freezed == sku
            ? _value.sku
            : sku // ignore: cast_nullable_to_non_nullable
                  as String?,
        weight: null == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as double,
        dimensions: null == dimensions
            ? _value.dimensions
            : dimensions // ignore: cast_nullable_to_non_nullable
                  as ProductDimensions,
        warrantyInformation: null == warrantyInformation
            ? _value.warrantyInformation
            : warrantyInformation // ignore: cast_nullable_to_non_nullable
                  as String,
        shippingInformation: null == shippingInformation
            ? _value.shippingInformation
            : shippingInformation // ignore: cast_nullable_to_non_nullable
                  as String,
        availabilityStatus: null == availabilityStatus
            ? _value.availabilityStatus
            : availabilityStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        reviews: null == reviews
            ? _value._reviews
            : reviews // ignore: cast_nullable_to_non_nullable
                  as List<ProductReview>,
        returnPolicy: null == returnPolicy
            ? _value.returnPolicy
            : returnPolicy // ignore: cast_nullable_to_non_nullable
                  as String,
        minimumOrderQuantity: null == minimumOrderQuantity
            ? _value.minimumOrderQuantity
            : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
        meta: null == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as ProductMeta,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        thumbnail: null == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required final List<String> tags,
    this.brand,
    this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required final List<ProductReview> reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required final List<String> images,
    required this.thumbnail,
  }) : _tags = tags,
       _reviews = reviews,
       _images = images;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String category;
  @override
  final double price;
  @override
  final double discountPercentage;
  @override
  final double rating;
  @override
  final int stock;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? brand;
  @override
  final String? sku;
  @override
  final double weight;
  @override
  final ProductDimensions dimensions;
  @override
  final String warrantyInformation;
  @override
  final String shippingInformation;
  @override
  final String availabilityStatus;
  final List<ProductReview> _reviews;
  @override
  List<ProductReview> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final String returnPolicy;
  @override
  final int minimumOrderQuantity;
  @override
  final ProductMeta meta;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String thumbnail;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.warrantyInformation, warrantyInformation) ||
                other.warrantyInformation == warrantyInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.returnPolicy, returnPolicy) ||
                other.returnPolicy == returnPolicy) &&
            (identical(other.minimumOrderQuantity, minimumOrderQuantity) ||
                other.minimumOrderQuantity == minimumOrderQuantity) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    title,
    description,
    category,
    price,
    discountPercentage,
    rating,
    stock,
    const DeepCollectionEquality().hash(_tags),
    brand,
    sku,
    weight,
    dimensions,
    warrantyInformation,
    shippingInformation,
    availabilityStatus,
    const DeepCollectionEquality().hash(_reviews),
    returnPolicy,
    minimumOrderQuantity,
    meta,
    const DeepCollectionEquality().hash(_images),
    thumbnail,
  ]);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product({
    required final int id,
    required final String title,
    required final String description,
    required final String category,
    required final double price,
    required final double discountPercentage,
    required final double rating,
    required final int stock,
    required final List<String> tags,
    final String? brand,
    final String? sku,
    required final double weight,
    required final ProductDimensions dimensions,
    required final String warrantyInformation,
    required final String shippingInformation,
    required final String availabilityStatus,
    required final List<ProductReview> reviews,
    required final String returnPolicy,
    required final int minimumOrderQuantity,
    required final ProductMeta meta,
    required final List<String> images,
    required final String thumbnail,
  }) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get category;
  @override
  double get price;
  @override
  double get discountPercentage;
  @override
  double get rating;
  @override
  int get stock;
  @override
  List<String> get tags;
  @override
  String? get brand;
  @override
  String? get sku;
  @override
  double get weight;
  @override
  ProductDimensions get dimensions;
  @override
  String get warrantyInformation;
  @override
  String get shippingInformation;
  @override
  String get availabilityStatus;
  @override
  List<ProductReview> get reviews;
  @override
  String get returnPolicy;
  @override
  int get minimumOrderQuantity;
  @override
  ProductMeta get meta;
  @override
  List<String> get images;
  @override
  String get thumbnail;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDimensions _$ProductDimensionsFromJson(Map<String, dynamic> json) {
  return _ProductDimensions.fromJson(json);
}

/// @nodoc
mixin _$ProductDimensions {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get depth => throw _privateConstructorUsedError;

  /// Serializes this ProductDimensions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDimensionsCopyWith<ProductDimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDimensionsCopyWith<$Res> {
  factory $ProductDimensionsCopyWith(
    ProductDimensions value,
    $Res Function(ProductDimensions) then,
  ) = _$ProductDimensionsCopyWithImpl<$Res, ProductDimensions>;
  @useResult
  $Res call({double width, double height, double depth});
}

/// @nodoc
class _$ProductDimensionsCopyWithImpl<$Res, $Val extends ProductDimensions>
    implements $ProductDimensionsCopyWith<$Res> {
  _$ProductDimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(
      _value.copyWith(
            width: null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as double,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as double,
            depth: null == depth
                ? _value.depth
                : depth // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductDimensionsImplCopyWith<$Res>
    implements $ProductDimensionsCopyWith<$Res> {
  factory _$$ProductDimensionsImplCopyWith(
    _$ProductDimensionsImpl value,
    $Res Function(_$ProductDimensionsImpl) then,
  ) = __$$ProductDimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height, double depth});
}

/// @nodoc
class __$$ProductDimensionsImplCopyWithImpl<$Res>
    extends _$ProductDimensionsCopyWithImpl<$Res, _$ProductDimensionsImpl>
    implements _$$ProductDimensionsImplCopyWith<$Res> {
  __$$ProductDimensionsImplCopyWithImpl(
    _$ProductDimensionsImpl _value,
    $Res Function(_$ProductDimensionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(
      _$ProductDimensionsImpl(
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as double,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as double,
        depth: null == depth
            ? _value.depth
            : depth // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDimensionsImpl implements _ProductDimensions {
  const _$ProductDimensionsImpl({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory _$ProductDimensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDimensionsImplFromJson(json);

  @override
  final double width;
  @override
  final double height;
  @override
  final double depth;

  @override
  String toString() {
    return 'ProductDimensions(width: $width, height: $height, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDimensionsImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, depth);

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDimensionsImplCopyWith<_$ProductDimensionsImpl> get copyWith =>
      __$$ProductDimensionsImplCopyWithImpl<_$ProductDimensionsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDimensionsImplToJson(this);
  }
}

abstract class _ProductDimensions implements ProductDimensions {
  const factory _ProductDimensions({
    required final double width,
    required final double height,
    required final double depth,
  }) = _$ProductDimensionsImpl;

  factory _ProductDimensions.fromJson(Map<String, dynamic> json) =
      _$ProductDimensionsImpl.fromJson;

  @override
  double get width;
  @override
  double get height;
  @override
  double get depth;

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDimensionsImplCopyWith<_$ProductDimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductReview _$ProductReviewFromJson(Map<String, dynamic> json) {
  return _ProductReview.fromJson(json);
}

/// @nodoc
mixin _$ProductReview {
  int get rating => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get reviewerName => throw _privateConstructorUsedError;
  String get reviewerEmail => throw _privateConstructorUsedError;

  /// Serializes this ProductReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductReviewCopyWith<ProductReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReviewCopyWith<$Res> {
  factory $ProductReviewCopyWith(
    ProductReview value,
    $Res Function(ProductReview) then,
  ) = _$ProductReviewCopyWithImpl<$Res, ProductReview>;
  @useResult
  $Res call({
    int rating,
    String comment,
    DateTime date,
    String reviewerName,
    String reviewerEmail,
  });
}

/// @nodoc
class _$ProductReviewCopyWithImpl<$Res, $Val extends ProductReview>
    implements $ProductReviewCopyWith<$Res> {
  _$ProductReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
    Object? date = null,
    Object? reviewerName = null,
    Object? reviewerEmail = null,
  }) {
    return _then(
      _value.copyWith(
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as int,
            comment: null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            reviewerName: null == reviewerName
                ? _value.reviewerName
                : reviewerName // ignore: cast_nullable_to_non_nullable
                      as String,
            reviewerEmail: null == reviewerEmail
                ? _value.reviewerEmail
                : reviewerEmail // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductReviewImplCopyWith<$Res>
    implements $ProductReviewCopyWith<$Res> {
  factory _$$ProductReviewImplCopyWith(
    _$ProductReviewImpl value,
    $Res Function(_$ProductReviewImpl) then,
  ) = __$$ProductReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int rating,
    String comment,
    DateTime date,
    String reviewerName,
    String reviewerEmail,
  });
}

/// @nodoc
class __$$ProductReviewImplCopyWithImpl<$Res>
    extends _$ProductReviewCopyWithImpl<$Res, _$ProductReviewImpl>
    implements _$$ProductReviewImplCopyWith<$Res> {
  __$$ProductReviewImplCopyWithImpl(
    _$ProductReviewImpl _value,
    $Res Function(_$ProductReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
    Object? date = null,
    Object? reviewerName = null,
    Object? reviewerEmail = null,
  }) {
    return _then(
      _$ProductReviewImpl(
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        reviewerName: null == reviewerName
            ? _value.reviewerName
            : reviewerName // ignore: cast_nullable_to_non_nullable
                  as String,
        reviewerEmail: null == reviewerEmail
            ? _value.reviewerEmail
            : reviewerEmail // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductReviewImpl implements _ProductReview {
  const _$ProductReviewImpl({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory _$ProductReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductReviewImplFromJson(json);

  @override
  final int rating;
  @override
  final String comment;
  @override
  final DateTime date;
  @override
  final String reviewerName;
  @override
  final String reviewerEmail;

  @override
  String toString() {
    return 'ProductReview(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductReviewImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName) &&
            (identical(other.reviewerEmail, reviewerEmail) ||
                other.reviewerEmail == reviewerEmail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    rating,
    comment,
    date,
    reviewerName,
    reviewerEmail,
  );

  /// Create a copy of ProductReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductReviewImplCopyWith<_$ProductReviewImpl> get copyWith =>
      __$$ProductReviewImplCopyWithImpl<_$ProductReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductReviewImplToJson(this);
  }
}

abstract class _ProductReview implements ProductReview {
  const factory _ProductReview({
    required final int rating,
    required final String comment,
    required final DateTime date,
    required final String reviewerName,
    required final String reviewerEmail,
  }) = _$ProductReviewImpl;

  factory _ProductReview.fromJson(Map<String, dynamic> json) =
      _$ProductReviewImpl.fromJson;

  @override
  int get rating;
  @override
  String get comment;
  @override
  DateTime get date;
  @override
  String get reviewerName;
  @override
  String get reviewerEmail;

  /// Create a copy of ProductReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductReviewImplCopyWith<_$ProductReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductMeta _$ProductMetaFromJson(Map<String, dynamic> json) {
  return _ProductMeta.fromJson(json);
}

/// @nodoc
mixin _$ProductMeta {
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;

  /// Serializes this ProductMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductMetaCopyWith<ProductMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMetaCopyWith<$Res> {
  factory $ProductMetaCopyWith(
    ProductMeta value,
    $Res Function(ProductMeta) then,
  ) = _$ProductMetaCopyWithImpl<$Res, ProductMeta>;
  @useResult
  $Res call({
    DateTime createdAt,
    DateTime updatedAt,
    String barcode,
    String qrCode,
  });
}

/// @nodoc
class _$ProductMetaCopyWithImpl<$Res, $Val extends ProductMeta>
    implements $ProductMetaCopyWith<$Res> {
  _$ProductMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? barcode = null,
    Object? qrCode = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            barcode: null == barcode
                ? _value.barcode
                : barcode // ignore: cast_nullable_to_non_nullable
                      as String,
            qrCode: null == qrCode
                ? _value.qrCode
                : qrCode // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductMetaImplCopyWith<$Res>
    implements $ProductMetaCopyWith<$Res> {
  factory _$$ProductMetaImplCopyWith(
    _$ProductMetaImpl value,
    $Res Function(_$ProductMetaImpl) then,
  ) = __$$ProductMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime createdAt,
    DateTime updatedAt,
    String barcode,
    String qrCode,
  });
}

/// @nodoc
class __$$ProductMetaImplCopyWithImpl<$Res>
    extends _$ProductMetaCopyWithImpl<$Res, _$ProductMetaImpl>
    implements _$$ProductMetaImplCopyWith<$Res> {
  __$$ProductMetaImplCopyWithImpl(
    _$ProductMetaImpl _value,
    $Res Function(_$ProductMetaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? barcode = null,
    Object? qrCode = null,
  }) {
    return _then(
      _$ProductMetaImpl(
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        barcode: null == barcode
            ? _value.barcode
            : barcode // ignore: cast_nullable_to_non_nullable
                  as String,
        qrCode: null == qrCode
            ? _value.qrCode
            : qrCode // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductMetaImpl implements _ProductMeta {
  const _$ProductMetaImpl({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  factory _$ProductMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductMetaImplFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String barcode;
  @override
  final String qrCode;

  @override
  String toString() {
    return 'ProductMeta(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductMetaImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, barcode, qrCode);

  /// Create a copy of ProductMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductMetaImplCopyWith<_$ProductMetaImpl> get copyWith =>
      __$$ProductMetaImplCopyWithImpl<_$ProductMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductMetaImplToJson(this);
  }
}

abstract class _ProductMeta implements ProductMeta {
  const factory _ProductMeta({
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required final String barcode,
    required final String qrCode,
  }) = _$ProductMetaImpl;

  factory _ProductMeta.fromJson(Map<String, dynamic> json) =
      _$ProductMetaImpl.fromJson;

  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get barcode;
  @override
  String get qrCode;

  /// Create a copy of ProductMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductMetaImplCopyWith<_$ProductMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  List<Product> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
    ProductResponse value,
    $Res Function(ProductResponse) then,
  ) = _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call({List<Product> products, int total, int skip, int limit});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<Product>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            skip: null == skip
                ? _value.skip
                : skip // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(
    _$ProductResponseImpl value,
    $Res Function(_$ProductResponseImpl) then,
  ) = __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products, int total, int skip, int limit});
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
    _$ProductResponseImpl _value,
    $Res Function(_$ProductResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(
      _$ProductResponseImpl(
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<Product>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        skip: null == skip
            ? _value.skip
            : skip // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl implements _ProductResponse {
  const _$ProductResponseImpl({
    required final List<Product> products,
    required this.total,
    required this.skip,
    required this.limit,
  }) : _products = products;

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;

  @override
  String toString() {
    return 'ProductResponse(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_products),
    total,
    skip,
    limit,
  );

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(this);
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse({
    required final List<Product> products,
    required final int total,
    required final int skip,
    required final int limit,
  }) = _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  List<Product> get products;
  @override
  int get total;
  @override
  int get skip;
  @override
  int get limit;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
