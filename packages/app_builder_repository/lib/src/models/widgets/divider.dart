import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'divider.g.dart';

enum AWDividerType {
  @JsonValue('solid')
  solid,
  @JsonValue('dashed')
  dashed,
  @JsonValue('dotted')
  dotted,
  @JsonValue('none')
  none,
}

@JsonSerializable(explicitToJson: true)
class AWDivider {
  final String id;

  final String type;

  final AWDividerFields fields;

  final AWDividerStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWDivider({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWDividerFromJson] function to the `fromJson`
  /// factory.
  factory AWDivider.fromJson(Map<String, dynamic> json) => _$AWDividerFromJson(json);

  /// Connect the generated [_$AWDividerToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWDividerToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWDividerFields {
  @JsonKey(fromJson: fromJsonDouble)
  final double height;

  @JsonKey(defaultValue: AWDividerType.solid)
  final AWDividerType type;

  const AWDividerFields({required this.height, required this.type});

  /// Connect the generated [_$AWDividerFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWDividerFields.fromJson(Map<String, dynamic> json) => _$AWDividerFieldsFromJson(json);

  /// Connect the generated [_$AWDividerFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWDividerFieldsToJson(this);

  static double fromJsonDouble(value) {
    return ConvertData.stringToDouble(value, 1);
  }
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWDividerStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  final AbdColor color;

  const AWDividerStyle({required this.padding, required this.margin, required this.background, required this.color});

  /// Connect the generated [_$AWDividerStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWDividerStyle.fromJson(Map<String, dynamic> json) => _$AWDividerStyleFromJson(json);

  /// Connect the generated [_$AWDividerStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWDividerStyleToJson(this);
}
