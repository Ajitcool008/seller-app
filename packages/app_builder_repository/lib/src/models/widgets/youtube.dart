import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'youtube.g.dart';

@JsonSerializable(explicitToJson: true)
class AWYoutube {
  final String id;

  final String type;

  final AWYoutubeFields fields;

  final AWYoutubeStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWYoutube({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWYoutubeFromJson] function to the `fromJson`
  /// factory.
  factory AWYoutube.fromJson(Map<String, dynamic> json) => _$AWYoutubeFromJson(json);

  /// Connect the generated [_$AWYoutubeToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWYoutubeToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWYoutubeFields {
  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 315)
  final double height;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 560)
  final double width;

  final AbdText url;

  const AWYoutubeFields({
    required this.height,
    required this.width,
    required this.url,
  });

  /// Connect the generated [_$AWYoutubeFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWYoutubeFields.fromJson(Map<String, dynamic> json) => _$AWYoutubeFieldsFromJson(json);

  /// Connect the generated [_$AWYoutubeFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWYoutubeFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWYoutubeStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  const AWYoutubeStyle({
    required this.padding,
    required this.margin,
    required this.background,
  });

  /// Connect the generated [_$AWYoutubeStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWYoutubeStyle.fromJson(Map<String, dynamic> json) => _$AWYoutubeStyleFromJson(json);

  /// Connect the generated [_$AWYoutubeStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWYoutubeStyleToJson(this);
}
