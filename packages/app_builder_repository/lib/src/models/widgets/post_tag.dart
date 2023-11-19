import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_tag.g.dart';

enum AWPostTagLayout {
  @JsonValue('wrap')
  wrap,
  @JsonValue('carousel')
  carousel,
}

@JsonSerializable(explicitToJson: true)
class AWPostTag {
  final String id;

  final String type;

  @JsonKey(defaultValue: AWPostTagLayout.wrap)
  final AWPostTagLayout layout;

  final AWPostTagFields fields;

  final AWPostTagStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWPostTag({
    required this.id,
    required this.type,
    required this.layout,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWPostTagFromJson] function to the `fromJson`
  /// factory.
  factory AWPostTag.fromJson(Map<String, dynamic> json) => _$AWPostTagFromJson(json);

  /// Connect the generated [_$AWPostTagToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostTagToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Post tag fields config
@JsonSerializable(explicitToJson: true)
class AWPostTagFields {
  @JsonKey(fromJson: fromJsonLimit)
  final int limit;

  @JsonKey(fromJson: fromJsonHeight)
  final double height;

  @JsonKey(fromJson: fromJsonBorderRadius)
  final double borderRadius;

  @JsonKey(fromJson: fromJsonPad)
  final double pad;

  const AWPostTagFields({
    required this.limit,
    required this.height,
    required this.borderRadius,
    required this.pad,
  });

  /// Connect the generated [_$AWPostTagFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWPostTagFields.fromJson(Map<String, dynamic> json) => _$AWPostTagFieldsFromJson(json);

  /// Connect the generated [_$AWPostTagFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostTagFieldsToJson(this);

  static int fromJsonLimit(dynamic value) {
    return ConvertData.stringToInt(value, 5);
  }

  static double fromJsonHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 34);
  }

  static double fromJsonBorderRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 5);
  }

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }
}

/// Post tag style
@JsonSerializable(explicitToJson: true)
class AWPostTagStyle {
  final AbdSpacing padding;
  final AbdSpacing margin;
  final AbdColor background;
  final AbdColor itemColor;
  final AbdColor itemBackground;
  final AbdColor itemBorderColor;

  const AWPostTagStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.itemColor,
    required this.itemBackground,
    required this.itemBorderColor,
  });

  /// Connect the generated [_$AWPostTagStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWPostTagStyle.fromJson(Map<String, dynamic> json) => _$AWPostTagStyleFromJson(json);

  /// Connect the generated [_$AWPostTagStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostTagStyleToJson(this);
}
