// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWCountdown _$AWCountdownFromJson(Map<String, dynamic> json) => AWCountdown(
      id: json['id'] as String,
      type: json['type'] as String,
      fields:
          AWCountdownFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWCountdownStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWCountdownLayoutEnumMap, json['layout']) ??
          AWCountdownLayout.horizontal,
      disable: json['disable'] == null
          ? false
          : AWCountdown.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWCountdownToJson(AWCountdown instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'layout': _$AWCountdownLayoutEnumMap[instance.layout]!,
      'disable': instance.disable,
    };

const _$AWCountdownLayoutEnumMap = {
  AWCountdownLayout.horizontal: 'horizontal',
  AWCountdownLayout.vertical: 'vertical',
};

AWCountdownFields _$AWCountdownFieldsFromJson(Map<String, dynamic> json) =>
    AWCountdownFields(
      expireDate: json['expireDate'] as String?,
      enableDay: json['enableDay'] as bool? ?? true,
      enableHour: json['enableHour'] as bool? ?? true,
      enableMinute: json['enableMinute'] as bool? ?? true,
      enableSecond: json['enableSecond'] as bool? ?? true,
      action: AbdAction.fromJson(json['action'] as Map<String, dynamic>),
      alignment: $enumDecodeNullable(_$AbdAlignmentEnumMap, json['alignment']),
      title: AbdText.fromJson(json['title'] as Map<String, dynamic>),
      enableSeparator: json['enableSeparator'] as bool? ?? true,
    );

Map<String, dynamic> _$AWCountdownFieldsToJson(AWCountdownFields instance) =>
    <String, dynamic>{
      'title': instance.title.toJson(),
      'expireDate': instance.expireDate,
      'enableDay': instance.enableDay,
      'enableHour': instance.enableHour,
      'enableMinute': instance.enableMinute,
      'enableSecond': instance.enableSecond,
      'action': instance.action.toJson(),
      'alignment': _$AbdAlignmentEnumMap[instance.alignment],
      'enableSeparator': instance.enableSeparator,
    };

const _$AbdAlignmentEnumMap = {
  AbdAlignment.center: 'center',
  AbdAlignment.left: 'left',
  AbdAlignment.right: 'right',
  AbdAlignment.justify: 'justify',
  AbdAlignment.end: 'end',
  AbdAlignment.start: 'start',
};

AWCountdownStyle _$AWCountdownStyleFromJson(Map<String, dynamic> json) =>
    AWCountdownStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      pad: json['pad'] == null ? 16 : ConvertData.stringToDouble(json['pad']),
      backgroundTime:
          AbdColor.fromJson(json['backgroundTime'] as Map<String, dynamic>),
      borderTime: AbdColor.fromJson(json['borderTime'] as Map<String, dynamic>),
      textColor: AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
      separatorColor:
          AbdColor.fromJson(json['separatorColor'] as Map<String, dynamic>),
      padTime: json['padTime'] == null
          ? 12
          : ConvertData.stringToDouble(json['padTime']),
    );

Map<String, dynamic> _$AWCountdownStyleToJson(AWCountdownStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'pad': instance.pad,
      'backgroundTime': instance.backgroundTime.toJson(),
      'borderTime': instance.borderTime.toJson(),
      'textColor': instance.textColor.toJson(),
      'separatorColor': instance.separatorColor.toJson(),
      'padTime': instance.padTime,
    };
