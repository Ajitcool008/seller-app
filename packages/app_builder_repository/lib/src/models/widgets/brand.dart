import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'brand.g.dart';

enum AWBrandLayout {
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
class AWBrand {
  final String id;

  final String type;

  final AWBrandFields fields;

  final AWBrandStyle styles;

  @JsonKey(defaultValue: AWBrandLayout.list)
  final AWBrandLayout layout;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWBrand({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWBrandFromJson] function to the `fromJson`
  /// factory.
  factory AWBrand.fromJson(Map<String, dynamic> json) => _$AWBrandFromJson(json);

  /// Connect the generated [_$AWBrandToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBrandToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWBrandFields {
  @JsonKey(fromJson: ConvertData.stringToInt)
  final int limit;

  final AWBrandTemplate template;



  const AWBrandFields({
    required this.template,
    required this.limit,
  });

  /// Connect the generated [_$AWBrandFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWBrandFields.fromJson(Map<String, dynamic> json) => _$AWBrandFieldsFromJson(json);

  /// Connect the generated [_$AWBrandFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBrandFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWBrandStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 16)
  final double pad;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 1)
  final double dividerWidth;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull,)
  final double? height;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull,)
  final double? width;

  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double ratio;

  @JsonKey(fromJson: ConvertData.stringToInt)
  final int col;

  final AbdColor dividerColor;

  final AbdColor indicatorColor;

  final AbdColor indicatorActiveColor;

  final AbdColor backgroundItem;

  final AbdColor textItem;

  final AbdColor shadowColor;


  final AbdSpacing? paddingContent;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? radius;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? offsetX;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? offsetY;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? blurRadius;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? spreadRadius;

  const AWBrandStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.pad,
    this.height,
    required this.dividerWidth,
    required this.dividerColor,
    required this.col,
    this.radius,
    required this.indicatorActiveColor,
    required this.indicatorColor,
    required this.ratio,
    required this.shadowColor,
    this.spreadRadius,
    this.blurRadius,
    this.offsetY,
    this.offsetX,
    this.width,
    required this.backgroundItem,
    required this.paddingContent,
    required this.textItem,
  });

  /// Connect the generated [_$AWBrandStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWBrandStyle.fromJson(Map<String, dynamic> json) => _$AWBrandStyleFromJson(json);

  /// Connect the generated [_$AWBrandStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBrandStyleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWBrandTemplate {
  @JsonKey(defaultValue: 'default')
  final String template;

  final AWBrandTemplateData data;

  const AWBrandTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWBrandTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWBrandTemplate.fromJson(Map<String, dynamic> json) => _$AWBrandTemplateFromJson(json);

  /// Connect the generated [_$AWBrandTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBrandTemplateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWBrandTemplateData {

  final String? imageSize;


  final AbdAlignment? alignment;


  final bool? enableName;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? opacity;


  final AbdColor? opacityColor;


  final bool? enableImage;

  const AWBrandTemplateData({
    this.opacityColor,
    this.imageSize,
    this.opacity,
    this.enableName,
    this.alignment,
    this.enableImage,
  });

  /// Connect the generated [_$AWBrandTemplateDataFromJson] function to the `fromJson`
  /// factory.
  factory AWBrandTemplateData.fromJson(Map<String, dynamic> json) => _$AWBrandTemplateDataFromJson(json);

  /// Connect the generated [_$AWBrandTemplateDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBrandTemplateDataToJson(this);
}
