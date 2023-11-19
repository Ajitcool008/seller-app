// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWPostBlock _$AWPostBlockFromJson(Map<String, dynamic> json) => AWPostBlock(
      id: json['id'] as String,
      type: json['type'] as String,
      fields:
          AWPostBlockFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWPostBlockStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWPostBlock.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWPostBlockToJson(AWPostBlock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWPostBlockFields _$AWPostBlockFieldsFromJson(Map<String, dynamic> json) =>
    AWPostBlockFields(
      post: AbdOption.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostBlockFieldsToJson(AWPostBlockFields instance) =>
    <String, dynamic>{
      'post': instance.post.toJson(),
    };

AWPostBlockStyle _$AWPostBlockStyleFromJson(Map<String, dynamic> json) =>
    AWPostBlockStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostBlockStyleToJson(AWPostBlockStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };
