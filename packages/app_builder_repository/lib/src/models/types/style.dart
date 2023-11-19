import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_annotation/json_annotation.dart';
import 'color.dart';

part 'style.g.dart';

@JsonSerializable(explicitToJson: true)
class AbdStyle {
  @JsonKey(
    fromJson: fromJsonColor,
    disallowNullValue: true,
  )
  final AbdColor? color;

  @JsonKey(
    fromJson: ConvertData.stringToDouble,
    defaultValue: 14,
    disallowNullValue: true,
  )
  final double? fontSize;

  @JsonKey(
    fromJson: ConvertData.toStringValueCanBeNull,
    disallowNullValue: true,
  )
  final String? fontFamily;

  @JsonKey(
    fromJson: ConvertData.toStringValueCanBeNull,
    disallowNullValue: true,
  )
  final String? fontWeight;

  @JsonKey(
    fromJson: ConvertData.stringToDoubleCanBeNull,
    disallowNullValue: true,
  )
  final double? letterSpacing;

  @JsonKey(
    fromJson: ConvertData.stringToDoubleCanBeNull,
    disallowNullValue: true,
  )
  final double? height;

  @JsonKey(
    fromJson: ConvertData.toStringValueCanBeNull,
    disallowNullValue: true,
  )
  final String? textDecoration;

  @JsonKey(
    fromJson: fromJsonColor,
    disallowNullValue: true,
  )
  final AbdColor? backgroundColor;

  const AbdStyle({
    required this.color,
    required this.fontSize,
    required this.fontFamily,
    required this.fontWeight,
    this.letterSpacing,
    this.height,
    required this.textDecoration,
    required this.backgroundColor,
  });

  /// Connect the generated [_$AbdStyleFromJson] function to the `fromJson`
  /// factory.
  factory AbdStyle.fromJson(Map<String, dynamic> json) => _$AbdStyleFromJson(json);

  /// Connect the generated [_$AbdStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdStyleToJson(this);

  /// Get text style
  TextStyle getTextStyle([String theme = 'value']) {
    TextStyle style = TextStyle(
      fontSize: fontSize,
      color: color?.getColor(theme),
      backgroundColor: backgroundColor?.getColor(theme),
      fontWeight: ConvertData.fontWeight(fontWeight),
      decoration: ConvertData.toTextDecoration(textDecoration),
      letterSpacing: letterSpacing,
      height: height,
    );
    if (fontFamily != null && fontFamily != '') {
      return GoogleFonts.getFont(fontFamily!, textStyle: style);
    }
    return style;
  }

  static AbdColor? fromJsonColor(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (data != null) {
      return AbdColor.fromJson(data);
    }
    return null;
  }
}
