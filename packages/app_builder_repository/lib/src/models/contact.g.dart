// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWContact _$AWContactFromJson(Map<String, dynamic> json) => AWContact(
      widgets: AWWidgets.fromJson(json['widgets'] as Map<String, dynamic>),
      action: json['action'] == null
          ? null
          : AbdAction.fromJson(json['action'] as Map<String, dynamic>),
      fieldId: json['fieldId'] as String?,
    );

Map<String, dynamic> _$AWContactToJson(AWContact instance) {
  final val = <String, dynamic>{
    'fieldId': instance.fieldId,
    'widgets': instance.widgets.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action?.toJson());
  return val;
}

AWWidgets _$AWWidgetsFromJson(Map<String, dynamic> json) => AWWidgets(
      contactPage: json['contactPage'] == null
          ? null
          : AWContactPage.fromJson(json['contactPage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWWidgetsToJson(AWWidgets instance) => <String, dynamic>{
      'contactPage': instance.contactPage?.toJson(),
    };

AWContactPage _$AWContactPageFromJson(Map<String, dynamic> json) =>
    AWContactPage(
      fields: AWContactFields.fromJson(json['fields'] as Map<String, dynamic>),
      id: json['id'] as String?,
      type: json['type'] as String?,
      layout: json['layout'] as String?,
    );

Map<String, dynamic> _$AWContactPageToJson(AWContactPage instance) =>
    <String, dynamic>{
      'fields': instance.fields.toJson(),
      'id': instance.id,
      'type': instance.type,
      'layout': instance.layout,
    };

AWContactFields _$AWContactFieldsFromJson(Map<String, dynamic> json) =>
    AWContactFields(
      enablePinMap: AWContactFields.fromJsonBoolTrue(json['enablePinMap']),
      enableFeedback: AWContactFields.fromJsonBoolTrue(json['enableFeedback']),
      enableDirectMap:
          AWContactFields.fromJsonBoolTrue(json['enableDirectMap']),
      image: AWContactFields.fromJsonImage(json['image']),
      formId: json['formId'] as String?,
      itemsCustomize: (json['itemsCustomize'] as List<dynamic>?)
              ?.map((e) =>
                  AWContactItemsCustomize.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      mapType: json['mapType'] as String?,
    );

Map<String, dynamic> _$AWContactFieldsToJson(AWContactFields instance) =>
    <String, dynamic>{
      'enablePinMap': instance.enablePinMap,
      'enableFeedback': instance.enableFeedback,
      'enableDirectMap': instance.enableDirectMap,
      'itemsCustomize':
          instance.itemsCustomize?.map((e) => e.toJson()).toList(),
      'image': instance.image.toJson(),
      'mapType': instance.mapType,
      'formId': instance.formId,
    };

AWContactItemsCustomize _$AWContactItemsCustomizeFromJson(
        Map<String, dynamic> json) =>
    AWContactItemsCustomize(
      template: json['template'] as String,
      data:
          AWContactDataTemplate.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWContactItemsCustomizeToJson(
        AWContactItemsCustomize instance) =>
    <String, dynamic>{
      'template': instance.template,
      'data': instance.data.toJson(),
    };

AWContactDataTemplate _$AWContactDataTemplateFromJson(
        Map<String, dynamic> json) =>
    AWContactDataTemplate(
      titleHeading: json['titleHeading'] == null
          ? null
          : AbdText.fromJson(json['titleHeading'] as Map<String, dynamic>),
      iconPhone: json['iconPhone'] == null
          ? null
          : AbdIcon.fromJson(json['iconPhone'] as Map<String, dynamic>),
      titlePhone: json['titlePhone'] == null
          ? null
          : AbdText.fromJson(json['titlePhone'] as Map<String, dynamic>),
      iconMail: json['iconMail'] == null
          ? null
          : AbdIcon.fromJson(json['iconMail'] as Map<String, dynamic>),
      titleEmail: json['titleEmail'] == null
          ? null
          : AbdText.fromJson(json['titleEmail'] as Map<String, dynamic>),
      iconAddress: json['iconAddress'] == null
          ? null
          : AbdIcon.fromJson(json['iconAddress'] as Map<String, dynamic>),
      titleAddress: json['titleAddress'] == null
          ? null
          : AbdText.fromJson(json['titleAddress'] as Map<String, dynamic>),
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      bearing: json['bearing'] as String?,
      titl: json['titl'] as String?,
      zoom: json['zoom'] as String?,
    );

Map<String, dynamic> _$AWContactDataTemplateToJson(
    AWContactDataTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('titleHeading', instance.titleHeading?.toJson());
  writeNotNull('iconPhone', instance.iconPhone?.toJson());
  writeNotNull('titlePhone', instance.titlePhone?.toJson());
  writeNotNull('iconMail', instance.iconMail?.toJson());
  writeNotNull('titleEmail', instance.titleEmail?.toJson());
  writeNotNull('titleAddress', instance.titleAddress?.toJson());
  writeNotNull('iconAddress', instance.iconAddress?.toJson());
  val['lat'] = instance.lat;
  val['lng'] = instance.lng;
  val['bearing'] = instance.bearing;
  val['titl'] = instance.titl;
  val['zoom'] = instance.zoom;
  return val;
}
