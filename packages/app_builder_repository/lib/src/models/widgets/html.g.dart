// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'html.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWHtml _$AWHtmlFromJson(Map<String, dynamic> json) => AWHtml(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWHtmlFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWHtmlStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWHtml.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWHtmlToJson(AWHtml instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWHtmlFields _$AWHtmlFieldsFromJson(Map<String, dynamic> json) => AWHtmlFields(
      html: AbdText.fromJson(json['html'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWHtmlFieldsToJson(AWHtmlFields instance) =>
    <String, dynamic>{
      'html': instance.html.toJson(),
    };

AWHtmlStyle _$AWHtmlStyleFromJson(Map<String, dynamic> json) => AWHtmlStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWHtmlStyleToJson(AWHtmlStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };
