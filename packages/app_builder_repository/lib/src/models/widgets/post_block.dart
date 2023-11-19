import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_block.g.dart';

@JsonSerializable(explicitToJson: true)
class AWPostBlock {
  final String id;

  final String type;

  final AWPostBlockFields fields;

  final AWPostBlockStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWPostBlock({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWPostBlockFromJson] function to the `fromJson`
  /// factory.
  factory AWPostBlock.fromJson(Map<String, dynamic> json) => _$AWPostBlockFromJson(json);

  /// Connect the generated [_$AWPostBlockToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostBlockToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Post block fields config
@JsonSerializable(explicitToJson: true)
class AWPostBlockFields {
  final AbdOption post;

  const AWPostBlockFields({required this.post});

  /// Connect the generated [_$AWPostBlockFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWPostBlockFields.fromJson(Map<String, dynamic> json) => _$AWPostBlockFieldsFromJson(json);

  /// Connect the generated [_$AWPostBlockFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostBlockFieldsToJson(this);
}

/// Post block style
@JsonSerializable(explicitToJson: true)
class AWPostBlockStyle {
  final AbdSpacing padding;
  final AbdSpacing margin;
  final AbdColor background;

  const AWPostBlockStyle({required this.padding, required this.margin, required this.background});

  /// Connect the generated [_$AWPostBlockStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWPostBlockStyle.fromJson(Map<String, dynamic> json) => _$AWPostBlockStyleFromJson(json);

  /// Connect the generated [_$AWPostBlockStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostBlockStyleToJson(this);
}
