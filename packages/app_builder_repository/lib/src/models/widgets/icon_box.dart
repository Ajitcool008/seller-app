import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'icon_box.g.dart';

enum AWIconBoxLayout {
  @JsonValue('list')
  list,
  @JsonValue('carousel')
  carousel,
  @JsonValue('masonry')
  masonry,
  @JsonValue('slideshow')
  slideshow,
  @JsonValue('grid')
  grid
}

enum AWIconBoxTemplateType {
  @JsonValue('default')
  defaultBox,
  @JsonValue('contained')
  containedBox,
  @JsonValue('group')
  groupBox,
}

@JsonSerializable(explicitToJson: true)
class AWIconBox {
  final String id;

  final String type;

  final AWIconBoxFields fields;

  @JsonKey(defaultValue: AWIconBoxLayout.list)
  final AWIconBoxLayout layout;

  final AWIconBoxStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWIconBox({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWIconBoxFromJson] function to the `fromJson`
  /// factory.
  factory AWIconBox.fromJson(Map<String, dynamic> json) => _$AWIconBoxFromJson(json);

  /// Connect the generated [_$AWIconBoxToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWIconBoxToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Icon box fields config
@JsonSerializable(explicitToJson: true)
class AWIconBoxFields {
  @JsonKey(defaultValue: [])
  final List<AWIconBoxTemplate> items;

  const AWIconBoxFields({required this.items});

  /// Connect the generated [_$AWIconBoxFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWIconBoxFields.fromJson(Map<String, dynamic> json) => _$AWIconBoxFieldsFromJson(json);

  /// Connect the generated [_$AWIconBoxFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWIconBoxFieldsToJson(this);
}

/// Icon box style
@JsonSerializable(explicitToJson: true)
class AWIconBoxStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor? background;

  @JsonKey(fromJson: fromJsonPad)
  final double pad;

  @JsonKey(fromJson: fromJsonHeight)
  final double height;

  @JsonKey(fromJson: fromJsonWidth)
  final double width;

  @JsonKey(fromJson: fromJsonColumn)
  final int col;

  @JsonKey(fromJson: fromJsonRatio)
  final double ratio;

  final AbdColor? indicatorColor;

  final AbdColor? indicatorActiveColor;

  final AbdColor? backgroundColorItem;

  final AbdColor? borderColor;

  @JsonKey(fromJson: fromJsonRadius)
  final double radius;

  @JsonKey(fromJson: fromJsonEnableIconBox)
  final bool enableBoxIcon;

  final AbdColor? iconColor;

  @JsonKey(fromJson: fromJsonSizeIcon)
  final double sizeIcon;

  @JsonKey(fromJson: fromJsonSizeBoxIcon)
  final double sizeBoxIcon;

  final AbdColor? iconBoxColor;

  final AbdColor? iconBorder;

  final AbdColor? shadowColor;

  @JsonKey(fromJson: fromJsonOffsetX)
  final double offsetX;

  @JsonKey(fromJson: fromJsonOffsetY)
  final double offsetY;

  @JsonKey(fromJson: fromJsonBlurRadius)
  final double blurRadius;

  @JsonKey(fromJson: fromJsonSpreadRadius)
  final double spreadRadius;

  @JsonKey(fromJson: fromJsonMaxWidth)
  final double? maxWidth;

  const AWIconBoxStyle({
    required this.padding,
    required this.margin,
    this.background,
    required this.pad,
    required this.height,
    required this.width,
    required this.col,
    required this.ratio,
    this.indicatorColor,
    this.indicatorActiveColor,
    this.backgroundColorItem,
    this.borderColor,
    required this.radius,
    required this.enableBoxIcon,
    this.iconColor,
    required this.sizeIcon,
    required this.sizeBoxIcon,
    this.iconBoxColor,
    this.iconBorder,
    this.shadowColor,
    required this.offsetX,
    required this.offsetY,
    required this.blurRadius,
    required this.spreadRadius,
    this.maxWidth,
  });

  /// Connect the generated [_$AWIconBoxStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWIconBoxStyle.fromJson(Map<String, dynamic> json) => _$AWIconBoxStyleFromJson(json);

  /// Connect the generated [_$AWIconBoxStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWIconBoxStyleToJson(this);

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value, 12);
  }

  static double fromJsonHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 300);
  }

  static double fromJsonWidth(dynamic value) {
    return ConvertData.stringToDouble(value, 300);
  }

  static int fromJsonColumn(dynamic value) {
    return ConvertData.stringToInt(value, 2);
  }

  static double fromJsonRatio(dynamic value) {
    return ConvertData.stringToDouble(value, 1);
  }

  static double fromJsonRadius(dynamic value) {
    return ConvertData.stringToDouble(value);
  }

  static bool fromJsonEnableIconBox(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static double fromJsonSizeIcon(dynamic value) {
    return ConvertData.stringToDouble(value, 36);
  }

  static double fromJsonSizeBoxIcon(dynamic value) {
    return ConvertData.stringToDouble(value, 54);
  }

  static double fromJsonOffsetX(dynamic value) {
    return ConvertData.stringToDouble(value);
  }

  static double fromJsonOffsetY(dynamic value) {
    return ConvertData.stringToDouble(value, 4);
  }

  static double fromJsonBlurRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 24);
  }

  static double fromJsonSpreadRadius(dynamic value) {
    return ConvertData.stringToDouble(value);
  }

  static double? fromJsonMaxWidth(dynamic value) {
    if (value is String || value is num) {
      return ConvertData.stringToDouble(value);
    }
    return null;
  }
}

/// Banner template item
@JsonSerializable(explicitToJson: true)
class AWIconBoxTemplate {
  final AWIconBoxTemplateType template;

  final AWIconBoxDataTemplate data;

  const AWIconBoxTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWIconBoxTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWIconBoxTemplate.fromJson(Map<String, dynamic> json) => _$AWIconBoxTemplateFromJson(json);

  /// Connect the generated [_$AWIconBoxTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWIconBoxTemplateToJson(this);
}

/// Banner data template item
@JsonSerializable(explicitToJson: true)
class AWIconBoxDataTemplate {
  final AbdIcon icon;

  final AbdText title;

  final AbdText description;

  final AbdAction? action;

  @JsonKey(fromJson: fromJsonAlignment, includeIfNull: false)
  final TextAlign? alignment;

  const AWIconBoxDataTemplate({
    required this.icon,
    required this.title,
    required this.description,
    required this.action,
    this.alignment,
  });

  /// Connect the generated [_$AWIconBoxDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWIconBoxDataTemplate.fromJson(Map<String, dynamic> json) => _$AWIconBoxDataTemplateFromJson(json);

  /// Connect the generated [_$AWIconBoxDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWIconBoxDataTemplateToJson(this);

  static TextAlign? fromJsonAlignment(dynamic value) {
    if (value is TextAlign) {
      return value;
    }
    if (value is String && value.isNotEmpty) {
      return ConvertData.toTextAlign(value);
    }
    return null;
  }
}
