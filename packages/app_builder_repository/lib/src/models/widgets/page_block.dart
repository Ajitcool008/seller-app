import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'page_block.g.dart';

@JsonSerializable(explicitToJson: true)
class AWPageBlock {
  final String id;

  final String type;

  final AWPageBlockFields fields;

  final AWPageBlockStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWPageBlock({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWPageBlockFromJson] function to the `fromJson`
  /// factory.
  factory AWPageBlock.fromJson(Map<String, dynamic> json) => _$AWPageBlockFromJson(json);

  /// Connect the generated [_$AWPageBlockToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPageBlockToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Page block fields config
@JsonSerializable(explicitToJson: true)
class AWPageBlockFields {
  final AbdOption page;

  const AWPageBlockFields({required this.page});

  /// Connect the generated [_$AWPageBlockFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWPageBlockFields.fromJson(Map<String, dynamic> json) => _$AWPageBlockFieldsFromJson(json);

  /// Connect the generated [_$AWPageBlockFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPageBlockFieldsToJson(this);
}

/// Page block style
@JsonSerializable(explicitToJson: true)
class AWPageBlockStyle {
  final AbdSpacing padding;
  final AbdSpacing margin;
  final AbdColor background;

  const AWPageBlockStyle({required this.padding, required this.margin, required this.background});

  /// Connect the generated [_$AWPageBlockStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWPageBlockStyle.fromJson(Map<String, dynamic> json) => _$AWPageBlockStyleFromJson(json);

  /// Connect the generated [_$AWPageBlockStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPageBlockStyleToJson(this);
}
