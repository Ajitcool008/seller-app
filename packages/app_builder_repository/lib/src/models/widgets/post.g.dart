// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWPost _$AWPostFromJson(Map<String, dynamic> json) => AWPost(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AbdPostField.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AbdPostStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AbdPostLayoutEnumMap, json['layout']) ??
          AbdPostLayout.list,
      disable: json['disable'] == null
          ? false
          : AWPost.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWPostToJson(AWPost instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'layout': _$AbdPostLayoutEnumMap[instance.layout]!,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

const _$AbdPostLayoutEnumMap = {
  AbdPostLayout.list: 'list',
  AbdPostLayout.carousel: 'carousel',
  AbdPostLayout.masonry: 'masonry',
  AbdPostLayout.bigFirst: 'big-first',
  AbdPostLayout.slideshow: 'slideshow',
};
