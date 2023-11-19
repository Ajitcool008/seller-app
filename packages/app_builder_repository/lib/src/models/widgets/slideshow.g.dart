// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slideshow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSlideshow _$AWSlideshowFromJson(Map<String, dynamic> json) => AWSlideshow(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWSlideshowFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWSlideshowStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWSlideshowLayoutEnumMap, json['layout']) ?? AWSlideshowLayout.basic,
      disable: json['disable'] == null ? false : AWSlideshow.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWSlideshowToJson(AWSlideshow instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'layout': _$AWSlideshowLayoutEnumMap[instance.layout]!,
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

const _$AWSlideshowLayoutEnumMap = {
  AWSlideshowLayout.basic: 'basic',
  AWSlideshowLayout.centerMode: 'center_mode',
  AWSlideshowLayout.stack: 'stack',
  AWSlideshowLayout.tinder: 'tinder',
  AWSlideshowLayout.rotate: 'rotate',
};

AWSlideshowFields _$AWSlideshowFieldsFromJson(Map<String, dynamic> json) => AWSlideshowFields(
      autoPlay: AWSlideshowFields.fromJsonBoolFalse(json['autoPlay']),
      enableIndicator: AWSlideshowFields.fromJsonBoolTrue(json['enableIndicator']),
      autoPlayDelay: AWSlideshowFields.fromJsonAutoPlayDelay(json['autoPlayDelay']),
      autoPlayInterval: AWSlideshowFields.fromJsonAutoPlayInterval(json['autoPlayInterval']),
      size: AWSlideshowFields.fromJsonSize(json['size']),
      scrollDirection: AWSlideshowFields.fromJsonScrollDirection(json['scrollDirection']),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => AWSlideshowTemplate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AWSlideshowFieldsToJson(AWSlideshowFields instance) => <String, dynamic>{
      'autoPlay': instance.autoPlay,
      'enableIndicator': instance.enableIndicator,
      'autoPlayDelay': instance.autoPlayDelay,
      'autoPlayInterval': instance.autoPlayInterval,
      'size': ConvertData.toMapSize(instance.size),
      'scrollDirection': AWSlideshowFields.toJsonScrollDirection(instance.scrollDirection),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

AWSlideshowStyle _$AWSlideshowStyleFromJson(Map<String, dynamic> json) => AWSlideshowStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      borderRadius: AWSlideshowStyle.fromJsonRadius(json['borderRadius']),
      indicatorAlignment: ConvertData.toAlignmentDirectional(json['indicatorAlignment']),
      indicatorColor: AbdColor.fromJson(json['indicatorColor'] as Map<String, dynamic>),
      indicatorActiveColor: AbdColor.fromJson(json['indicatorActiveColor'] as Map<String, dynamic>),
      indicatorMargin: AbdSpacing.fromJson(json['indicatorMargin'] as Map<String, dynamic>),
      indicatorSize: AWSlideshowStyle.fromJsonIndicatorSize(json['indicatorSize']),
      activeIndicatorSize: AWSlideshowStyle.fromJsonActiveIndicatorSize(json['activeIndicatorSize']),
      indicatorSpace: AWSlideshowStyle.fromJsonIndicatorSpace(json['indicatorSpace']),
    );

Map<String, dynamic> _$AWSlideshowStyleToJson(AWSlideshowStyle instance) => <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'borderRadius': instance.borderRadius,
      'indicatorAlignment': ConvertData.toStringAlignmentDirectional(instance.indicatorAlignment),
      'indicatorColor': instance.indicatorColor.toJson(),
      'indicatorActiveColor': instance.indicatorActiveColor.toJson(),
      'indicatorMargin': instance.indicatorMargin.toJson(),
      'indicatorSize': instance.indicatorSize,
      'activeIndicatorSize': instance.activeIndicatorSize,
      'indicatorSpace': instance.indicatorSpace,
    };

AWSlideshowTemplate _$AWSlideshowTemplateFromJson(Map<String, dynamic> json) => AWSlideshowTemplate(
      template: json['template'] as String,
      data: AWSlideshowDataTemplate.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWSlideshowTemplateToJson(AWSlideshowTemplate instance) => <String, dynamic>{
      'template': instance.template,
      'data': instance.data.toJson(),
    };

AWSlideshowDataTemplate _$AWSlideshowDataTemplateFromJson(Map<String, dynamic> json) => AWSlideshowDataTemplate(
      image: AWSlideshowDataTemplate.fromJsonImage(json['image']),
      layer: (json['layer'] as List<dynamic>?)
              ?.map((e) => AWSlideshowLayer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      imageSize: AWSlideshowDataTemplate.fromJsonImageSize(json['imageSize']),
      fit: AWSlideshowDataTemplate.fromJsonFit(json['fit']),
    );

Map<String, dynamic> _$AWSlideshowDataTemplateToJson(AWSlideshowDataTemplate instance) {
  final val = <String, dynamic>{
    'image': instance.image.toJson(),
    'layer': instance.layer.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageSize', AWSlideshowDataTemplate.toJsonImageSize(instance.imageSize));
  writeNotNull('fit', _$BoxFitEnumMap[instance.fit]);
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

AWSlideshowLayer _$AWSlideshowLayerFromJson(Map<String, dynamic> json) => AWSlideshowLayer(
      active: AWSlideshowLayer.fromJsonAction(json['active']),
      value: AWSlideshowValueLayer.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWSlideshowLayerToJson(AWSlideshowLayer instance) => <String, dynamic>{
      'active': instance.active,
      'value': instance.value.toJson(),
    };

AWSlideshowValueLayer _$AWSlideshowValueLayerFromJson(Map<String, dynamic> json) => AWSlideshowValueLayer(
      type: $enumDecodeNullable(_$AWSlideshowLayerTypeEnumMap, json['type']) ?? AWSlideshowLayerType.text,
      position: AbdPosition.fromJson(json['position'] as Map<String, dynamic>),
      text: json['text'] == null ? null : AbdText.fromJson(json['text'] as Map<String, dynamic>),
      icon: json['icon'] == null ? null : AbdIcon.fromJson(json['icon'] as Map<String, dynamic>),
      buttonBg: json['buttonBg'] == null ? null : AbdColor.fromJson(json['buttonBg'] as Map<String, dynamic>),
      buttonBorderColor: json['buttonBorderColor'] == null
          ? null
          : AbdColor.fromJson(json['buttonBorderColor'] as Map<String, dynamic>),
      buttonBorderWidth: ConvertData.stringToDoubleCanBeNull(json['buttonBorderWidth']),
      buttonSize: AWSlideshowValueLayer.fromJsonButtonSize(json['buttonSize']),
      buttonBorderRadius: ConvertData.stringToDoubleCanBeNull(json['buttonBorderRadius']),
      iconColor: json['iconColor'] == null ? null : AbdColor.fromJson(json['iconColor'] as Map<String, dynamic>),
      iconSize: ConvertData.stringToDoubleCanBeNull(json['iconSize']),
      image: AWSlideshowValueLayer.fromJsonImage(json['image']),
      imageSize: AWSlideshowValueLayer.fromJsonImageSize(json['imageSize']),
      action: json['action'] == null ? null : AbdAction.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWSlideshowValueLayerToJson(AWSlideshowValueLayer instance) {
  final val = <String, dynamic>{
    'type': _$AWSlideshowLayerTypeEnumMap[instance.type]!,
    'position': instance.position.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text?.toJson());
  writeNotNull('icon', instance.icon?.toJson());
  writeNotNull('buttonBg', instance.buttonBg?.toJson());
  writeNotNull('buttonBorderColor', instance.buttonBorderColor?.toJson());
  writeNotNull('buttonBorderWidth', instance.buttonBorderWidth);
  writeNotNull('buttonSize', AWSlideshowValueLayer.toJsonSize(instance.buttonSize));
  writeNotNull('buttonBorderRadius', instance.buttonBorderRadius);
  writeNotNull('iconColor', instance.iconColor);
  writeNotNull('iconSize', instance.iconSize);
  writeNotNull('image', instance.image?.toJson());
  writeNotNull('imageSize', AWSlideshowValueLayer.toJsonSize(instance.imageSize));
  writeNotNull('action', instance.action?.toJson());
  return val;
}

const _$AWSlideshowLayerTypeEnumMap = {
  AWSlideshowLayerType.text: 'text',
  AWSlideshowLayerType.button: 'button',
  AWSlideshowLayerType.image: 'image',
  AWSlideshowLayerType.icon: 'icon',
};
