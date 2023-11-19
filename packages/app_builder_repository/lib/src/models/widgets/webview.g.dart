// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWWebView _$AWWebViewFromJson(Map<String, dynamic> json) => AWWebView(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWWebViewFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWWebViewStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWWebView.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWWebViewToJson(AWWebView instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWWebViewFields _$AWWebViewFieldsFromJson(Map<String, dynamic> json) =>
    AWWebViewFields(
      height: json['height'] == null
          ? 200
          : ConvertData.stringToDouble(json['height']),
      url: AbdText.fromJson(json['url'] as Map<String, dynamic>),
      syncAuth: json['syncAuth'] as bool? ?? false,
      syncAuthWebToApp: json['syncAuthWebToApp'] as bool? ?? false,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => AWWebViewItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AWWebViewFieldsToJson(AWWebViewFields instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url.toJson(),
      'syncAuth': instance.syncAuth,
      'syncAuthWebToApp': instance.syncAuthWebToApp,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

AWWebViewStyle _$AWWebViewStyleFromJson(Map<String, dynamic> json) =>
    AWWebViewStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWWebViewStyleToJson(AWWebViewStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };

AWWebViewItem _$AWWebViewItemFromJson(Map<String, dynamic> json) =>
    AWWebViewItem(
      template: json['template'] as String? ?? 'default',
      data: json['data'] == null
          ? null
          : AWWebViewItemData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWWebViewItemToJson(AWWebViewItem instance) =>
    <String, dynamic>{
      'template': instance.template,
      'data': instance.data?.toJson(),
    };

AWWebViewItemData _$AWWebViewItemDataFromJson(Map<String, dynamic> json) =>
    AWWebViewItemData(
      condition:
          $enumDecodeNullable(_$AWWebViewConditionEnumMap, json['condition']) ??
              AWWebViewCondition.noCondition,
      value: json['value'] as String?,
      action: json['action'] == null
          ? null
          : AbdAction.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWWebViewItemDataToJson(AWWebViewItemData instance) =>
    <String, dynamic>{
      'condition': _$AWWebViewConditionEnumMap[instance.condition]!,
      'value': instance.value,
      'action': instance.action?.toJson(),
    };

const _$AWWebViewConditionEnumMap = {
  AWWebViewCondition.noCondition: 'no_condition',
  AWWebViewCondition.urlStart: 'url_start',
  AWWebViewCondition.urlEnd: 'url_end',
  AWWebViewCondition.equalTo: 'equal_to',
  AWWebViewCondition.urlContain: 'url_contain',
};
