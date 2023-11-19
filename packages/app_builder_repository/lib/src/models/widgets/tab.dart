import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'tab.g.dart';

@JsonSerializable(explicitToJson: true)
class AWTab {
  final String id;

  final String type;

  final AWTabFields fields;

  final AWTabStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWTab({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWTabFromJson] function to the `fromJson`
  /// factory.
  factory AWTab.fromJson(Map<String, dynamic> json) => _$AWTabFromJson(json);

  /// Connect the generated [_$AWTabToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTabToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Tab fields config
@JsonSerializable(explicitToJson: true)
class AWTabFields {
  @JsonKey(defaultValue: [])
  final List<AWTabTemplate> items;

  const AWTabFields({required this.items});

  /// Connect the generated [_$AWTabFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWTabFields.fromJson(Map<String, dynamic> json) => _$AWTabFieldsFromJson(json);

  /// Connect the generated [_$AWTabFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTabFieldsToJson(this);
}

/// Tab style
@JsonSerializable(explicitToJson: true)
class AWTabStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  final AbdColor tabColor;

  final AbdColor selectTabColor;

  @JsonKey(fromJson: fromJsonHeight)
  final double contentHeight;

  final AbdColor contentTextColor;

  const AWTabStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.tabColor,
    required this.selectTabColor,
    required this.contentHeight,
    required this.contentTextColor,
  });

  /// Connect the generated [_$AWTabStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWTabStyle.fromJson(Map<String, dynamic> json) => _$AWTabStyleFromJson(json);

  /// Connect the generated [_$AWTabStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTabStyleToJson(this);

  static double fromJsonHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 300);
  }
}

/// Banner template item
@JsonSerializable(explicitToJson: true)
class AWTabTemplate {
  final String template;

  final AWTabDataTemplate data;

  const AWTabTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWTabTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWTabTemplate.fromJson(Map<String, dynamic> json) => _$AWTabTemplateFromJson(json);

  /// Connect the generated [_$AWTabTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTabTemplateToJson(this);
}

/// Banner data template item
@JsonSerializable(explicitToJson: true)
class AWTabDataTemplate {
  final AbdText title;

  final AbdText content;

  const AWTabDataTemplate({
    required this.title,
    required this.content,
  });

  /// Connect the generated [_$AWTabDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWTabDataTemplate.fromJson(Map<String, dynamic> json) => _$AWTabDataTemplateFromJson(json);

  /// Connect the generated [_$AWTabDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTabDataTemplateToJson(this);
}
