// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWVideo _$AWVideoFromJson(Map<String, dynamic> json) => AWVideo(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWVideoFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWVideoStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWVideo.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWVideoToJson(AWVideo instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWVideoFields _$AWVideoFieldsFromJson(Map<String, dynamic> json) =>
    AWVideoFields(
      width: AWVideoFields.fromJsonWidth(json['width']),
      height: AWVideoFields.fromJsonHeight(json['height']),
      url: AWVideoFields.fromJsonText(json['url']),
    );

Map<String, dynamic> _$AWVideoFieldsToJson(AWVideoFields instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'url': instance.url.toJson(),
    };

AWVideoStyle _$AWVideoStyleFromJson(Map<String, dynamic> json) => AWVideoStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWVideoStyleToJson(AWVideoStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };
