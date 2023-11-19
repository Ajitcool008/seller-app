// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWBanner _$AWBannerFromJson(Map<String, dynamic> json) => AWBanner(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWBannerFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWBannerStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWBannerLayoutEnumMap, json['layout']) ?? AWBannerLayout.list,
      disable: json['disable'] == null ? false : AWBanner.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWBannerToJson(AWBanner instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'layout': _$AWBannerLayoutEnumMap[instance.layout]!,
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

const _$AWBannerLayoutEnumMap = {
  AWBannerLayout.list: 'list',
  AWBannerLayout.carousel: 'carousel',
  AWBannerLayout.masonry: 'masonry',
  AWBannerLayout.slideshow: 'slideshow',
  AWBannerLayout.grid: 'grid',
  AWBannerLayout.multi: 'multi',
  AWBannerLayout.one: 'one',
};

AWBannerFields _$AWBannerFieldsFromJson(Map<String, dynamic> json) => AWBannerFields(
      size: AWBannerFields.fromJsonSize(json['size']),
      enableScaleWidth: AWBannerFields.fromJsonScale(json['enableScaleWidth']),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => AWBannerTemplate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AWBannerFieldsToJson(AWBannerFields instance) => <String, dynamic>{
      'size': ConvertData.toMapSize(instance.size),
      'enableScaleWidth': instance.enableScaleWidth,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

AWBannerStyle _$AWBannerStyleFromJson(Map<String, dynamic> json) => AWBannerStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      backgroundImage: AWBannerStyle.fromJsonImage(json['backgroundImage']),
      pad: AWBannerStyle.fromJsonPad(json['pad']),
      height: AWBannerStyle.fromJsonHeight(json['height']),
      col: AWBannerStyle.fromJsonColumn(json['col']),
      ratio: AWBannerStyle.fromJsonRatio(json['ratio']),
      indicatorColor:
          json['indicatorColor'] == null ? null : AbdColor.fromJson(json['indicatorColor'] as Map<String, dynamic>),
      indicatorActiveColor: json['indicatorActiveColor'] == null
          ? null
          : AbdColor.fromJson(json['indicatorActiveColor'] as Map<String, dynamic>),
      backgroundItem: json['backgroundColorItem'] == null
          ? null
          : AbdColor.fromJson(json['backgroundColorItem'] as Map<String, dynamic>),
      radiusItem: AWBannerStyle.fromJsonRadiusItem(json['radius']),
    );

Map<String, dynamic> _$AWBannerStyleToJson(AWBannerStyle instance) => <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'backgroundImage': instance.backgroundImage.toJson(),
      'pad': instance.pad,
      'height': instance.height,
      'col': instance.col,
      'ratio': instance.ratio,
      'indicatorColor': instance.indicatorColor?.toJson(),
      'indicatorActiveColor': instance.indicatorActiveColor?.toJson(),
      'backgroundColorItem': instance.backgroundItem?.toJson(),
      'radius': instance.radiusItem,
    };

AWBannerTemplate _$AWBannerTemplateFromJson(Map<String, dynamic> json) => AWBannerTemplate(
      template: $enumDecode(_$AWBannerTemplateTypeEnumMap, json['template']),
      data: AWBannerDataTemplate.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWBannerTemplateToJson(AWBannerTemplate instance) => <String, dynamic>{
      'template': _$AWBannerTemplateTypeEnumMap[instance.template]!,
      'data': instance.data.toJson(),
    };

const _$AWBannerTemplateTypeEnumMap = {
  AWBannerTemplateType.defaultBanner: 'default',
  AWBannerTemplateType.style1Banner: 'style1',
  AWBannerTemplateType.style2Banner: 'style2',
  AWBannerTemplateType.style3Banner: 'style3',
  AWBannerTemplateType.style4Banner: 'style4',
  AWBannerTemplateType.style5Banner: 'style5',
  AWBannerTemplateType.style6Banner: 'style6',
  AWBannerTemplateType.style7Banner: 'style7',
  AWBannerTemplateType.style8Banner: 'style8',
  AWBannerTemplateType.style9Banner: 'style9',
};

AWBannerDataTemplate _$AWBannerDataTemplateFromJson(Map<String, dynamic> json) => AWBannerDataTemplate(
      image: AWBannerDataTemplate.fromJsonImage(json['image']),
      imageSize: ConvertData.toBoxFit(json['imageSize'] as String?),
      action: AbdAction.fromJson(json['action'] as Map<String, dynamic>),
      alignment: json['alignment'] as String?,
      text1: json['text1'] == null ? null : AbdText.fromJson(json['text1'] as Map<String, dynamic>),
      text2: json['text2'] == null ? null : AbdText.fromJson(json['text2'] as Map<String, dynamic>),
      text3: json['text3'] == null ? null : AbdText.fromJson(json['text3'] as Map<String, dynamic>),
      textButton: json['textButton'] == null ? null : AbdText.fromJson(json['textButton'] as Map<String, dynamic>),
      radiusImage: ConvertData.stringToDoubleCanBeNull(json['radiusImage']),
      enableRoundImage: ConvertData.toBoolValue(json['enableRoundImage']),
      enableButton: ConvertData.toBoolValue(json['enableButton']),
    );

Map<String, dynamic> _$AWBannerDataTemplateToJson(AWBannerDataTemplate instance) {
  final val = <String, dynamic>{
    'alignment': instance.alignment,
    'image': instance.image.toJson(),
    'imageSize': _$BoxFitEnumMap[instance.imageSize]!,
    'action': instance.action.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text1', instance.text1?.toJson());
  writeNotNull('text2', instance.text2?.toJson());
  writeNotNull('text3', instance.text3?.toJson());
  writeNotNull('textButton', instance.textButton?.toJson());
  writeNotNull('enableButton', instance.enableButton);
  writeNotNull('radiusImage', instance.radiusImage);
  writeNotNull('enableRoundImage', instance.enableRoundImage);
  return val;
}

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
};
