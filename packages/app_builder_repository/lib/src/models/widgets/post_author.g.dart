// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWPostAuth _$AWPostAuthFromJson(Map<String, dynamic> json) => AWPostAuth(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWPostAuthFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWPostAuthStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWPostAuthLayoutEnumMap, json['layout']) ?? AWPostAuthLayout.list,
      disable: json['disable'] == null ? false : AWPostAuth.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWPostAuthToJson(AWPostAuth instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'layout': _$AWPostAuthLayoutEnumMap[instance.layout]!,
      'disable': instance.disable,
    };

const _$AWPostAuthLayoutEnumMap = {
  AWPostAuthLayout.list: 'list',
  AWPostAuthLayout.carousel: 'carousel',
  AWPostAuthLayout.grid: 'grid',
};

AWPostAuthFields _$AWPostAuthFieldsFromJson(Map<String, dynamic> json) => AWPostAuthFields(
      limit: json['limit'] as int?,
      template: AWPostAuthTemplate.fromJson(json['template'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostAuthFieldsToJson(AWPostAuthFields instance) => <String, dynamic>{
      'limit': instance.limit,
      'template': instance.template.toJson(),
    };

AWPostAuthStyle _$AWPostAuthStyleFromJson(Map<String, dynamic> json) => AWPostAuthStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      pad: json['pad'] == null ? 16 : ConvertData.stringToDouble(json['pad']),
      backgroundTime:
          json['backgroundTime'] == null ? null : AbdColor.fromJson(json['backgroundTime'] as Map<String, dynamic>),
      borderTime: json['borderTime'] == null ? null : AbdColor.fromJson(json['borderTime'] as Map<String, dynamic>),
      textColor: AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
      separatorColor:
          json['separatorColor'] == null ? null : AbdColor.fromJson(json['separatorColor'] as Map<String, dynamic>),
      subTextColor: AbdColor.fromJson(json['subTextColor'] as Map<String, dynamic>),
      padTime: ConvertData.stringToDoubleCanBeNull(json['padTime']),
      height: json['height'] == null ? 300 : ConvertData.stringToDouble(json['height']),
      width: json['width'] == null ? 300 : ConvertData.stringToDouble(json['width']),
      col: json['col'] == null ? 2 : ConvertData.stringToInt(json['col']),
      ratio: json['ratio'] == null ? 1 : ConvertData.stringToDouble(json['ratio']),
      radiusItem: json['radiusItem'] == null ? 8 : ConvertData.stringToDouble(json['radiusItem']),
      shadowColor: AbdColor.fromJson(json['shadowColor'] as Map<String, dynamic>),
      spreadRadius: json['spreadRadius'] == null ? 0 : ConvertData.stringToDouble(json['spreadRadius']),
      blurRadius: json['blurRadius'] == null ? 24 : ConvertData.stringToDouble(json['blurRadius']),
      offsetY: json['offsetY'] == null ? 4 : ConvertData.stringToDouble(json['offsetY']),
      offsetX: json['offsetX'] == null ? 0 : ConvertData.stringToDouble(json['offsetX']),
      backgroundItem: AbdColor.fromJson(json['backgroundItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostAuthStyleToJson(AWPostAuthStyle instance) => <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'pad': instance.pad,
      'backgroundTime': instance.backgroundTime?.toJson(),
      'borderTime': instance.borderTime?.toJson(),
      'textColor': instance.textColor.toJson(),
      'subTextColor': instance.subTextColor.toJson(),
      'separatorColor': instance.separatorColor?.toJson(),
      'padTime': instance.padTime,
      'height': instance.height,
      'width': instance.width,
      'col': instance.col,
      'ratio': instance.ratio,
      'radiusItem': instance.radiusItem,
      'shadowColor': instance.shadowColor.toJson(),
      'offsetX': instance.offsetX,
      'offsetY': instance.offsetY,
      'blurRadius': instance.blurRadius,
      'spreadRadius': instance.spreadRadius,
      'backgroundItem': instance.backgroundItem.toJson(),
    };

AWPostAuthTemplate _$AWPostAuthTemplateFromJson(Map<String, dynamic> json) => AWPostAuthTemplate(
      template: json['template'] as String?,
      data: json['data'] == null ? null : AWPostAuthTemplateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostAuthTemplateToJson(AWPostAuthTemplate instance) => <String, dynamic>{
      'template': instance.template,
      'data': instance.data?.toJson(),
    };

AWPostAuthTemplateData _$AWPostAuthTemplateDataFromJson(Map<String, dynamic> json) => AWPostAuthTemplateData(
      enableAvatar: json['enableAvatar'] as bool?,
      enableCount: json['enableCount'] as bool?,
    );

Map<String, dynamic> _$AWPostAuthTemplateDataToJson(AWPostAuthTemplateData instance) => <String, dynamic>{
      'enableAvatar': instance.enableAvatar,
      'enableCount': instance.enableCount,
    };
