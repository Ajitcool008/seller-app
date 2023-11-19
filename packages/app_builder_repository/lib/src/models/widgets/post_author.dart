import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_author.g.dart';

enum AWPostAuthLayout {
  @JsonValue('list')
  list,
  @JsonValue('carousel')
  carousel,
  @JsonValue('grid')
  grid;
}

@JsonSerializable(explicitToJson: true)
class AWPostAuth {
  final String id;

  final String type;

  final AWPostAuthFields fields;

  final AWPostAuthStyle styles;

  @JsonKey(defaultValue: AWPostAuthLayout.list)
  final AWPostAuthLayout layout;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWPostAuth({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWPostAuthFromJson] function to the `fromJson`
  /// factory.
  factory AWPostAuth.fromJson(Map<String, dynamic> json) => _$AWPostAuthFromJson(json);

  /// Connect the generated [_$AWPostAuthToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostAuthToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWPostAuthFields {
  final int? limit;

  final AWPostAuthTemplate template;

  const AWPostAuthFields({this.limit, required this.template});

  /// Connect the generated [_$AWPostAuthFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWPostAuthFields.fromJson(Map<String, dynamic> json) => _$AWPostAuthFieldsFromJson(json);

  /// Connect the generated [_$AWPostAuthFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostAuthFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWPostAuthStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 16)
  final double pad;

  final AbdColor? backgroundTime;

  final AbdColor? borderTime;

  final AbdColor textColor;

  final AbdColor subTextColor;

  final AbdColor? separatorColor;

  @JsonKey(
    fromJson: ConvertData.stringToDoubleCanBeNull,
  )
  final double? padTime;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 300)
  final double height;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 300)
  final double width;

  @JsonKey(fromJson: ConvertData.stringToInt, defaultValue: 2)
  final int col;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 1)
  final double ratio;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 8)
  final double radiusItem;

  final AbdColor shadowColor;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 0)
  final double offsetX;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 4)
  final double offsetY;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 24)
  final double blurRadius;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 0)
  final double spreadRadius;

  final AbdColor backgroundItem;

  const AWPostAuthStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.pad,
    this.backgroundTime,
    this.borderTime,
    required this.textColor,
    this.separatorColor,
    required this.subTextColor,
    this.padTime,
    required this.height,
    required this.width,
    required this.col,
    required this.ratio,
    required this.radiusItem,
    required this.shadowColor,
    required this.spreadRadius,
    required this.blurRadius,
    required this.offsetY,
    required this.offsetX,
    required this.backgroundItem,
  });

  /// Connect the generated [_$AWPostAuthStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWPostAuthStyle.fromJson(Map<String, dynamic> json) => _$AWPostAuthStyleFromJson(json);

  /// Connect the generated [_$AWPostAuthStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostAuthStyleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWPostAuthTemplate {
  final String? template;

  final AWPostAuthTemplateData? data;

  const AWPostAuthTemplate({
    this.template,
    this.data,
  });

  /// Connect the generated [_$AWPostAuthTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWPostAuthTemplate.fromJson(Map<String, dynamic> json) => _$AWPostAuthTemplateFromJson(json);

  /// Connect the generated [_$AWPostAuthTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostAuthTemplateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWPostAuthTemplateData {
  final bool? enableAvatar;

  final bool? enableCount;

  const AWPostAuthTemplateData({
    this.enableAvatar,
    this.enableCount,
  });

  /// Connect the generated [_$AWPostAuthTemplateDataFromJson] function to the `fromJson`
  /// factory.
  factory AWPostAuthTemplateData.fromJson(Map<String, dynamic> json) => _$AWPostAuthTemplateDataFromJson(json);

  /// Connect the generated [_$AWPostAuthTemplateDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostAuthTemplateDataToJson(this);
}
