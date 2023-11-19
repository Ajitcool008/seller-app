// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWVendor _$AWVendorFromJson(Map<String, dynamic> json) => AWVendor(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWVendorFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWVendorStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWVendorLayoutEnumMap, json['layout']) ?? AWVendorLayout.list,
      disable: json['disable'] == null ? false : AWVendor.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWVendorToJson(AWVendor instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'layout': _$AWVendorLayoutEnumMap[instance.layout]!,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

const _$AWVendorLayoutEnumMap = {
  AWVendorLayout.list: 'list',
  AWVendorLayout.carousel: 'carousel',
  AWVendorLayout.grid: 'grid',
};

AWVendorFields _$AWVendorFieldsFromJson(Map<String, dynamic> json) => AWVendorFields(
      categories:
          (json['categories'] as List<dynamic>?)?.map((e) => AbdOption.fromJson(e as Map<String, dynamic>)).toList() ??
              [],
      search: AWVendorFields.fromJsonText(json['search']),
      limit: AWVendorFields.fromJsonLimit(json['limit']),
      enableRating: AWVendorFields.fromJsonBool(json['enableRating']),
      template: AWVendorFields.fromJsonTemplate(json['template']),
    );

Map<String, dynamic> _$AWVendorFieldsToJson(AWVendorFields instance) => <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'search': instance.search.toJson(),
      'limit': instance.limit,
      'enableRating': instance.enableRating,
      'template': instance.template.toJson(),
    };

AWVendorStyle _$AWVendorStyleFromJson(Map<String, dynamic> json) => AWVendorStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      pad: AWVendorStyle.fromJsonPad(json['pad']),
      height: AWVendorStyle.fromJsonHeight(json['height']),
      col: AWVendorStyle.fromJsonColumn(json['col']),
      ratio: AWVendorStyle.fromJsonRatio(json['ratio']),
      widthItem: AWVendorStyle.fromJsonWidthItem(json['widthItem']),
      backgroundColorItem: AbdColor.fromJson(json['backgroundColorItem'] as Map<String, dynamic>),
      textColor: AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
      subTextColor: AbdColor.fromJson(json['subTextColor'] as Map<String, dynamic>),
      radius: AWVendorStyle.fromJsonRadiusItem(json['radius']),
      shadowColor: AbdColor.fromJson(json['shadowColor'] as Map<String, dynamic>),
      offsetX: AWVendorStyle.fromJsonOffsetX(json['offsetX']),
      offsetY: AWVendorStyle.fromJsonOffsetY(json['offsetY']),
      blurRadius: AWVendorStyle.fromJsonBlurRadius(json['blurRadius']),
      spreadRadius: AWVendorStyle.fromJsonSpreadRadius(json['spreadRadius']),
    );

Map<String, dynamic> _$AWVendorStyleToJson(AWVendorStyle instance) => <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'pad': instance.pad,
      'height': instance.height,
      'col': instance.col,
      'ratio': instance.ratio,
      'widthItem': instance.widthItem,
      'backgroundColorItem': instance.backgroundColorItem.toJson(),
      'textColor': instance.textColor.toJson(),
      'subTextColor': instance.subTextColor.toJson(),
      'radius': instance.radius,
      'shadowColor': instance.shadowColor.toJson(),
      'offsetX': instance.offsetX,
      'offsetY': instance.offsetY,
      'blurRadius': instance.blurRadius,
      'spreadRadius': instance.spreadRadius,
    };

AWVendorTemplate _$AWVendorTemplateFromJson(Map<String, dynamic> json) => AWVendorTemplate(
      template: $enumDecode(_$AWVendorTemplateTypeEnumMap, json['template']),
      data: AWVendorTemplate.fromJsonData(json['data']),
    );

Map<String, dynamic> _$AWVendorTemplateToJson(AWVendorTemplate instance) => <String, dynamic>{
      'template': _$AWVendorTemplateTypeEnumMap[instance.template]!,
      'data': instance.data.toJson(),
    };

const _$AWVendorTemplateTypeEnumMap = {
  AWVendorTemplateType.contained: 'contained',
  AWVendorTemplateType.horizontal: 'horizontal',
  AWVendorTemplateType.emerge: 'emerge',
  AWVendorTemplateType.gradient: 'gradient',
};

AWVendorDataTemplate _$AWVendorDataTemplateFromJson(Map<String, dynamic> json) => AWVendorDataTemplate(
      sizeBanner: AWVendorDataTemplate.fromJsonSize(json['sizeBanner']),
      colorBegin: AWVendorDataTemplate.fromJsonAbdColor(json['colorBegin']),
      colorEnd: AWVendorDataTemplate.fromJsonAbdColor(json['colorEnd']),
      begin: AWVendorDataTemplate.fromJsonAlignmentDirectional(json['begin']),
      end: AWVendorDataTemplate.fromJsonAlignmentDirectional(json['end']),
    );

Map<String, dynamic> _$AWVendorDataTemplateToJson(AWVendorDataTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sizeBanner', AWVendorDataTemplate.fromJsonSize(instance.sizeBanner));
  writeNotNull('colorBegin', AWVendorDataTemplate.toJsonAbdColor(instance.colorBegin));
  writeNotNull('colorEnd', AWVendorDataTemplate.toJsonAbdColor(instance.colorEnd));
  writeNotNull('begin', AWVendorDataTemplate.toJsonAlignmentDirectional(instance.begin));
  writeNotNull('end', AWVendorDataTemplate.toJsonAlignmentDirectional(instance.end));
  return val;
}
