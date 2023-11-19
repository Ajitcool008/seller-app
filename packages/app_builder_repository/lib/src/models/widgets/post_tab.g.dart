// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWPostTab _$AWPostTabFromJson(Map<String, dynamic> json) => AWPostTab(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWPostTabFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AbdPostStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: json['layout'] as String,
      disable: json['disable'] == null
          ? false
          : AWPostTab.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWPostTabToJson(AWPostTab instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'layout': instance.layout,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWPostTabFields _$AWPostTabFieldsFromJson(Map<String, dynamic> json) =>
    AWPostTabFields(
      enableDrawer: AWPostTabFields.fromJsonDrawer(json['enableDrawer']),
      pad: AWPostTabFields.fromJsonPad(json['pad']),
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => AWPostTabTemplate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      post: AWPostTabFields.fromJsonListOption(json['post']),
      categories: AWPostTabFields.fromJsonListOption(json['categories']),
      tags: AWPostTabFields.fromJsonListOption(json['tags']),
      search: json['search'] == null
          ? null
          : AbdText.fromJson(json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostTabFieldsToJson(AWPostTabFields instance) =>
    <String, dynamic>{
      'enableDrawer': instance.enableDrawer,
      'pad': instance.pad,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'post': instance.post.map((e) => e.toJson()).toList(),
      'search': instance.search?.toJson(),
    };

AWPostTabTemplate _$AWPostTabTemplateFromJson(Map<String, dynamic> json) =>
    AWPostTabTemplate(
      template: json['template'] as String,
      data: AbdPostField.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostTabTemplateToJson(AWPostTabTemplate instance) =>
    <String, dynamic>{
      'template': instance.template,
      'data': instance.data.toJson(),
    };
