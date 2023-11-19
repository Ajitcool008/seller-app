// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWPostComment _$AWPostCommentFromJson(Map<String, dynamic> json) =>
    AWPostComment(
      id: json['id'] as String,
      type: json['type'] as String,
      fields:
          AWPostCommentFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles:
          AWPostCommentStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWPostComment.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWPostCommentToJson(AWPostComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWPostCommentFields _$AWPostCommentFieldsFromJson(Map<String, dynamic> json) =>
    AWPostCommentFields(
      enableAvatar: AWPostCommentFields.fromJsonBoolTrue(json['enableAvatar']),
      enableDate: AWPostCommentFields.fromJsonBoolTrue(json['enableDate']),
      enableExcerpt:
          AWPostCommentFields.fromJsonBoolTrue(json['enableExcerpt']),
      limit: AWPostCommentFields.fromJsonLimit(json['limit']),
    );

Map<String, dynamic> _$AWPostCommentFieldsToJson(
        AWPostCommentFields instance) =>
    <String, dynamic>{
      'enableAvatar': instance.enableAvatar,
      'enableDate': instance.enableDate,
      'enableExcerpt': instance.enableExcerpt,
      'limit': instance.limit,
    };

AWPostCommentStyle _$AWPostCommentStyleFromJson(Map<String, dynamic> json) =>
    AWPostCommentStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostCommentStyleToJson(AWPostCommentStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };
