// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSocials _$AWSocialsFromJson(Map<String, dynamic> json) => AWSocials(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWSocialsFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWSocialsStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWSocials.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWSocialsToJson(AWSocials instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWSocialsFields _$AWSocialsFieldsFromJson(Map<String, dynamic> json) =>
    AWSocialsFields(
      alignment: $enumDecode(_$AbdAlignmentEnumMap, json['alignment']),
      pad: json['pad'] == null ? 0 : ConvertData.stringToDouble(json['pad']),
      socials: (json['socials'] as List<dynamic>)
          .map((e) => AWSocialsDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AWSocialsFieldsToJson(AWSocialsFields instance) =>
    <String, dynamic>{
      'alignment': _$AbdAlignmentEnumMap[instance.alignment]!,
      'pad': instance.pad,
      'socials': instance.socials.map((e) => e.toJson()).toList(),
    };

const _$AbdAlignmentEnumMap = {
  AbdAlignment.center: 'center',
  AbdAlignment.left: 'left',
  AbdAlignment.right: 'right',
  AbdAlignment.justify: 'justify',
  AbdAlignment.end: 'end',
  AbdAlignment.start: 'start',
};

AWSocialsStyle _$AWSocialsStyleFromJson(Map<String, dynamic> json) =>
    AWSocialsStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWSocialsStyleToJson(AWSocialsStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };

AWSocialsDataItem _$AWSocialsDataItemFromJson(Map<String, dynamic> json) =>
    AWSocialsDataItem(
      template: json['template'] as String? ?? 'default',
      data: AWSocialsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWSocialsDataItemToJson(AWSocialsDataItem instance) =>
    <String, dynamic>{
      'template': instance.template,
      'data': instance.data.toJson(),
    };

AWSocialsData _$AWSocialsDataFromJson(Map<String, dynamic> json) =>
    AWSocialsData(
      icon: AbdIcon.fromJson(json['icon'] as Map<String, dynamic>),
      backgroundColor:
          AbdColor.fromJson(json['backgroundColor'] as Map<String, dynamic>),
      iconColor: AbdColor.fromJson(json['iconColor'] as Map<String, dynamic>),
      linkSocial: AbdText.fromJson(json['linkSocial'] as Map<String, dynamic>),
      enableRound: AWSocialsData.fromJsonEnableRound(json['enableRound']),
      enableOutLine:
          AWSocialsData.fromJsonEnableOutLinen(json['enableOutLine']),
    );

Map<String, dynamic> _$AWSocialsDataToJson(AWSocialsData instance) =>
    <String, dynamic>{
      'icon': instance.icon.toJson(),
      'backgroundColor': instance.backgroundColor.toJson(),
      'iconColor': instance.iconColor.toJson(),
      'linkSocial': instance.linkSocial.toJson(),
      'enableRound': instance.enableRound,
      'enableOutLine': instance.enableOutLine,
    };
