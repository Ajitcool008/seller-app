import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_category.g.dart';

enum AWPostCategoryLayout {
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
  grid,
}

enum AWPostCategoryTemplateType {
  @JsonValue('contained')
  contained,
  @JsonValue('horizontal')
  horizontal,
  @JsonValue('gradient')
  gradient,
  @JsonValue('parallax')
  parallax,
}

@JsonSerializable(explicitToJson: true)
class AWPostCategory {
  final String id;

  final String type;

  final AWPostCategoryFields fields;

  @JsonKey(defaultValue: AWPostCategoryLayout.list)
  final AWPostCategoryLayout layout;

  final AWPostCategoryStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWPostCategory({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWPostCategoryFromJson] function to the `fromJson`
  /// factory.
  factory AWPostCategory.fromJson(Map<String, dynamic> json) => _$AWPostCategoryFromJson(json);

  /// Connect the generated [_$AWPostCategoryToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostCategoryToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Post category fields config
@JsonSerializable(explicitToJson: true)
class AWPostCategoryFields {
  @JsonKey(defaultValue: 'categories')
  final String taxonomy;

  @JsonKey(fromJson: fromJsonLimit)
  final int limit;

  @JsonKey(fromJson: fromJsonTemplate)
  final AWPostCategoryTemplate template;

  const AWPostCategoryFields({required this.taxonomy, required this.limit, required this.template});

  /// Connect the generated [_$AWPostCategoryFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWPostCategoryFields.fromJson(Map<String, dynamic> json) => _$AWPostCategoryFieldsFromJson(json);

  /// Connect the generated [_$AWPostCategoryFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostCategoryFieldsToJson(this);

  static int fromJsonLimit(dynamic value) {
    return ConvertData.stringToInt(value, 4);
  }

  static AWPostCategoryTemplate fromJsonTemplate(dynamic value) {
    if (value is Map) {
      return AWPostCategoryTemplate.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return AWPostCategoryTemplate.fromJson({});
  }
}

/// Banner style
@JsonSerializable(explicitToJson: true)
class AWPostCategoryStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: fromJsonPad)
  final double pad;

  @JsonKey(fromJson: fromJsonColumn)
  final int col;

  @JsonKey(fromJson: fromJsonRatio)
  final double ratio;

  @JsonKey(fromJson: fromJsonHeight)
  final double height;

  @JsonKey(fromJson: fromJsonHeightImage)
  final double heightImage;

  final AbdColor indicatorColor;

  final AbdColor indicatorActiveColor;

  final AbdColor backgroundItem;

  final AbdColor textColor;

  final AbdColor labelColor;

  final AbdColor labelTextColor;

  @JsonKey(fromJson: fromJsonLabelRadius)
  final double labelRadius;

  @JsonKey(fromJson: fromJsonRadius)
  final double radius;

  @JsonKey(fromJson: fromJsonImageRadius)
  final double radiusImage;

  const AWPostCategoryStyle(
      {required this.padding,
      required this.margin,
      required this.background,
      required this.pad,
      required this.col,
      required this.ratio,
      required this.height,
      required this.heightImage,
      required this.indicatorColor,
      required this.indicatorActiveColor,
      required this.backgroundItem,
      required this.textColor,
      required this.labelColor,
      required this.labelTextColor,
      required this.labelRadius,
      required this.radius,
      required this.radiusImage});

  /// Connect the generated [_$AWPostCategoryStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWPostCategoryStyle.fromJson(Map<String, dynamic> json) => _$AWPostCategoryStyleFromJson(json);

  /// Connect the generated [_$AWPostCategoryStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostCategoryStyleToJson(this);

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value, 16);
  }

  static int fromJsonColumn(dynamic value) {
    return ConvertData.stringToInt(value, 2);
  }

  static double fromJsonRatio(dynamic value) {
    return ConvertData.stringToDouble(value, 1);
  }

  static double fromJsonHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 200);
  }

  static double fromJsonHeightImage(dynamic value) {
    return ConvertData.stringToDouble(value, 200);
  }

  static double fromJsonLabelRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 13);
  }

  static double fromJsonRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }

  static double fromJsonImageRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }
}

/// Banner template item
@JsonSerializable(explicitToJson: true)
class AWPostCategoryTemplate {
  @JsonKey(defaultValue: AWPostCategoryTemplateType.contained)
  final AWPostCategoryTemplateType template;

  @JsonKey(fromJson: _fromJsonData)
  final AWPostCategoryDataTemplate data;

  const AWPostCategoryTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWPostCategoryTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWPostCategoryTemplate.fromJson(Map<String, dynamic> json) => _$AWPostCategoryTemplateFromJson(json);

  /// Connect the generated [_$AWPostCategoryTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostCategoryTemplateToJson(this);

  static AWPostCategoryDataTemplate _fromJsonData(dynamic value) {
    return AWPostCategoryDataTemplate.fromJson(ConvertData.toMapStringDynamic(value) ?? {});
  }
}

/// Banner data template item
@JsonSerializable(explicitToJson: true)
class AWPostCategoryDataTemplate {
  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableCount;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableRoundImage;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? colorBegin;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? colorEnd;

  @JsonKey(fromJson: fromJsonAlignment, toJson: toJsonAlignment, includeIfNull: false)
  final AlignmentDirectional? begin;

  @JsonKey(fromJson: fromJsonAlignment, toJson: toJsonAlignment, includeIfNull: false)
  final AlignmentDirectional? end;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? opacity;

  const AWPostCategoryDataTemplate({
    this.enableCount,
    this.enableRoundImage,
    this.colorBegin,
    this.colorEnd,
    this.begin,
    this.end,
    this.opacity,
  });

  /// Connect the generated [_$AWPostCategoryDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWPostCategoryDataTemplate.fromJson(Map<String, dynamic> json) => _$AWPostCategoryDataTemplateFromJson(json);

  /// Connect the generated [_$AWPostCategoryDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostCategoryDataTemplateToJson(this);

  static bool fromJsonEnableCount(dynamic value) {
    return ConvertData.toBoolValue(value) ?? true;
  }

  static AbdColor? fromJsonColor(dynamic value) {
    if (value is Map) {
      return AbdColor.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static AlignmentDirectional? fromJsonAlignment(dynamic value) {
    if (value is AlignmentDirectional) {
      return value;
    }
    if (value is String && value.isNotEmpty) {
      return ConvertData.toAlignmentDirectional(value);
    }
    return null;
  }

  static dynamic toJsonAlignment(AlignmentDirectional? value) {
    if (value is AlignmentDirectional) {
      return ConvertData.toStringAlignmentDirectional(value);
    }
    return null;
  }
}
