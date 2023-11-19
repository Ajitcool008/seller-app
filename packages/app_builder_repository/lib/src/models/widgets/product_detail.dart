import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_detail.g.dart';

@JsonSerializable(createToJson: false)
class ASProductDetail {
  final ASProductDetailFields fields;

  final ASProductDetailStyles styles;

  @JsonKey(defaultValue: 'default')
  final String layout;

  @JsonKey(defaultValue: false)
  final bool disable;

  const ASProductDetail({
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$ASProductDetailFromJson] function to the `fromJson`
  /// factory.
  factory ASProductDetail.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = {};

    Map<String, dynamic> fields = {};
    Map<String, dynamic> styles = {};
    if (json['fields'] is Map) {
      fields = Map.castFrom<dynamic, dynamic, String, dynamic>(json['fields']);
    }

    if (json['styles'] is Map) {
      styles = Map.castFrom<dynamic, dynamic, String, dynamic>(json['styles']);
    }
    newJson.putIfAbsent('fields', () => fields);
    newJson.putIfAbsent('styles', () => styles);
    newJson.putIfAbsent('layout', () => json['layout']);
    newJson.putIfAbsent('disable', () => json['disable']);
    newJson.putIfAbsent('configs', () => json['configs']);
    return _$ASProductDetailFromJson(newJson);
  }

  /// Connect the generated [_$ASProductDetailToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> newJson = {
      "id": "productDetailPage",
      "type": "productDetailPage",
      "fields": fields.toJson(),
      "styles": styles.toJson(),
      "layout": layout,
      "disable": disable,
    };
    return newJson;
  }
}

@JsonSerializable(explicitToJson: true)
class ASProductDetailFields {
  final AbdSpacing? paddingCategory;

  final AbdSpacing? paddingName;

  final AbdSpacing? paddingRelatedProduct;

  final AbdSpacing? paddingQuantity;

  final String? productGalleryFit;

  final List<ASProductDetailRow>? rows;

  final String? productGalleryThumbSizes;

  final bool? disableSwiper;

  final bool? playVideoInSameScreen;

  final bool? autoPlayVideo;

  @JsonKey(defaultValue: 0)
  final int? productGalleryScrollDirection;

  @JsonKey(fromJson: fromJsonSize, toJson: ConvertData.toMapSize)
  final Size productGallerySize;

  const ASProductDetailFields({
    required this.productGallerySize,
    this.paddingCategory,
    this.paddingName,
    this.paddingRelatedProduct,
    this.paddingQuantity,
    this.productGalleryFit,
    this.rows,
    this.productGalleryScrollDirection,
    this.productGalleryThumbSizes,
    this.disableSwiper,
    this.playVideoInSameScreen,
    this.autoPlayVideo,
  });

  /// Connect the generated [_$ASProductDetailFieldsFromJson] function to the `fromJson`
  /// factory.
  factory ASProductDetailFields.fromJson(Map<String, dynamic> json) => _$ASProductDetailFieldsFromJson(json);

  /// Connect the generated [_$ASProductDetailFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASProductDetailFieldsToJson(this);

  static Size fromJsonSize(dynamic value) {
    return ConvertData.toSizeValue(value, const Size(375, 440));
  }
}

@JsonSerializable(explicitToJson: true)
class ASProductDetailRow {
  final String? template;

  @JsonKey(defaultValue: false)
  final bool active;

  final ASRowData? data;

  const ASProductDetailRow({
    required this.active,
    this.template,
    this.data,
  });

  /// Connect the generated [_$ASProductDetailRowFromJson] function to the `fromJson`
  /// factory.
  factory ASProductDetailRow.fromJson(Map<String, dynamic> json) => _$ASProductDetailRowFromJson(json);

  /// Connect the generated [_$ASProductDetailRowToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASProductDetailRowToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ASRowData {
  final String? mainAxisAlignment;

  final String? crossAxisAlignment;

  final List<ASRowDataColumns>? columns;

  @JsonKey(defaultValue: false)
  final bool divider;

  const ASRowData({
    required this.divider,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    this.columns,
  });

  /// Connect the generated [_$ASRowDataFromJson] function to the `fromJson`
  /// factory.
  factory ASRowData.fromJson(Map<String, dynamic> json) => _$ASRowDataFromJson(json);

  /// Connect the generated [_$ASRowDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASRowDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ASRowDataColumns {
  final ASRowDataColumnsValue? value;

  @JsonKey(defaultValue: false)
  final bool active;

  const ASRowDataColumns({
    required this.active,
    this.value,
  });

  /// Connect the generated [_$ASRowDataColumnsFromJson] function to the `fromJson`
  /// factory.
  factory ASRowDataColumns.fromJson(Map<String, dynamic> json) => _$ASRowDataColumnsFromJson(json);

  /// Connect the generated [_$ASRowDataColumnsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASRowDataColumnsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ASRowDataColumnsValue {
  @JsonKey(includeIfNull: false)
  final String? type;

  @JsonKey(fromJson: ConvertData.stringToInt, defaultValue: 1)
  final int flex;

