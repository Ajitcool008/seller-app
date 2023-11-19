import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_archive.g.dart';

@JsonSerializable(explicitToJson: true)
class AWPostArchive {
  final String id;

  final String type;

  final AWPostArchiveFields fields;

  final AWPostArchiveStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWPostArchive({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWPostArchiveFromJson] function to the `fromJson`
  /// factory.
  factory AWPostArchive.fromJson(Map<String, dynamic> json) => _$AWPostArchiveFromJson(json);

  /// Connect the generated [_$AWPostArchiveToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostArchiveToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWPostArchiveFields {
  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool enableIconArchives;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool enableCount;

  const AWPostArchiveFields({required this.enableIconArchives, required this.enableCount});

  /// Connect the generated [_$AWPostArchiveFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWPostArchiveFields.fromJson(Map<String, dynamic> json) => _$AWPostArchiveFieldsFromJson(json);

  /// Connect the generated [_$AWPostArchiveFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostArchiveFieldsToJson(this);

  static bool fromJsonBoolFalse(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWPostArchiveStyle {
  final AbdSpacing padding;
  final AbdSpacing margin;
  final AbdColor background;

  const AWPostArchiveStyle({required this.padding, required this.margin, required this.background});

  /// Connect the generated [_$AWPostArchiveStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWPostArchiveStyle.fromJson(Map<String, dynamic> json) => _$AWPostArchiveStyleFromJson(json);

  /// Connect the generated [_$AWPostArchiveStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostArchiveStyleToJson(this);
}
