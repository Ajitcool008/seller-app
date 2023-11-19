import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'search.g.dart';

@JsonSerializable(explicitToJson: true)
class AWSearch {
  final String id;

  final String type;

  final AWSearchFields fields;

  final AWSearchStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWSearch({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWSearchFromJson] function to the `fromJson`
  /// factory.
  factory AWSearch.fromJson(Map<String, dynamic> json) => _$AWSearchFromJson(json);

  /// Connect the generated [_$AWSearchToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSearchToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Search fields config
@JsonSerializable(explicitToJson: true)
class AWSearchFields {
  final AbdText placeholder;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableIcon;

  final AbdIcon icon;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableIconLeft;

  @JsonKey(fromJson: fromJsonBoolNull, includeIfNull: false)
  final bool? enableScan;

  @JsonKey(fromJson: fromJsonBoolNull, includeIfNull: false)
  final bool? enableScanLeft;

  const AWSearchFields(
      {required this.placeholder,
      required this.enableIcon,
      required this.icon,
      required this.enableIconLeft,
      this.enableScan,
      this.enableScanLeft});

  /// Connect the generated [_$AWSearchFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWSearchFields.fromJson(Map<String, dynamic> json) => _$AWSearchFieldsFromJson(json);

  /// Connect the generated [_$AWSearchFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSearchFieldsToJson(this);

  static bool fromJsonBoolTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static bool? fromJsonBoolNull(dynamic value) {
    return ConvertData.toBoolValue(value);
  }
}

/// Search style
@JsonSerializable(explicitToJson: true)
class AWSearchStyle {
  final AbdSpacing padding;
  final AbdSpacing margin;
  final AbdColor background;
  final AbdColor backgroundColorInput;
  final AbdColor borderColorInput;
  final AbdColor iconColorInput;

  const AWSearchStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.backgroundColorInput,
    required this.borderColorInput,
    required this.iconColorInput,
  });

  /// Connect the generated [_$AWSearchStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWSearchStyle.fromJson(Map<String, dynamic> json) => _$AWSearchStyleFromJson(json);

  /// Connect the generated [_$AWSearchStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSearchStyleToJson(this);
}
