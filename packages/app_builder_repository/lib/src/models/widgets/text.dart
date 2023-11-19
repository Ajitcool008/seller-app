import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'text.g.dart';

@JsonSerializable(explicitToJson: true)
class AWText {
  final String id;

  final String type;

  final AWTextFields fields;

  final AWTextStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWText({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWTextFromJson] function to the `fromJson`
  /// factory.
  factory AWText.fromJson(Map<String, dynamic> json) => _$AWTextFromJson(json);

  /// Connect the generated [_$AWTextToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTextToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWTextFields {
  final AbdText title;

  @JsonKey(fromJson: ConvertData.toTextAlign)
  final TextAlign alignment;

  final AbdAction action;

  const AWTextFields({required this.title, required this.alignment, required this.action});

  /// Connect the generated [_$AWTextFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWTextFields.fromJson(Map<String, dynamic> json) => _$AWTextFieldsFromJson(json);

  /// Connect the generated [_$AWTextFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTextFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWTextStyle {
  final AbdSpacing padding;
  final AbdSpacing margin;
  final AbdColor background;

  const AWTextStyle({required this.padding, required this.margin, required this.background});

  /// Connect the generated [_$AWTextStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWTextStyle.fromJson(Map<String, dynamic> json) => _$AWTextStyleFromJson(json);

  /// Connect the generated [_$AWTextStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTextStyleToJson(this);
}