  @JsonKey(defaultValue: "left")
  final String align;

  @JsonKey(fromJson: _fromJsonSpacing, includeIfNull: false)
  final AbdSpacing? padding;

  @JsonKey(fromJson: _fromJsonSpacing, includeIfNull: false)
  final AbdSpacing? margin;

  @JsonKey(fromJson: _fromJsonColor, includeIfNull: false)
  final AbdColor? foreground;

  final ASRowDataCVConditional? conditional;

  @JsonKey(fromJson: _fromJsonBoolFalse)
  final bool expand; // For type = 'SortDescription' or 'Description' or 'Review'

  @JsonKey(name: "layout", defaultValue: "horizontal")
  final String brandLayout; // For type = "Brand"

  @JsonKey(name: "textHtml", fromJson: _fromJsonText, includeIfNull: false)
  final AbdText? htmlText; // For type = "Html"

  // Start for type = "Custom"
  @JsonKey(defaultValue: "text")
  String customType;

  @JsonKey(name: "text", fromJson: _fromJsonText, includeIfNull: false)
  AbdText? customText;

  @JsonKey(name: "buttonBg", fromJson: _fromJsonColor, includeIfNull: false)
  AbdColor? customButtonBackground;

  @JsonKey(name: "buttonBorderColor", fromJson: _fromJsonColor, includeIfNull: false)
  AbdColor? customButtonBorderColor;

  @JsonKey(name: "buttonBorderWidth", fromJson: ConvertData.stringToDouble)
  double customButtonBorderWidth;

  @JsonKey(name: "buttonBorderRadius", fromJson: ConvertData.stringToDouble)
  double customButtonBorderRadius;

  @JsonKey(name: "buttonSize", fromJson: _fromJsonButtonSize, toJson: ConvertData.toMapSize)
  Size customButtonSize;

  @JsonKey(name: "icon", fromJson: _fromJsonIcon, includeIfNull: false)
  AbdIcon? customIcon;

  @JsonKey(name: "iconColor", fromJson: _fromJsonColor, includeIfNull: false)
  AbdColor? customIconColor;

  @JsonKey(name: "iconSize", fromJson: ConvertData.stringToDouble, defaultValue: 14)
  double customIconSize;

  @JsonKey(name: "image", fromJson: _fromJsonImage, includeIfNull: false)
  AbdImage? customImage;

  @JsonKey(name: "imageSize", fromJson: _fromJsonImageSize, toJson: ConvertData.toMapSize)
  Size customImageSize;

  @JsonKey(name: "action", fromJson: _fromJsonAction, includeIfNull: false)
  AbdAction? customAction;
  // End for type = "Custom"

  @JsonKey(name: "customFieldName")
  String? advancedFieldName; // For type = "AdvancedCustomFields"

  @JsonKey(name: "typeStatus", defaultValue: 'text')
  final String statusType; // For type = "Status"

  // Start for type = "Divider"
  @JsonKey(name: "heightDivider", fromJson: ConvertData.stringToDouble, defaultValue: 1)
  double dividerHeight;

  @JsonKey(name: "colorDivider", fromJson: _fromJsonColor, includeIfNull: false)
  AbdColor? dividerColor;
  // End for type = "Divider"

  // Start for type = "Webview"
  @JsonKey(name: 'height', fromJson: ConvertData.stringToDouble, defaultValue: 200)
  final double webviewHeight;

  @JsonKey(name: 'url', fromJson: _fromJsonText, includeIfNull: false)
  final AbdText? webviewUrl;

  @JsonKey(name: "syncAuth", fromJson: _fromJsonBoolFalse)
  final bool webviewSyncAuth;
  // End for type = "Webview"

  @JsonKey(name: "thumbSizes", defaultValue: 'src')
  final String relatedThumbSize; // For type = "RelatedProduct"

  ASRowDataColumnsValue({
    required this.flex,
    required this.align,
    required this.expand,
    required this.brandLayout,
    required this.customType,
    required this.customButtonBorderWidth,
    required this.customButtonBorderRadius,
    required this.customButtonSize,
    required this.customIconSize,
    required this.customImageSize,
    required this.statusType,
    required this.dividerHeight,
    required this.webviewHeight,
    required this.webviewSyncAuth,
    required this.relatedThumbSize,
    this.type,
    this.padding,
    this.margin,
    this.foreground,
    this.conditional,
    this.htmlText,
    this.customText,
    this.customButtonBackground,
    this.customButtonBorderColor,
    this.customIcon,
    this.customIconColor,
    this.customImage,
    this.customAction,
    this.advancedFieldName,
    this.dividerColor,
    this.webviewUrl,
  });

  /// Connect the generated [_$ASRowDataColumnsValueFromJson] function to the `fromJson`
  /// factory.
  factory ASRowDataColumnsValue.fromJson(Map<String, dynamic> json) => _$ASRowDataColumnsValueFromJson(json);

  /// Connect the generated [_$ASRowDataColumnsValueToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASRowDataColumnsValueToJson(this);

