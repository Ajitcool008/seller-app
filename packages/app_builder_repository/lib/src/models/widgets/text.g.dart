// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWText _$AWTextFromJson(Map<String, dynamic> json) => AWText(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWTextFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWTextStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWText.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWTextToJson(AWText instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWTextFields _$AWTextFieldsFromJson(Map<String, dynamic> json) => AWTextFields(
      title: AbdText.fromJson(json['title'] as Map<String, dynamic>),
      alignment: ConvertData.toTextAlign(json['alignment'] as String),
      action: AbdAction.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWTextFieldsToJson(AWTextFields instance) =>
    <String, dynamic>{
      'title': instance.title.toJson(),
      'alignment': _$TextAlignEnumMap[instance.alignment]!,
      'action': instance.action.toJson(),
    };

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};

AWTextStyle _$AWTextStyleFromJson(Map<String, dynamic> json) => AWTextStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWTextStyleToJson(AWTextStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };
