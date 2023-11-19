// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWTab _$AWTabFromJson(Map<String, dynamic> json) => AWTab(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWTabFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWTabStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWTab.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWTabToJson(AWTab instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWTabFields _$AWTabFieldsFromJson(Map<String, dynamic> json) => AWTabFields(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => AWTabTemplate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AWTabFieldsToJson(AWTabFields instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

AWTabStyle _$AWTabStyleFromJson(Map<String, dynamic> json) => AWTabStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      tabColor: AbdColor.fromJson(json['tabColor'] as Map<String, dynamic>),
      selectTabColor:
          AbdColor.fromJson(json['selectTabColor'] as Map<String, dynamic>),
      contentHeight: AWTabStyle.fromJsonHeight(json['contentHeight']),
      contentTextColor:
          AbdColor.fromJson(json['contentTextColor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWTabStyleToJson(AWTabStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'tabColor': instance.tabColor.toJson(),
      'selectTabColor': instance.selectTabColor.toJson(),
      'contentHeight': instance.contentHeight,
      'contentTextColor': instance.contentTextColor.toJson(),
    };

AWTabTemplate _$AWTabTemplateFromJson(Map<String, dynamic> json) =>
    AWTabTemplate(
      template: json['template'] as String,
      data: AWTabDataTemplate.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWTabTemplateToJson(AWTabTemplate instance) =>
    <String, dynamic>{
      'template': instance.template,
      'data': instance.data.toJson(),
    };

AWTabDataTemplate _$AWTabDataTemplateFromJson(Map<String, dynamic> json) =>
    AWTabDataTemplate(
      title: AbdText.fromJson(json['title'] as Map<String, dynamic>),
      content: AbdText.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWTabDataTemplateToJson(AWTabDataTemplate instance) =>
    <String, dynamic>{
      'title': instance.title.toJson(),
      'content': instance.content.toJson(),
    };
