import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_tab.g.dart';

@JsonSerializable(explicitToJson: true)
class AWPostTab {
  final String id;

  final String type;

  final String layout;

  final AWPostTabFields fields;

  final AbdPostStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWPostTab({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWPostTabFromJson] function to the `fromJson`
  /// factory.
  factory AWPostTab.fromJson(Map<String, dynamic> json) => _$AWPostTabFromJson(json);

  /// Connect the generated [_$AWPostTabToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostTabToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Post tab fields config
@JsonSerializable(explicitToJson: true)
class AWPostTabFields {
  @JsonKey(fromJson: fromJsonDrawer)
  final bool enableDrawer;

  @JsonKey(fromJson: fromJsonPad)
  final double pad;

  @JsonKey(defaultValue: [])
  final List<AWPostTabTemplate> items;

  @JsonKey(fromJson: fromJsonListOption)
  final List<AbdOption> tags;

  @JsonKey(fromJson: fromJsonListOption)
  final List<AbdOption> categories;

  @JsonKey(fromJson: fromJsonListOption)
  final List<AbdOption> post;

  final AbdText? search;

  const AWPostTabFields({
    required this.enableDrawer,
    required this.pad,
    required this.items,
    required this.post,
    required this.categories,
    required this.tags,
    required this.search,
  });

  /// Connect the generated [_$AWPostTabFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWPostTabFields.fromJson(Map<String, dynamic> json) => _$AWPostTabFieldsFromJson(json);

  /// Connect the generated [_$AWPostTabFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostTabFieldsToJson(this);

  static bool fromJsonDrawer(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value ?? 12);
  }

  static List<AbdOption> fromJsonListOption(dynamic value) {
    if (value is List<AbdOption>) {
      return value;
    }

    List<AbdOption> data = [];
    if (value is List) {
      for (int i = 0; i < value.length; i++) {
        if (value[i] is Map) {
          data.add(AbdOption.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value[i])));
        }
      }
    }
    return [];
  }
}

/// Post tab template item
@JsonSerializable(explicitToJson: true)
class AWPostTabTemplate {
  final String template;

  final AbdPostField data;

  const AWPostTabTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWPostTabTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWPostTabTemplate.fromJson(Map<String, dynamic> json) => _$AWPostTabTemplateFromJson(json);

  /// Connect the generated [_$AWPostTabTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostTabTemplateToJson(this);
}
