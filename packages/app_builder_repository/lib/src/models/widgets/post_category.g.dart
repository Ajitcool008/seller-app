// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWPostCategory _$AWPostCategoryFromJson(Map<String, dynamic> json) =>
    AWPostCategory(
      id: json['id'] as String,
      type: json['type'] as String,
      fields:
          AWPostCategoryFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles:
          AWPostCategoryStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout:
          $enumDecodeNullable(_$AWPostCategoryLayoutEnumMap, json['layout']) ??
              AWPostCategoryLayout.list,
      disable: json['disable'] == null
          ? false
          : AWPostCategory.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWPostCategoryToJson(AWPostCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'layout': _$AWPostCategoryLayoutEnumMap[instance.layout]!,
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

const _$AWPostCategoryLayoutEnumMap = {
  AWPostCategoryLayout.list: 'list',
  AWPostCategoryLayout.carousel: 'carousel',
  AWPostCategoryLayout.masonry: 'masonry',
  AWPostCategoryLayout.bigFirst: 'big-first',
  AWPostCategoryLayout.slideshow: 'slideshow',
  AWPostCategoryLayout.grid: 'grid',
};

AWPostCategoryFields _$AWPostCategoryFieldsFromJson(
        Map<String, dynamic> json) =>
    AWPostCategoryFields(
      taxonomy: json['taxonomy'] as String? ?? 'categories',
      limit: AWPostCategoryFields.fromJsonLimit(json['limit']),
      template: AWPostCategoryFields.fromJsonTemplate(json['template']),
    );

Map<String, dynamic> _$AWPostCategoryFieldsToJson(
        AWPostCategoryFields instance) =>
    <String, dynamic>{
      'taxonomy': instance.taxonomy,
      'limit': instance.limit,
      'template': instance.template.toJson(),
    };

AWPostCategoryStyle _$AWPostCategoryStyleFromJson(Map<String, dynamic> json) =>
    AWPostCategoryStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      pad: AWPostCategoryStyle.fromJsonPad(json['pad']),
      col: AWPostCategoryStyle.fromJsonColumn(json['col']),
      ratio: AWPostCategoryStyle.fromJsonRatio(json['ratio']),
      height: AWPostCategoryStyle.fromJsonHeight(json['height']),
      heightImage: AWPostCategoryStyle.fromJsonHeightImage(json['heightImage']),
      indicatorColor:
          AbdColor.fromJson(json['indicatorColor'] as Map<String, dynamic>),
      indicatorActiveColor: AbdColor.fromJson(
          json['indicatorActiveColor'] as Map<String, dynamic>),
      backgroundItem:
          AbdColor.fromJson(json['backgroundItem'] as Map<String, dynamic>),
      textColor: AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
      labelColor: AbdColor.fromJson(json['labelColor'] as Map<String, dynamic>),
      labelTextColor:
          AbdColor.fromJson(json['labelTextColor'] as Map<String, dynamic>),
      labelRadius: AWPostCategoryStyle.fromJsonLabelRadius(json['labelRadius']),
      radius: AWPostCategoryStyle.fromJsonRadius(json['radius']),
      radiusImage: AWPostCategoryStyle.fromJsonImageRadius(json['radiusImage']),
    );

Map<String, dynamic> _$AWPostCategoryStyleToJson(
        AWPostCategoryStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'pad': instance.pad,
      'col': instance.col,
      'ratio': instance.ratio,
      'height': instance.height,
      'heightImage': instance.heightImage,
      'indicatorColor': instance.indicatorColor.toJson(),
      'indicatorActiveColor': instance.indicatorActiveColor.toJson(),
      'backgroundItem': instance.backgroundItem.toJson(),
      'textColor': instance.textColor.toJson(),
      'labelColor': instance.labelColor.toJson(),
      'labelTextColor': instance.labelTextColor.toJson(),
      'labelRadius': instance.labelRadius,
      'radius': instance.radius,
      'radiusImage': instance.radiusImage,
    };

AWPostCategoryTemplate _$AWPostCategoryTemplateFromJson(
        Map<String, dynamic> json) =>
    AWPostCategoryTemplate(
      template: $enumDecodeNullable(
              _$AWPostCategoryTemplateTypeEnumMap, json['template']) ??
          AWPostCategoryTemplateType.contained,
      data: AWPostCategoryTemplate._fromJsonData(json['data']),
    );

Map<String, dynamic> _$AWPostCategoryTemplateToJson(
        AWPostCategoryTemplate instance) =>
    <String, dynamic>{
      'template': _$AWPostCategoryTemplateTypeEnumMap[instance.template]!,
      'data': instance.data.toJson(),
    };

const _$AWPostCategoryTemplateTypeEnumMap = {
  AWPostCategoryTemplateType.contained: 'contained',
  AWPostCategoryTemplateType.horizontal: 'horizontal',
  AWPostCategoryTemplateType.gradient: 'gradient',
  AWPostCategoryTemplateType.parallax: 'parallax',
};

AWPostCategoryDataTemplate _$AWPostCategoryDataTemplateFromJson(
        Map<String, dynamic> json) =>
    AWPostCategoryDataTemplate(
      enableCount: ConvertData.toBoolValue(json['enableCount']),
      enableRoundImage: ConvertData.toBoolValue(json['enableRoundImage']),
      colorBegin: AWPostCategoryDataTemplate.fromJsonColor(json['colorBegin']),
      colorEnd: AWPostCategoryDataTemplate.fromJsonColor(json['colorEnd']),
      begin: AWPostCategoryDataTemplate.fromJsonAlignment(json['begin']),
      end: AWPostCategoryDataTemplate.fromJsonAlignment(json['end']),
      opacity: ConvertData.stringToDoubleCanBeNull(json['opacity']),
    );

Map<String, dynamic> _$AWPostCategoryDataTemplateToJson(
    AWPostCategoryDataTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enableCount', instance.enableCount);
  writeNotNull('enableRoundImage', instance.enableRoundImage);
  writeNotNull('colorBegin', instance.colorBegin?.toJson());
  writeNotNull('colorEnd', instance.colorEnd?.toJson());
  writeNotNull(
      'begin', AWPostCategoryDataTemplate.toJsonAlignment(instance.begin));
  writeNotNull('end', AWPostCategoryDataTemplate.toJsonAlignment(instance.end));
  writeNotNull('opacity', instance.opacity);
  return val;
}
