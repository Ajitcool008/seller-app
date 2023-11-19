import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'product_category.g.dart';

enum AWProductCategoryItemTemplate {
  @JsonValue('wrap')
  wrap,
  @JsonValue('horizontal')
  horizontal,
  @JsonValue('overlay')
  overlay,
  @JsonValue('contained')
  contained,
  @JsonValue('card')
  card,
  @JsonValue('grid')
  grid,
  @JsonValue('default')
  defaultValue,
}

enum AWProductCategoryLayout {
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
  @JsonValue('grid')
  grid;
}

@JsonSerializable(explicitToJson: true)
class AWProductCategory {
  final String id;

  final String type;

  final AWProductCategoryFields fields;

  final AWProductCategoryStyle styles;

  @JsonKey(defaultValue: AWProductCategoryLayout.list)
  final AWProductCategoryLayout layout;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWProductCategory({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWProductCategoryFromJson] function to the `fromJson`
  /// factory.
  factory AWProductCategory.fromJson(Map<String, dynamic> json) => _$AWProductCategoryFromJson(json);

  /// Connect the generated [_$AWProductCategoryToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductCategoryToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWProductCategoryFields {
  final int? limit;

  final List<AWProductCategoryCategory>? excludeCategory;

  final List<AWProductCategoryCategory>? includeCategory;

  @JsonKey(
    includeIfNull: false,
  )
  final bool? showHierarchy;

  @JsonKey(
    fromJson: ConvertData.stringToDoubleCanBeNull,
    includeIfNull: false,
  )
  final double? height;

  @JsonKey(
    fromJson: ConvertData.stringToDoubleCanBeNull,
    includeIfNull: false,
  )
  final double? width;

  @JsonKey(
    includeIfNull: false,
  )
  final AbdText? url;

  final AWProductCategoryTemplate template;

  const AWProductCategoryFields({
    this.limit,
    this.excludeCategory,
    this.includeCategory,
    this.showHierarchy,
    required this.height,
    required this.width,
    this.url,
    required this.template,
  });

  /// Connect the generated [_$AWProductCategoryFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWProductCategoryFields.fromJson(Map<String, dynamic> json) => _$AWProductCategoryFieldsFromJson(json);

  /// Connect the generated [_$AWProductCategoryFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductCategoryFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWProductCategoryStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double? pad;

  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double? height;

  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double? maxHeightImage;

  @JsonKey(fromJson: ConvertData.stringToInt)
  final int? col;

  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double? ratio;

  final AbdColor? indicatorColor;

  final AbdColor? indicatorActiveColor;

  final AbdColor? backgroundItem;

  final AbdColor? textColor;

  final AbdColor? subTextColor;

  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double? radius;

  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double? radiusImage;

  @JsonKey(
    fromJson: ConvertData.stringToDoubleCanBeNull,
    includeIfNull: false,
  )
  final double? fontSize;

  const AWProductCategoryStyle({
    required this.padding,
    required this.margin,
    required this.background,
    this.pad,
    this.height,
    this.maxHeightImage,
    this.col,
    this.radius,
    this.indicatorActiveColor,
    this.indicatorColor,
    this.backgroundItem,
    this.textColor,
    this.subTextColor,
    this.radiusImage,
    this.ratio,
    this.fontSize,
  });

  /// Connect the generated [_$AWProductCategoryStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWProductCategoryStyle.fromJson(Map<String, dynamic> json) => _$AWProductCategoryStyleFromJson(json);

  /// Connect the generated [_$AWProductCategoryStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductCategoryStyleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWProductCategoryCategory {
  @JsonKey(fromJson: ConvertData.stringToInt)
  final int? key;

  final String? text;

  const AWProductCategoryCategory({
    this.key,
    this.text,
  });

  /// Connect the generated [_$AWProductCategoryCategoryFromJson] function to the `fromJson`
  /// factory.
  factory AWProductCategoryCategory.fromJson(Map<String, dynamic> json) => _$AWProductCategoryCategoryFromJson(json);

  /// Connect the generated [_$AWProductCategoryCategoryToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductCategoryCategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWProductCategoryTemplate {
  @JsonKey(defaultValue: AWProductCategoryItemTemplate.defaultValue)
  final AWProductCategoryItemTemplate? template;

  final AWProductCategoryTemplateData? data;

  const AWProductCategoryTemplate({
    this.template,
    this.data,
  });

  /// Connect the generated [_$AWProductCategory
  ///TemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWProductCategoryTemplate.fromJson(Map<String, dynamic> json) => _$AWProductCategoryTemplateFromJson(json);

  /// Connect the generated [_$AWProductCategory
  ///TemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductCategoryTemplateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWProductCategoryTemplateData {
  @JsonKey(
    includeIfNull: false,
  )
  final bool? enableAvatar;

  @JsonKey(
    includeIfNull: false,
  )
  final bool? enableCount;

  final bool? enableName;

  final String? thumbSizes;

  final bool? enableNumber;

  final bool? enableRoundImage;

  @JsonKey(disallowNullValue: true)
  final AbdAlignment? alignment;

  @JsonKey(
    fromJson: ConvertData.stringToDoubleCanBeNull,
    includeIfNull: false,
  )
  final double? opacity;

  @JsonKey(
    includeIfNull: false,
  )
  final AbdColor? opacityColor;

  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double? pad;

  final AbdColor? borderColor;

  final String? borderStyle;

  const AWProductCategoryTemplateData({
    this.enableAvatar,
    this.enableCount,
    this.enableName,
    this.thumbSizes,
    this.enableNumber,
    this.enableRoundImage,
    this.alignment,
    this.opacity,
    this.opacityColor,
    this.pad,
    this.borderColor,
    this.borderStyle,
  });

  /// Connect the generated [_$AWProductCategory
  ///TemplateDataFromJson] function to the `fromJson`
  /// factory.
  factory AWProductCategoryTemplateData.fromJson(Map<String, dynamic> json) =>
      _$AWProductCategoryTemplateDataFromJson(json);

  /// Connect the generated [_$AWProductCategory
  ///TemplateDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWProductCategoryTemplateDataToJson(this);
}
