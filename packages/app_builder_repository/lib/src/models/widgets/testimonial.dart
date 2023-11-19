import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'testimonial.g.dart';

enum AWTestimonialTemplateType {
  @JsonValue('default')
  defaultTestimonial,
  @JsonValue('style2')
  style2Testimonial,
}

@JsonSerializable(explicitToJson: true)
class AWTestimonial {
  final String id;

  final String type;

  final AWTestimonialFields fields;

  final AWTestimonialStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWTestimonial({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWTestimonialFromJson] function to the `fromJson`
  /// factory.
  factory AWTestimonial.fromJson(Map<String, dynamic> json) => _$AWTestimonialFromJson(json);

  /// Connect the generated [_$AWTestimonialToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTestimonialToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Testimonial fields config
@JsonSerializable(explicitToJson: true)
class AWTestimonialFields {
  final AbdColor backgroundItem;

  @JsonKey(fromJson: fromJsonRadius)
  final double radius;

  @JsonKey(fromJson: fromJsonPad)
  final double pad;

  @JsonKey(defaultValue: [])
  final List<AWTestimonialTemplate> items;

  const AWTestimonialFields({
    required this.backgroundItem,
    required this.radius,
    required this.pad,
    required this.items,
  });

  /// Connect the generated [_$AWTestimonialFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWTestimonialFields.fromJson(Map<String, dynamic> json) => _$AWTestimonialFieldsFromJson(json);

  /// Connect the generated [_$AWTestimonialFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTestimonialFieldsToJson(this);

  static double fromJsonRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value, 16);
  }
}

/// Testimonial style
@JsonSerializable(explicitToJson: true)
class AWTestimonialStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  const AWTestimonialStyle({
    required this.padding,
    required this.margin,
    required this.background,
  });

  /// Connect the generated [_$AWTestimonialStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWTestimonialStyle.fromJson(Map<String, dynamic> json) => _$AWTestimonialStyleFromJson(json);

  /// Connect the generated [_$AWTestimonialStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTestimonialStyleToJson(this);
}

/// Testimonial template item
@JsonSerializable(explicitToJson: true)
class AWTestimonialTemplate {
  final AWTestimonialTemplateType template;

  final AWTestimonialDataTemplate data;

  const AWTestimonialTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWTestimonialTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWTestimonialTemplate.fromJson(Map<String, dynamic> json) => _$AWTestimonialTemplateFromJson(json);

  /// Connect the generated [_$AWTestimonialTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTestimonialTemplateToJson(this);
}

/// Testimonial data template item
@JsonSerializable(explicitToJson: true)
class AWTestimonialDataTemplate {
  @JsonKey(fromJson: fromJsonImage)
  final AbdImage image;

  final AbdText title;

  final AbdText description;

  @JsonKey(includeIfNull: false)
  final AbdText? subtitle;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableRating;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? rating;

  const AWTestimonialDataTemplate({
    required this.image,
    required this.title,
    required this.description,
    this.subtitle,
    this.enableRating,
    this.rating,
  });

  /// Connect the generated [_$AWTestimonialDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWTestimonialDataTemplate.fromJson(Map<String, dynamic> json) => _$AWTestimonialDataTemplateFromJson(json);

  /// Connect the generated [_$AWTestimonialDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWTestimonialDataTemplateToJson(this);

  static AbdImage fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return AbdImage.fromJson({});
  }
}
