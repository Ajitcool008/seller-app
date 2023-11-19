import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'video.g.dart';

@JsonSerializable(explicitToJson: true)
class AWVideo {
  final String id;

  final String type;

  final AWVideoFields fields;

  final AWVideoStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWVideo({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWVideoFromJson] function to the `fromJson`
  /// factory.
  factory AWVideo.fromJson(Map<String, dynamic> json) => _$AWVideoFromJson(json);

  /// Connect the generated [_$AWVideoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVideoToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWVideoFields {
  @JsonKey(fromJson: fromJsonWidth)
  final double width;

  @JsonKey(fromJson: fromJsonHeight)
  final double height;

  @JsonKey(fromJson: fromJsonText)
  final AbdText url;

  const AWVideoFields({required this.width, required this.height, required this.url});

  /// Connect the generated [_$AWVideoFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWVideoFields.fromJson(Map<String, dynamic> json) => _$AWVideoFieldsFromJson(json);

  /// Connect the generated [_$AWVideoFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVideoFieldsToJson(this);

  static double fromJsonWidth(dynamic value) {
    return ConvertData.stringToDouble(value, 600);
  }

  static double fromJsonHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 200);
  }

  static AbdText fromJsonText(dynamic value) {
    if (value is Map) {
      return AbdText.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return AbdText.fromJson({});
  }
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWVideoStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  const AWVideoStyle({required this.padding, required this.margin, required this.background});

  /// Connect the generated [_$AWVideoStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWVideoStyle.fromJson(Map<String, dynamic> json) => _$AWVideoStyleFromJson(json);

  /// Connect the generated [_$AWVideoStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVideoStyleToJson(this);
}
