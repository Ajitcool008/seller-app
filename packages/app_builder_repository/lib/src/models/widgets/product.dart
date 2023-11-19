import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'product.g.dart';

enum AWProductLayout {
  @JsonValue('list')
  list,
  @JsonValue('carousel')
  carousel,
  @JsonValue('masonry')
  masonry,
  @JsonValue('big-first')
  bigFirst,
  @JsonValue('slideshow')
  slideshow,
  @JsonValue('horizontal')
  horizontal,
  @JsonValue('vertical')
  vertical,
  @JsonValue('grid')
  grid;
}

@JsonSerializable(explicitToJson: true)
class AWProduct {
  final String id;

  final String type;

  final AWProductFields fields;

  final AWProductStyle styles;

  @JsonKey(includeIfNull: false)
  final AWProductLayout? layout;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWProduct({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWProductFromJson] function to the `fromJson`
  /// factory.
  factory AWProduct.fromJson(Map<String, dynamic> json) => _$AWProductFromJson(json);

  /// Connect the generated [_$AWProductToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWProductFields {
  @JsonKey(fromJson: ConvertData.stringToIntCanBeNull, includeIfNull: false)
  final int? limit;

  @JsonKey(includeIfNull: false)
  final List<dynamic>? categories;

  @JsonKey(includeIfNull: false)
  final List<dynamic>? excludeProduct;

  @JsonKey(includeIfNull: false)
  final List<dynamic>? product;

  @JsonKey(includeIfNull: false)
  final AbdProductTemplate? template;

  @JsonKey(includeIfNull: false)
  final bool? enableLoadMore;

  @JsonKey(includeIfNull: false)
  final AbdText? search;

  @JsonKey(includeIfNull: false)
  final List<dynamic>? tags;

  @JsonKey(includeIfNull: false)
  final List<dynamic>? includeProduct;

  @JsonKey(includeIfNull: false)
  final AWProductLayout? layoutItem;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? height;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? pad;

  @JsonKey(includeIfNull: false)
  final List<AWProductFieldsItem>? items;

  @JsonKey(includeIfNull: false)
  final AbdText? name;

  @JsonKey(includeIfNull: false)
  final bool? enableIcon;

  @JsonKey(includeIfNull: false)
  final bool? enableIconLeft;

  @JsonKey(includeIfNull: false)
  final bool? enableScan;

  @JsonKey(includeIfNull: false)
  final bool? enableScanLeft;

  @JsonKey(includeIfNull: false)
  final AbdText? placeholder;

  @JsonKey(includeIfNull: false)
  final bool? enableLike;

  @JsonKey(includeIfNull: false)
  final bool? enableShare;

  @JsonKey(includeIfNull: false)
  final bool? enableAddCart;

  @JsonKey(includeIfNull: false)
  final bool? enableView;

  @JsonKey(includeIfNull: false)
  final bool? enableWishlist;

  @JsonKey(includeIfNull: false)
  final bool? enableComment;

  @JsonKey(includeIfNull: false)
  final bool? enableRating;

  @JsonKey(includeIfNull: false)
  final bool? enableSale;

  @JsonKey(includeIfNull: false)
  final bool? enableNew;

  @JsonKey(includeIfNull: false)
  final bool? enableQuantity;

  @JsonKey(includeIfNull: false)
  final Map? icon;

  const AWProductFields({
    this.limit,
    this.categories,
    this.excludeProduct,
    this.product,
    required this.template,
    this.enableLoadMore,
    this.height,
    this.tags,
    this.search,
    this.includeProduct,
    this.layoutItem,
    this.pad,
    this.items,
    this.name,
    this.enableIcon,
    this.enableIconLeft,
    this.enableScan,
    this.enableScanLeft,
    this.placeholder,
    this.icon,
    this.enableAddCart,
    this.enableView,
    this.enableLike,
    this.enableShare,
    this.enableWishlist,
    this.enableComment,
    this.enableRating,
    this.enableSale,
    this.enableNew,
    this.enableQuantity,
  });

  /// Connect the generated [_$AWProductFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWProductFields.fromJson(Map<String, dynamic> json) => _$AWProductFieldsFromJson(json);

  /// Connect the generated [_$AWProductFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWProductStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? height;

  @JsonKey(fromJson: ConvertData.stringToIntCanBeNull, includeIfNull: false)
  final int? col;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? ratio;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? pad;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? dividerWidth;

  @JsonKey(includeIfNull: false)
  final AbdColor? dividerColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? indicatorColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? indicatorActiveColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? backgroundColorItem;

  @JsonKey(includeIfNull: false)
  final AbdColor? textColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? subTextColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? priceColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? salePriceColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? regularPriceColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? wishlistColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? labelNewColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? labelNewTextColor;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? radiusLabelNew;

  @JsonKey(includeIfNull: false)
  final AbdColor? labelSaleColor;

  @JsonKey(includeIfNull: false)
  final AbdColor? labelSaleTextColor;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? radiusLabelSale;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? radius;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? radiusImage;

  @JsonKey(includeIfNull: false)
  final String? typeCart;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? radiusCart;

  @JsonKey(includeIfNull: false)
  final Map? iconCart;

  @JsonKey(includeIfNull: false)
  final bool? enableIconCart;

  @JsonKey(includeIfNull: false)
  final AbdSpacing? paddingItem;

  @JsonKey(includeIfNull: false)
  final AbdColor? shadowColor;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? offsetX;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? offsetY;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? blurRadius;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? spreadRadius;

  @JsonKey(includeIfNull: false)
  final AbdColor? backgroundColorInput;

  @JsonKey(includeIfNull: false)
  final AbdColor? borderColorInput;

  @JsonKey(includeIfNull: false)
  final AbdColor? iconColorInput;

  @JsonKey(includeIfNull: false)
  final AbdAlignment? actionsAlignment;

  const AWProductStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.pad,
    required this.textColor,
    this.height,
    this.offsetX,
    this.offsetY,
    this.blurRadius,
    this.spreadRadius,
    this.shadowColor,
    this.subTextColor,
    required this.ratio,
    this.radiusImage,
    this.indicatorColor,
    this.indicatorActiveColor,
    this.radius,
    required this.col,
    this.backgroundColorItem,
    this.dividerColor,
    this.iconCart,
    this.radiusCart,
    this.labelNewColor,
    this.wishlistColor,
    this.regularPriceColor,
    this.salePriceColor,
    this.priceColor,
    this.paddingItem,
    this.enableIconCart,
    this.typeCart,
    this.radiusLabelSale,
    this.labelSaleTextColor,
    this.labelSaleColor,
    this.radiusLabelNew,
    this.labelNewTextColor,
    this.dividerWidth,
    this.backgroundColorInput,
    this.borderColorInput,
    this.iconColorInput,
    this.actionsAlignment,
  });

  /// Connect the generated [_$AWProductStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWProductStyle.fromJson(Map<String, dynamic> json) => _$AWProductStyleFromJson(json);

  /// Connect the generated [_$AWProductStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductStyleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWProductFieldsItem {
  final AWProductFields data;

  @JsonKey(includeIfNull: false)
  final String? template;

  const AWProductFieldsItem({
    required this.data,
    this.template,
  });

  /// Connect the generated [_$AWProductFieldsItemFromJson] function to the `fromJson`
  /// factory.
  factory AWProductFieldsItem.fromJson(Map<String, dynamic> json) => _$AWProductFieldsItemFromJson(json);

  /// Connect the generated [_$AWProductFieldsItemToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductFieldsItemToJson(this);
}
