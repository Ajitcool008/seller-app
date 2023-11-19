// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWProductCategory _$AWProductCategoryFromJson(Map<String, dynamic> json) => AWProductCategory(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWProductCategoryFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWProductCategoryStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWProductCategoryLayoutEnumMap, json['layout']) ?? AWProductCategoryLayout.list,
      disable: json['disable'] == null ? false : AWProductCategory.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWProductCategoryToJson(AWProductCategory instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'layout': _$AWProductCategoryLayoutEnumMap[instance.layout]!,
      'disable': instance.disable,
    };

const _$AWProductCategoryLayoutEnumMap = {
  AWProductCategoryLayout.list: 'list',
  AWProductCategoryLayout.carousel: 'carousel',
  AWProductCategoryLayout.masonry: 'masonry',
  AWProductCategoryLayout.bigFirst: 'big-first',
  AWProductCategoryLayout.slideshow: 'slideshow',
  AWProductCategoryLayout.grid: 'grid',
};

AWProductCategoryFields _$AWProductCategoryFieldsFromJson(Map<String, dynamic> json) {
  $checkKeys(json);
  return AWProductCategoryFields(
    limit: json['limit'] as int?,
    excludeCategory: (json['excludeCategory'] as List<dynamic>?)
        ?.map((e) => AWProductCategoryCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
    includeCategory: (json['includeCategory'] as List<dynamic>?)
        ?.map((e) => AWProductCategoryCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
    showHierarchy: json['showHierarchy'] as bool?,
    height: ConvertData.stringToDoubleCanBeNull(json['height']),
    width: ConvertData.stringToDoubleCanBeNull(json['width']),
    url: json['url'] == null ? null : AbdText.fromJson(json['url'] as Map<String, dynamic>),
    template: AWProductCategoryTemplate.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AWProductCategoryFieldsToJson(AWProductCategoryFields instance) {
  final val = <String, dynamic>{
    'limit': instance.limit,
    'excludeCategory': instance.excludeCategory?.map((e) => e.toJson()).toList(),
    'includeCategory': instance.includeCategory?.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('showHierarchy', instance.showHierarchy);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('url', instance.url?.toJson());
  val['template'] = instance.template.toJson();
  return val;
}

AWProductCategoryStyle _$AWProductCategoryStyleFromJson(Map<String, dynamic> json) {
  $checkKeys(json);
  return AWProductCategoryStyle(
    padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
    margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
    background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    pad: ConvertData.stringToDouble(json['pad']),
    height: ConvertData.stringToDouble(json['height']),
    maxHeightImage: ConvertData.stringToDouble(json['maxHeightImage']),
    col: ConvertData.stringToInt(json['col']),
    radius: ConvertData.stringToDouble(json['radius']),
    indicatorActiveColor: json['indicatorActiveColor'] == null
        ? null
        : AbdColor.fromJson(json['indicatorActiveColor'] as Map<String, dynamic>),
    indicatorColor:
        json['indicatorColor'] == null ? null : AbdColor.fromJson(json['indicatorColor'] as Map<String, dynamic>),
    backgroundItem:
        json['backgroundItem'] == null ? null : AbdColor.fromJson(json['backgroundItem'] as Map<String, dynamic>),
    textColor: json['textColor'] == null ? null : AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
    subTextColor: json['subTextColor'] == null ? null : AbdColor.fromJson(json['subTextColor'] as Map<String, dynamic>),
    radiusImage: ConvertData.stringToDouble(json['radiusImage']),
    ratio: ConvertData.stringToDouble(json['ratio']),
    fontSize: ConvertData.stringToDoubleCanBeNull(json['fontSize']),
  );
}

Map<String, dynamic> _$AWProductCategoryStyleToJson(AWProductCategoryStyle instance) {
  final val = <String, dynamic>{
    'padding': instance.padding.toJson(),
    'margin': instance.margin.toJson(),
    'background': instance.background.toJson(),
    'pad': instance.pad,
    'height': instance.height,
    'maxHeightImage': instance.maxHeightImage,
    'col': instance.col,
    'ratio': instance.ratio,
    'indicatorColor': instance.indicatorColor?.toJson(),
    'indicatorActiveColor': instance.indicatorActiveColor?.toJson(),
    'backgroundItem': instance.backgroundItem?.toJson(),
    'textColor': instance.textColor?.toJson(),
    'subTextColor': instance.subTextColor?.toJson(),
    'radius': instance.radius,
    'radiusImage': instance.radiusImage,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fontSize', instance.fontSize);
  return val;
}

AWProductCategoryCategory _$AWProductCategoryCategoryFromJson(Map<String, dynamic> json) => AWProductCategoryCategory(
      key: ConvertData.stringToInt(json['key']),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$AWProductCategoryCategoryToJson(AWProductCategoryCategory instance) => <String, dynamic>{
      'key': instance.key,
      'text': instance.text,
    };

AWProductCategoryTemplate _$AWProductCategoryTemplateFromJson(Map<String, dynamic> json) => AWProductCategoryTemplate(
      template: $enumDecodeNullable(_$AWProductCategoryItemTemplateEnumMap, json['template']) ??
          AWProductCategoryItemTemplate.defaultValue,
      data: json['data'] == null ? null : AWProductCategoryTemplateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWProductCategoryTemplateToJson(AWProductCategoryTemplate instance) => <String, dynamic>{
      'template': _$AWProductCategoryItemTemplateEnumMap[instance.template],
      'data': instance.data?.toJson(),
    };

const _$AWProductCategoryItemTemplateEnumMap = {
  AWProductCategoryItemTemplate.wrap: 'wrap',
  AWProductCategoryItemTemplate.horizontal: 'horizontal',
  AWProductCategoryItemTemplate.overlay: 'overlay',
  AWProductCategoryItemTemplate.contained: 'contained',
  AWProductCategoryItemTemplate.card: 'card',
  AWProductCategoryItemTemplate.grid: 'grid',
  AWProductCategoryItemTemplate.defaultValue: 'default',
};

AWProductCategoryTemplateData _$AWProductCategoryTemplateDataFromJson(Map<String, dynamic> json) {
  $checkKeys(json);
  return AWProductCategoryTemplateData(
    enableAvatar: json['enableAvatar'] as bool?,
    enableCount: json['enableCount'] as bool?,
    enableName: json['enableName'] as bool?,
    thumbSizes: json['thumbSizes'] as String?,
    enableNumber: json['enableNumber'] as bool?,
    enableRoundImage: json['enableRoundImage'] as bool?,
    alignment: $enumDecodeNullable(_$AbdAlignmentEnumMap, json['alignment']),
    opacity: ConvertData.stringToDoubleCanBeNull(json['opacity']),
    opacityColor: json['opacityColor'] == null ? null : AbdColor.fromJson(json['opacityColor'] as Map<String, dynamic>),
    pad: ConvertData.stringToDouble(json['pad']),
    borderColor: json['borderColor'] == null ? null : AbdColor.fromJson(json['borderColor'] as Map<String, dynamic>),
    borderStyle: json['borderStyle'] as String?,
  );
}

Map<String, dynamic> _$AWProductCategoryTemplateDataToJson(AWProductCategoryTemplateData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enableAvatar', instance.enableAvatar);
  writeNotNull('enableCount', instance.enableCount);
  val['enableName'] = instance.enableName;
  val['thumbSizes'] = instance.thumbSizes;
  val['enableNumber'] = instance.enableNumber;
  val['enableRoundImage'] = instance.enableRoundImage;
  writeNotNull('alignment', _$AbdAlignmentEnumMap[instance.alignment]);
  writeNotNull('opacity', instance.opacity);
  writeNotNull('opacityColor', instance.opacityColor?.toJson());
  val['pad'] = instance.pad;
  val['borderColor'] = instance.borderColor?.toJson();
  val['borderStyle'] = instance.borderStyle;
  return val;
}

const _$AbdAlignmentEnumMap = {
  AbdAlignment.center: 'center',
  AbdAlignment.left: 'left',
  AbdAlignment.right: 'right',
  AbdAlignment.justify: 'justify',
  AbdAlignment.end: 'end',
  AbdAlignment.start: 'start',
};
