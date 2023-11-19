// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWBrand _$AWBrandFromJson(Map<String, dynamic> json) => AWBrand(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWBrandFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWBrandStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWBrandLayoutEnumMap, json['layout']) ??
          AWBrandLayout.list,
      disable: json['disable'] == null
          ? false
          : AWBrand.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWBrandToJson(AWBrand instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'layout': _$AWBrandLayoutEnumMap[instance.layout]!,
      'disable': instance.disable,
    };

const _$AWBrandLayoutEnumMap = {
  AWBrandLayout.list: 'list',
  AWBrandLayout.carousel: 'carousel',
  AWBrandLayout.masonry: 'masonry',
  AWBrandLayout.bigFirst: 'big-first',
  AWBrandLayout.slideshow: 'slideshow',
  AWBrandLayout.grid: 'grid',
};

AWBrandFields _$AWBrandFieldsFromJson(Map<String, dynamic> json) =>
    AWBrandFields(
      template:
          AWBrandTemplate.fromJson(json['template'] as Map<String, dynamic>),
      limit: ConvertData.stringToInt(json['limit']),
    );

Map<String, dynamic> _$AWBrandFieldsToJson(AWBrandFields instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'template': instance.template.toJson(),
    };

AWBrandStyle _$AWBrandStyleFromJson(Map<String, dynamic> json) => AWBrandStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      pad: json['pad'] == null ? 16 : ConvertData.stringToDouble(json['pad']),
      height: ConvertData.stringToDoubleCanBeNull(json['height']),
      dividerWidth: json['dividerWidth'] == null
          ? 1
          : ConvertData.stringToDouble(json['dividerWidth']),
      dividerColor:
          AbdColor.fromJson(json['dividerColor'] as Map<String, dynamic>),
      col: ConvertData.stringToInt(json['col']),
      radius: ConvertData.stringToDoubleCanBeNull(json['radius']),
      indicatorActiveColor: AbdColor.fromJson(
          json['indicatorActiveColor'] as Map<String, dynamic>),
      indicatorColor:
          AbdColor.fromJson(json['indicatorColor'] as Map<String, dynamic>),
      ratio: ConvertData.stringToDouble(json['ratio']),
      shadowColor:
          AbdColor.fromJson(json['shadowColor'] as Map<String, dynamic>),
      spreadRadius: ConvertData.stringToDoubleCanBeNull(json['spreadRadius']),
      blurRadius: ConvertData.stringToDoubleCanBeNull(json['blurRadius']),
      offsetY: ConvertData.stringToDoubleCanBeNull(json['offsetY']),
      offsetX: ConvertData.stringToDoubleCanBeNull(json['offsetX']),
      width: ConvertData.stringToDoubleCanBeNull(json['width']),
      backgroundItem:
          AbdColor.fromJson(json['backgroundItem'] as Map<String, dynamic>),
      paddingContent: json['paddingContent'] == null
          ? null
          : AbdSpacing.fromJson(json['paddingContent'] as Map<String, dynamic>),
      textItem: AbdColor.fromJson(json['textItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWBrandStyleToJson(AWBrandStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'pad': instance.pad,
      'dividerWidth': instance.dividerWidth,
      'height': instance.height,
      'width': instance.width,
      'ratio': instance.ratio,
      'col': instance.col,
      'dividerColor': instance.dividerColor.toJson(),
      'indicatorColor': instance.indicatorColor.toJson(),
      'indicatorActiveColor': instance.indicatorActiveColor.toJson(),
      'backgroundItem': instance.backgroundItem.toJson(),
      'textItem': instance.textItem.toJson(),
      'shadowColor': instance.shadowColor.toJson(),
      'paddingContent': instance.paddingContent?.toJson(),
      'radius': instance.radius,
      'offsetX': instance.offsetX,
      'offsetY': instance.offsetY,
      'blurRadius': instance.blurRadius,
      'spreadRadius': instance.spreadRadius,
    };

AWBrandTemplate _$AWBrandTemplateFromJson(Map<String, dynamic> json) =>
    AWBrandTemplate(
      template: json['template'] as String? ?? 'default',
      data: AWBrandTemplateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWBrandTemplateToJson(AWBrandTemplate instance) =>
    <String, dynamic>{
      'template': instance.template,
      'data': instance.data.toJson(),
    };

AWBrandTemplateData _$AWBrandTemplateDataFromJson(Map<String, dynamic> json) =>
    AWBrandTemplateData(
      opacityColor: json['opacityColor'] == null
          ? null
          : AbdColor.fromJson(json['opacityColor'] as Map<String, dynamic>),
      imageSize: json['imageSize'] as String?,
      opacity: ConvertData.stringToDoubleCanBeNull(json['opacity']),
      enableName: json['enableName'] as bool?,
      alignment: $enumDecodeNullable(_$AbdAlignmentEnumMap, json['alignment']),
      enableImage: json['enableImage'] as bool?,
    );

Map<String, dynamic> _$AWBrandTemplateDataToJson(
        AWBrandTemplateData instance) =>
    <String, dynamic>{
      'imageSize': instance.imageSize,
      'alignment': _$AbdAlignmentEnumMap[instance.alignment],
      'enableName': instance.enableName,
      'opacity': instance.opacity,
      'opacityColor': instance.opacityColor?.toJson(),
      'enableImage': instance.enableImage,
    };

const _$AbdAlignmentEnumMap = {
  AbdAlignment.center: 'center',
  AbdAlignment.left: 'left',
  AbdAlignment.right: 'right',
  AbdAlignment.justify: 'justify',
  AbdAlignment.end: 'end',
  AbdAlignment.start: 'start',
};
