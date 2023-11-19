// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSearch _$AWSearchFromJson(Map<String, dynamic> json) => AWSearch(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWSearchFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWSearchStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWSearch.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWSearchToJson(AWSearch instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWSearchFields _$AWSearchFieldsFromJson(Map<String, dynamic> json) =>
    AWSearchFields(
      placeholder:
          AbdText.fromJson(json['placeholder'] as Map<String, dynamic>),
      enableIcon: AWSearchFields.fromJsonBoolTrue(json['enableIcon']),
      icon: AbdIcon.fromJson(json['icon'] as Map<String, dynamic>),
      enableIconLeft: AWSearchFields.fromJsonBoolTrue(json['enableIconLeft']),
      enableScan: AWSearchFields.fromJsonBoolNull(json['enableScan']),
      enableScanLeft: AWSearchFields.fromJsonBoolNull(json['enableScanLeft']),
    );

Map<String, dynamic> _$AWSearchFieldsToJson(AWSearchFields instance) {
  final val = <String, dynamic>{
    'placeholder': instance.placeholder.toJson(),
    'enableIcon': instance.enableIcon,
    'icon': instance.icon.toJson(),
    'enableIconLeft': instance.enableIconLeft,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enableScan', instance.enableScan);
  writeNotNull('enableScanLeft', instance.enableScanLeft);
  return val;
}

AWSearchStyle _$AWSearchStyleFromJson(Map<String, dynamic> json) =>
    AWSearchStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      backgroundColorInput: AbdColor.fromJson(
          json['backgroundColorInput'] as Map<String, dynamic>),
      borderColorInput:
          AbdColor.fromJson(json['borderColorInput'] as Map<String, dynamic>),
      iconColorInput:
          AbdColor.fromJson(json['iconColorInput'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWSearchStyleToJson(AWSearchStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'backgroundColorInput': instance.backgroundColorInput.toJson(),
      'borderColorInput': instance.borderColorInput.toJson(),
      'iconColorInput': instance.iconColorInput.toJson(),
    };
