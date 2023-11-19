import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'countdown.g.dart';

enum AWCountdownLayout {
  @JsonValue('horizontal')
  horizontal,
  @JsonValue('vertical')
  vertical;
}

@JsonSerializable(explicitToJson: true)
class AWCountdown {
  final String id;

  final String type;

  final AWCountdownFields fields;

  final AWCountdownStyle styles;

  @JsonKey(defaultValue: AWCountdownLayout.horizontal)
  final AWCountdownLayout layout;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWCountdown({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWCountdownFromJson] function to the `fromJson`
  /// factory.
  factory AWCountdown.fromJson(Map<String, dynamic> json) => _$AWCountdownFromJson(json);

  /// Connect the generated [_$AWCountdownToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWCountdownToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWCountdownFields {
  final AbdText title;

  final String? expireDate;

  @JsonKey(defaultValue: true)
  final bool enableDay;

  @JsonKey(defaultValue: true)
  final bool enableHour;

  @JsonKey(defaultValue: true)
  final bool enableMinute;

  @JsonKey(defaultValue: true)
  final bool enableSecond;

  final AbdAction action;

  final AbdAlignment? alignment;

  @JsonKey(defaultValue: true)
  final bool enableSeparator;

  const AWCountdownFields({
    this.expireDate,
    required this.enableDay,
    required this.enableHour,
    required this.enableMinute,
    required this.enableSecond,
    required this.action,
    required this.alignment,
    required this.title,
    required this.enableSeparator,
  });

  /// Connect the generated [_$AWCountdownFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWCountdownFields.fromJson(Map<String, dynamic> json) => _$AWCountdownFieldsFromJson(json);

  /// Connect the generated [_$AWCountdownFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWCountdownFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWCountdownStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 16)
  final double pad;

  final AbdColor backgroundTime;

  final AbdColor borderTime;

  final AbdColor textColor;

  final AbdColor separatorColor;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 12)
  final double padTime;

  const AWCountdownStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.pad,
    required this.backgroundTime,
    required this.borderTime,
    required this.textColor,
    required this.separatorColor,
    required this.padTime,
  });

  /// Connect the generated [_$AWCountdownStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWCountdownStyle.fromJson(Map<String, dynamic> json) => _$AWCountdownStyleFromJson(json);

  /// Connect the generated [_$AWCountdownStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWCountdownStyleToJson(this);
}
