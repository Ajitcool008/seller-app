// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sidebar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSidebar _$AWSidebarFromJson(Map<String, dynamic> json) => AWSidebar(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWSidebarFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWSidebarStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWSidebarLayoutEnumMap, json['layout']) ??
          AWSidebarLayout.defaultSidebar,
    );

Map<String, dynamic> _$AWSidebarToJson(AWSidebar instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'layout': _$AWSidebarLayoutEnumMap[instance.layout]!,
      'styles': instance.styles.toJson(),
    };

const _$AWSidebarLayoutEnumMap = {
  AWSidebarLayout.defaultSidebar: 'default',
  AWSidebarLayout.style1: 'style1',
  AWSidebarLayout.style2: 'style2',
  AWSidebarLayout.style3: 'style3',
  AWSidebarLayout.style4: 'style4',
  AWSidebarLayout.style5: 'style5',
  AWSidebarLayout.style6: 'style6',
  AWSidebarLayout.style7: 'style7',
  AWSidebarLayout.style8: 'style8',
  AWSidebarLayout.style9: 'style9',
};

AWSidebarFields _$AWSidebarFieldsFromJson(Map<String, dynamic> json) =>
    AWSidebarFields(
      enableHeaderSidebar:
          AWSidebarFields.fromJsonBoolTrue(json['enableHeaderSidebar']),
      alignHeader: json['alignHeader'] as String,
      enableCategory: AWSidebarFields.fromJsonBoolTrue(json['enableCategory']),
      alignCategory: json['alignCategory'] as String,
      titleCategory:
          AbdText.fromJson(json['titleCategory'] as Map<String, dynamic>),
      showHierarchy: AWSidebarFields.fromJsonBoolTrue(json['showHierarchy']),
      depth: AWSidebarFields.fromJsonDepth(json['depth']),
      enableCount: AWSidebarFields.fromJsonBoolFalse(json['enableCount']),
      enableImageCategory:
          AWSidebarFields.fromJsonBoolFalse(json['enableImageCategory']),
      includeCategory: (json['includeCategory'] as List<dynamic>?)
              ?.map((e) => AbdOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      excludeCategory: (json['excludeCategory'] as List<dynamic>?)
              ?.map((e) => AbdOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      enableCustomize:
          AWSidebarFields.fromJsonBoolTrue(json['enableCustomize']),
      alignCustomize: json['alignCustomize'] as String,
      enableIconCustomize:
          AWSidebarFields.fromJsonBoolTrue(json['enableIconCustomize']),
      titleCustomize:
          AbdText.fromJson(json['titleCustomize'] as Map<String, dynamic>),
      itemsCustomize: (json['itemsCustomize'] as List<dynamic>?)
              ?.map((e) => AWSidebarTemplateCustomize.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AWSidebarFieldsToJson(AWSidebarFields instance) =>
    <String, dynamic>{
      'enableHeaderSidebar': instance.enableHeaderSidebar,
      'alignHeader': instance.alignHeader,
      'enableCategory': instance.enableCategory,
      'alignCategory': instance.alignCategory,
      'titleCategory': instance.titleCategory.toJson(),
      'showHierarchy': instance.showHierarchy,
      'depth': instance.depth,
      'enableCount': instance.enableCount,
      'enableImageCategory': instance.enableImageCategory,
      'includeCategory':
          instance.includeCategory.map((e) => e.toJson()).toList(),
      'excludeCategory':
          instance.excludeCategory.map((e) => e.toJson()).toList(),
      'enableCustomize': instance.enableCustomize,
      'alignCustomize': instance.alignCustomize,
      'enableIconCustomize': instance.enableIconCustomize,
      'titleCustomize': instance.titleCustomize.toJson(),
      'itemsCustomize': instance.itemsCustomize.map((e) => e.toJson()).toList(),
    };

AWSidebarStyle _$AWSidebarStyleFromJson(Map<String, dynamic> json) =>
    AWSidebarStyle(
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      color: AbdColor.fromJson(json['color'] as Map<String, dynamic>),
      borderColor:
          AbdColor.fromJson(json['borderColor'] as Map<String, dynamic>),
      enableImageBg:
          AWSidebarStyle.fromJsonEnableImageBg(json['enableImageBg']),
      imageBg: json['imageBg'] as String,
    );

Map<String, dynamic> _$AWSidebarStyleToJson(AWSidebarStyle instance) =>
    <String, dynamic>{
      'background': instance.background.toJson(),
      'color': instance.color.toJson(),
      'borderColor': instance.borderColor.toJson(),
      'enableImageBg': instance.enableImageBg,
      'imageBg': instance.imageBg,
    };

AWSidebarTemplateCustomize _$AWSidebarTemplateCustomizeFromJson(
        Map<String, dynamic> json) =>
    AWSidebarTemplateCustomize(
      template: json['template'] as String,
      data:
          AWSidebarDataTemplate.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWSidebarTemplateCustomizeToJson(
        AWSidebarTemplateCustomize instance) =>
    <String, dynamic>{
      'template': instance.template,
      'data': instance.data.toJson(),
    };

AWSidebarDataTemplate _$AWSidebarDataTemplateFromJson(
        Map<String, dynamic> json) =>
    AWSidebarDataTemplate(
      icon: json['icon'] == null
          ? null
          : AbdIcon.fromJson(json['icon'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : AbdText.fromJson(json['title'] as Map<String, dynamic>),
      action: json['action'] == null
          ? null
          : AbdAction.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWSidebarDataTemplateToJson(
    AWSidebarDataTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('icon', instance.icon?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('action', instance.action?.toJson());
  return val;
}
