// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWPageBlock _$AWPageBlockFromJson(Map<String, dynamic> json) => AWPageBlock(
      id: json['id'] as String,
      type: json['type'] as String,
      fields:
          AWPageBlockFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWPageBlockStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWPageBlock.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWPageBlockToJson(AWPageBlock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWPageBlockFields _$AWPageBlockFieldsFromJson(Map<String, dynamic> json) =>
    AWPageBlockFields(
      page: AbdOption.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPageBlockFieldsToJson(AWPageBlockFields instance) =>
    <String, dynamic>{
      'page': instance.page.toJson(),
    };

AWPageBlockStyle _$AWPageBlockStyleFromJson(Map<String, dynamic> json) =>
    AWPageBlockStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPageBlockStyleToJson(AWPageBlockStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };
