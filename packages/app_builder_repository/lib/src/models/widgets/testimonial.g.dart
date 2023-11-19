// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testimonial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWTestimonial _$AWTestimonialFromJson(Map<String, dynamic> json) =>
    AWTestimonial(
      id: json['id'] as String,
      type: json['type'] as String,
      fields:
          AWTestimonialFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles:
          AWTestimonialStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWTestimonial.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWTestimonialToJson(AWTestimonial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWTestimonialFields _$AWTestimonialFieldsFromJson(Map<String, dynamic> json) =>
    AWTestimonialFields(
      backgroundItem:
          AbdColor.fromJson(json['backgroundItem'] as Map<String, dynamic>),
      radius: AWTestimonialFields.fromJsonRadius(json['radius']),
      pad: AWTestimonialFields.fromJsonPad(json['pad']),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  AWTestimonialTemplate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AWTestimonialFieldsToJson(
        AWTestimonialFields instance) =>
    <String, dynamic>{
      'backgroundItem': instance.backgroundItem.toJson(),
      'radius': instance.radius,
      'pad': instance.pad,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

AWTestimonialStyle _$AWTestimonialStyleFromJson(Map<String, dynamic> json) =>
    AWTestimonialStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWTestimonialStyleToJson(AWTestimonialStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };

AWTestimonialTemplate _$AWTestimonialTemplateFromJson(
        Map<String, dynamic> json) =>
    AWTestimonialTemplate(
      template:
          $enumDecode(_$AWTestimonialTemplateTypeEnumMap, json['template']),
      data: AWTestimonialDataTemplate.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWTestimonialTemplateToJson(
        AWTestimonialTemplate instance) =>
    <String, dynamic>{
      'template': _$AWTestimonialTemplateTypeEnumMap[instance.template]!,
      'data': instance.data.toJson(),
    };

const _$AWTestimonialTemplateTypeEnumMap = {
  AWTestimonialTemplateType.defaultTestimonial: 'default',
  AWTestimonialTemplateType.style2Testimonial: 'style2',
};

AWTestimonialDataTemplate _$AWTestimonialDataTemplateFromJson(
        Map<String, dynamic> json) =>
    AWTestimonialDataTemplate(
      image: AWTestimonialDataTemplate.fromJsonImage(json['image']),
      title: AbdText.fromJson(json['title'] as Map<String, dynamic>),
      description:
          AbdText.fromJson(json['description'] as Map<String, dynamic>),
      subtitle: json['subtitle'] == null
          ? null
          : AbdText.fromJson(json['subtitle'] as Map<String, dynamic>),
      enableRating: ConvertData.toBoolValue(json['enableRating']),
      rating: ConvertData.stringToDoubleCanBeNull(json['rating']),
    );

Map<String, dynamic> _$AWTestimonialDataTemplateToJson(
    AWTestimonialDataTemplate instance) {
  final val = <String, dynamic>{
    'image': instance.image.toJson(),
    'title': instance.title.toJson(),
    'description': instance.description.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subtitle', instance.subtitle?.toJson());
  writeNotNull('enableRating', instance.enableRating);
  writeNotNull('rating', instance.rating);
  return val;
}
