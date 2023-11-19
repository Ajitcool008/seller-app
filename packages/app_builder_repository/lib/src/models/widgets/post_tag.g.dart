// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWPostTag _$AWPostTagFromJson(Map<String, dynamic> json) => AWPostTag(
      id: json['id'] as String,
      type: json['type'] as String,
      layout: $enumDecodeNullable(_$AWPostTagLayoutEnumMap, json['layout']) ??
          AWPostTagLayout.wrap,
      fields: AWPostTagFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWPostTagStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWPostTag.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWPostTagToJson(AWPostTag instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'layout': _$AWPostTagLayoutEnumMap[instance.layout]!,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

const _$AWPostTagLayoutEnumMap = {
  AWPostTagLayout.wrap: 'wrap',
  AWPostTagLayout.carousel: 'carousel',
};

AWPostTagFields _$AWPostTagFieldsFromJson(Map<String, dynamic> json) =>
    AWPostTagFields(
      limit: AWPostTagFields.fromJsonLimit(json['limit']),
      height: AWPostTagFields.fromJsonHeight(json['height']),
      borderRadius: AWPostTagFields.fromJsonBorderRadius(json['borderRadius']),
      pad: AWPostTagFields.fromJsonPad(json['pad']),
    );

Map<String, dynamic> _$AWPostTagFieldsToJson(AWPostTagFields instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'height': instance.height,
      'borderRadius': instance.borderRadius,
      'pad': instance.pad,
    };

AWPostTagStyle _$AWPostTagStyleFromJson(Map<String, dynamic> json) =>
    AWPostTagStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      itemColor: AbdColor.fromJson(json['itemColor'] as Map<String, dynamic>),
      itemBackground:
          AbdColor.fromJson(json['itemBackground'] as Map<String, dynamic>),
      itemBorderColor:
          AbdColor.fromJson(json['itemBorderColor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostTagStyleToJson(AWPostTagStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'itemColor': instance.itemColor.toJson(),
      'itemBackground': instance.itemBackground.toJson(),
      'itemBorderColor': instance.itemBorderColor.toJson(),
    };