  static AbdSpacing? _fromJsonSpacing(dynamic value) {
    if (value is Map) {
      return AbdSpacing.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static AbdColor? _fromJsonColor(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (value != null) {
      return AbdColor.fromJson(data!);
    }
    return null;
  }

  static AbdText? _fromJsonText(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (value != null) {
      return AbdText.fromJson(data!);
    }
    return null;
  }

  static AbdIcon? _fromJsonIcon(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (value != null) {
      return AbdIcon.fromJson(data!);
    }
    return null;
  }

  static AbdImage? _fromJsonImage(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (value != null) {
      return AbdImage.fromJson(data!);
    }
    return null;
  }

  static AbdAction? _fromJsonAction(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (value != null) {
      return AbdAction.fromJson(data!);
    }
    return null;
  }

  static bool _fromJsonBoolFalse(dynamic value) {
    return ConvertData.toBoolValue(value) ?? false;
  }

  static Size _fromJsonButtonSize(dynamic value) {
    return ConvertData.toSizeValue(value, const Size(80, 32));
  }

  static Size _fromJsonImageSize(dynamic value) {
    return ConvertData.toSizeValue(value, const Size(32, 32));
  }
}

@JsonSerializable(explicitToJson: true)
class ASRowDataCVConditional {
  @JsonKey(name: 'when_conditionals')
  final String? whenConditionals;
  final List<dynamic>? conditionals;
  const ASRowDataCVConditional({
    this.whenConditionals,
    this.conditionals,
  });

  /// Connect the generated [_$ASRowDataCVConditionalFromJson] function to the `fromJson`
  /// factory.
  factory ASRowDataCVConditional.fromJson(Map<String, dynamic> json) => _$ASRowDataCVConditionalFromJson(json);

  /// Connect the generated [_$ASRowDataCVConditionalToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASRowDataCVConditionalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ASProductConfigs {
  final String? name;

  final List<ASProductDetailRow>? rows;

  final bool? enableAppbar;

  final String? cartIconType;

  final bool? enableBottomBar;

  final bool? enableCartIcon;

  final bool? enableBottomBarAddToCart;

  final bool? enableBottomBarSearch;

  final bool? enableBottomBarHome;

  final bool? enableBottomBarCart;

  final bool? enableBottomBarWishList;

  final bool? enableAppbarWishList;

  final bool? enableAppbarCart;

  final bool? enableAppbarShare;

  final String? appBarType;

  final bool? extendBodyBehindAppBar;

  final String? floatingActionButtonLocation;

  final bool? enableAppbarSearch;

  final bool? enableAppbarHome;

  final bool? enableBottomBarShare;

  final bool? enableBottomBarQty;

  final bool? enableBuyNow;

  final bool? enableChat;

  ASProductConfigs({
    this.name,
    this.enableAppbar,
    this.cartIconType,
    this.enableAppbarCart,
    this.enableAppbarShare,
    this.enableAppbarWishList,
    this.enableBottomBar,
    this.enableBottomBarAddToCart,
    this.enableBottomBarCart,
    this.enableBottomBarHome,
    this.enableBottomBarSearch,
    this.enableAppbarSearch,
    this.enableBottomBarWishList,
    this.enableCartIcon,
    this.rows,
    this.appBarType,
    this.extendBodyBehindAppBar,
    this.floatingActionButtonLocation,
    this.enableAppbarHome,
    this.enableBottomBarShare,
    this.enableBottomBarQty,
    this.enableBuyNow,
    this.enableChat,
  });

  /// Connect the generated [_$ASProductConfigsFromJson] function to the `fromJson`
  /// factory.
  factory ASProductConfigs.fromJson(Map<String, dynamic> json) => _$ASProductConfigsFromJson(json);

  /// Connect the generated [_$ASProductConfigsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASProductConfigsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ASProductDetailStyles {
  final AbdSpacing? padding;

  final AbdSpacing? marrgin;

  final AbdSpacing? indicatorMargin;

  final String? indicatorAlignment;

  final String? productGalleryIndicator;

  final AbdColor? indicatorColor;

  final AbdColor? indicatorActiveColor;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 6)
  final double? indicatorSize;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 4)
  final double? indicatorSpace;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 10)
  final double? indicatorActiveSize;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 8)
  final double? indicatorBorderRadius;

  final AbdColor? background;

  const ASProductDetailStyles({
    this.padding,
    this.marrgin,
    this.indicatorMargin,
    this.indicatorAlignment,
    this.productGalleryIndicator,
    this.indicatorColor,
    this.indicatorActiveColor,
    this.indicatorSize,
    this.indicatorSpace,
    this.indicatorActiveSize,
    this.indicatorBorderRadius,
    this.background,
  });

  /// Connect the generated [_$ASProductDetailStylesFromJson] function to the `fromJson`
  /// factory.
  factory ASProductDetailStyles.fromJson(Map<String, dynamic> json) => _$ASProductDetailStylesFromJson(json);

  /// Connect the generated [_$ASProductDetailStylesToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASProductDetailStylesToJson(this);
}
