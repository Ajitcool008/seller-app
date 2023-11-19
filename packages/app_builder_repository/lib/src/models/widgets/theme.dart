import 'dart:core';

import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'theme.g.dart';

enum AWThemeTextFieldType {
  @JsonValue('filled')
  filled,
  @JsonValue('outlined')
  outlined,
}

@JsonSerializable(explicitToJson: true)
class AWTheme {
  final String id;

  final String type;

  final AWThemeFields fields;

  const AWTheme({
    required this.id,
    required this.type,
    required this.fields,
  });

  /// Connect the generated [_$AWThemeFromJson] function to the `fromJson`
  /// factory.
  factory AWTheme.fromJson(Map<String, dynamic> json) => _$AWThemeFromJson(json);

  /// Connect the generated [_$AWThemeToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWThemeToJson(this);
}

/// Theme fields config
@JsonSerializable(explicitToJson: true)
class AWThemeFields {
  /// Typography
  final String? fontFamily;

  final String? fontFamilyBody;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? displayColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? bodyColor;

  /// Colors Schema
  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? primary;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? primaryVariant;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? onPrimary;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? secondary;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? secondaryVariant;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? onSecondary;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? surface;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? onSurface;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? background;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? onBackground;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? error;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? onError;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? success;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? onSuccess;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? warning;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? onWarning;

  /// Appbar
  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? appBarBackgroundColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? appBarIconColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? appBarTextColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? appBarShadowColor;

  @JsonKey(fromJson: fromJsonAppBarElevation)
  final double appBarElevation;

  /// Scaffold
  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? scaffoldBackgroundColor;

  /// Text fields
  @JsonKey(defaultValue: AWThemeTextFieldType.filled)
  final AWThemeTextFieldType textFieldsType;

  @JsonKey(fromJson: fromJsonTextFieldRadius)
  final double textFieldsBorderRadius;

  @JsonKey(fromJson: fromJsonTextFieldBorderWidth)
  final double textFieldsBorderWidth;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? textFieldsBorderColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? textFieldsLabelColor;

  @JsonKey(fromJson: fromJsonTextFieldLabelFontSize)
  final double textFieldsLabelFontSize;

  @JsonKey(fromJson: fromJsonTextFieldLabelFontWeight, toJson: toJsonTextFieldLabelFontWeight)
  final FontWeight textFieldsLabelFontWeight;

  final AbdSpacing textFieldsPadding;

  /// Button
  @JsonKey(fromJson: fromJsonButtonRadius)
  final double buttonBorderRadius;

  /// Divider
  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? dividerColor;

  /// Statusbar
  @JsonKey(fromJson: fromJsonBrightness, toJson: toJsonBrightness)
  final Brightness brightnessLight;

  @JsonKey(fromJson: fromJsonBrightness, toJson: toJsonBrightness)
  final Brightness brightnessDark;

  /// Card
  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? cardColor;

  const AWThemeFields({
    this.fontFamily,
    this.fontFamilyBody,
    this.displayColor,
    this.bodyColor,
    this.primary,
    this.primaryVariant,
    this.onPrimary,
    this.secondary,
    this.secondaryVariant,
    this.onSecondary,
    this.surface,
    this.onSurface,
    this.background,
    this.onBackground,
    this.error,
    this.onError,
    this.success,
    this.onSuccess,
    this.warning,
    this.onWarning,
    this.appBarBackgroundColor,
    this.appBarIconColor,
    this.appBarTextColor,
    this.appBarShadowColor,
    required this.appBarElevation,
    this.scaffoldBackgroundColor,
    required this.textFieldsType,
    required this.textFieldsBorderRadius,
    required this.textFieldsBorderWidth,
    this.textFieldsBorderColor,
    this.textFieldsLabelColor,
    required this.textFieldsLabelFontSize,
    required this.textFieldsLabelFontWeight,
    required this.textFieldsPadding,
    required this.buttonBorderRadius,
    this.dividerColor,
    required this.brightnessLight,
    required this.brightnessDark,
    this.cardColor,
  });

  /// Connect the generated [_$AWThemeFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWThemeFields.fromJson(Map<String, dynamic> json) => _$AWThemeFieldsFromJson(json);

  /// Connect the generated [_$AWThemeFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWThemeFieldsToJson(this);

  static double fromJsonAppBarElevation(dynamic value) {
    return ConvertData.stringToDouble(value, 4);
  }

  static double fromJsonTextFieldRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }

  static double fromJsonTextFieldBorderWidth(dynamic value) {
    return ConvertData.stringToDouble(value, 1);
  }

  static double fromJsonTextFieldLabelFontSize(dynamic value) {
    return ConvertData.stringToDouble(value, 14);
  }

  static FontWeight fromJsonTextFieldLabelFontWeight(dynamic value) {
    int index = ConvertData.stringToInt(value, 3);
    return FontWeight.values[index];
  }

  static dynamic toJsonTextFieldLabelFontWeight(FontWeight value) {
    return value.index;
  }

  static double fromJsonButtonRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }

  static Brightness fromJsonBrightness(dynamic value) {
    int index = ConvertData.stringToInt(value, 1);
    return Brightness.values[index];
  }

  static dynamic toJsonBrightness(Brightness value) {
    return value.index;
  }

  static AbdColor? fromJsonColor(dynamic value) {
    if (value is Map) {
      return AbdColor.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }
}
