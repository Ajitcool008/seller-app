import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'video_shop.g.dart';

@JsonSerializable(explicitToJson: true)
class AWVideoShop {
  final String id;

  final AWVideoShopFields fields;

  final AWVideoShopStyle styles;

  const AWVideoShop({
    required this.id,
    required this.fields,
    required this.styles,
  });

  /// Connect the generated [_$AWVideoShopFromJson] function to the `fromJson`
  /// factory.
  factory AWVideoShop.fromJson(Map<String, dynamic> json) => _$AWVideoShopFromJson(json);

  /// Connect the generated [_$AWVideoShopToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVideoShopToJson(this);
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWVideoShopFields {
  final int? limit;

  final List<AbdOption>? excludeProduct;

  final List<AbdOption>? categories;

  final List<AbdOption>? tags;

  final dynamic search;

  final bool? enableLike;

  final bool? enableShare;

  final bool? enableAddCart;

  final bool? enableView;

  const AWVideoShopFields({
    this.limit,
    this.excludeProduct,
    this.categories,
    this.tags,
    this.search,
    this.enableLike,
    this.enableShare,
    this.enableView,
    this.enableAddCart,
  });

  /// Connect the generated [_$AWVideoShopFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWVideoShopFields.fromJson(Map<String, dynamic> json) => _$AWVideoShopFieldsFromJson(json);

  /// Connect the generated [_$AWVideoShopFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVideoShopFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWVideoShopStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  final String? actionsAlignment;

  const AWVideoShopStyle({
    required this.padding,
    required this.margin,
    required this.background,
    this.actionsAlignment,
  });

  /// Connect the generated [_$AWVideoShopStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWVideoShopStyle.fromJson(Map<String, dynamic> json) => _$AWVideoShopStyleFromJson(json);

  /// Connect the generated [_$AWVideoShopStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVideoShopStyleToJson(this);
}
