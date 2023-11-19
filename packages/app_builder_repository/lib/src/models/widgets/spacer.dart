import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'spacer.g.dart';

@JsonSerializable(explicitToJson: true)
class AWSpacer {
  final String id;

  final String type;

  final AWSpacerFields fields;

  final AWSpacerStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWSpacer({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWSpacerFromJson] function to the `fromJson`
  /// factory.
  factory AWSpacer.fromJson(Map<String, dynamic> json) => _$AWSpacerFromJson(json);

  /// Connect the generated [_$AWSpacerToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSpacerToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWSpacerFields {
  @JsonKey(fromJson: fromJsonDouble)
  final double height;

  const AWSpacerFields({required this.height});

  /// Connect the generated [_$AWSpacerFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWSpacerFields.fromJson(Map<String, dynamic> json) => _$AWSpacerFieldsFromJson(json);

  /// Connect the generated [_$AWSpacerFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSpacerFieldsToJson(this);

  static double fromJsonDouble(value) {
    return ConvertData.stringToDouble(value, 20);
  }
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWSpacerStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  @JsonKey(name: 'backgroundColor')
  final AbdColor background;

  const AWSpacerStyle({required this.padding, required this.margin, required this.background});

  /// Connect the generated [_$AWSpacerStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWSpacerStyle.fromJson(Map<String, dynamic> json) => _$AWSpacerStyleFromJson(json);

  /// Connect the generated [_$AWSpacerStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSpacerStyleToJson(this);
}
