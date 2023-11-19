import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'html.g.dart';

@JsonSerializable(explicitToJson: true)
class AWHtml {
  final String id;

  final String type;

  final AWHtmlFields fields;

  final AWHtmlStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWHtml({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWHtmlFromJson] function to the `fromJson`
  /// factory.
  factory AWHtml.fromJson(Map<String, dynamic> json) => _$AWHtmlFromJson(json);

  /// Connect the generated [_$AWHtmlToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWHtmlToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Html fields config
@JsonSerializable(explicitToJson: true)
class AWHtmlFields {
  final AbdText html;

  const AWHtmlFields({required this.html});

  /// Connect the generated [_$AWHtmlFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWHtmlFields.fromJson(Map<String, dynamic> json) => _$AWHtmlFieldsFromJson(json);

  /// Connect the generated [_$AWHtmlFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWHtmlFieldsToJson(this);
}

/// Html style
@JsonSerializable(explicitToJson: true)
class AWHtmlStyle {
  final AbdSpacing padding;
  final AbdSpacing margin;
  final AbdColor background;

  const AWHtmlStyle({required this.padding, required this.margin, required this.background});

  /// Connect the generated [_$AWHtmlStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWHtmlStyle.fromJson(Map<String, dynamic> json) => _$AWHtmlStyleFromJson(json);

  /// Connect the generated [_$AWHtmlStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWHtmlStyleToJson(this);
}
