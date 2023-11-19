// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdPostField _$AbdPostFieldFromJson(Map<String, dynamic> json) => AbdPostField(
      name: AbdPostField.fromJsonName(json['name']),
      layoutItem:
          $enumDecodeNullable(_$AbdPostLayoutEnumMap, json['layoutItem']),
      postType: json['postType'] as String? ?? 'posts',
      search: AbdText.fromJson(json['search'] as Map<String, dynamic>),
      tags: AbdPostField.fromJsonListOption(json['tags']),
      categories: AbdPostField.fromJsonListOption(json['categories']),
      post: AbdPostField.fromJsonListOption(json['post']),
      page: AbdPostField.toJsonPage(json['page']),
      perPage: AbdPostField.toJsonPerPage(json['perPage']),
      enableLoadMore: AbdPostField.toJsonBoolFalse(json['enableLoadMore']),
      template: AbdPostField.toJsonTemplate(json['template']),
    );

Map<String, dynamic> _$AbdPostFieldToJson(AbdPostField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', AbdPostField.toJsonName(instance.name));
  writeNotNull('layoutItem', _$AbdPostLayoutEnumMap[instance.layoutItem]);
  val['postType'] = instance.postType;
  val['search'] = instance.search.toJson();
  val['tags'] = instance.tags.map((e) => e.toJson()).toList();
  val['categories'] = instance.categories.map((e) => e.toJson()).toList();
  val['post'] = instance.post.map((e) => e.toJson()).toList();
  val['page'] = instance.page;
  val['perPage'] = instance.perPage;
  val['enableLoadMore'] = instance.enableLoadMore;
  val['template'] = instance.template.toJson();
  return val;
}

const _$AbdPostLayoutEnumMap = {
  AbdPostLayout.list: 'list',
  AbdPostLayout.carousel: 'carousel',
  AbdPostLayout.masonry: 'masonry',
  AbdPostLayout.bigFirst: 'big-first',
  AbdPostLayout.slideshow: 'slideshow',
};

AbdPostStyle _$AbdPostStyleFromJson(Map<String, dynamic> json) => AbdPostStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      pad: AbdPostStyle.fromJsonPad(json['pad']),
      dividerWidth: AbdPostStyle.fromJsonDividerWidth(json['dividerWidth']),
      dividerColor:
          AbdColor.fromJson(json['dividerColor'] as Map<String, dynamic>),
      height: AbdPostStyle.fromJsonHeight(json['height']),
      maxHeightImage:
          AbdPostStyle.fromJsonMaxHeightImage(json['maxHeightImage']),
      indicatorColor:
          AbdColor.fromJson(json['indicatorColor'] as Map<String, dynamic>),
      indicatorActiveColor: AbdColor.fromJson(
          json['indicatorActiveColor'] as Map<String, dynamic>),
      backgroundColorItem: AbdColor.fromJson(
          json['backgroundColorItem'] as Map<String, dynamic>),
      textColor: AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
      subTextColor:
          AbdColor.fromJson(json['subTextColor'] as Map<String, dynamic>),
      labelColor: AbdColor.fromJson(json['labelColor'] as Map<String, dynamic>),
      labelTextColor:
          AbdColor.fromJson(json['labelTextColor'] as Map<String, dynamic>),
      labelRadius: AbdPostStyle.fromJsonLabelRadius(json['labelRadius']),
      radius: AbdPostStyle.fromJsonRadius(json['radius']),
      radiusImage: AbdPostStyle.fromJsonRadiusImage(json['radiusImage']),
      paddingContent: json['paddingContent'] == null
          ? null
          : AbdSpacing.fromJson(json['paddingContent'] as Map<String, dynamic>),
      shadowColor:
          AbdColor.fromJson(json['shadowColor'] as Map<String, dynamic>),
      offsetX: AbdPostStyle.fromJsonOffsetX(json['offsetX']),
      offsetY: AbdPostStyle.fromJsonOffsetY(json['offsetY']),
      blurRadius: AbdPostStyle.fromJsonBlurRadius(json['blurRadius']),
      spreadRadius: AbdPostStyle.fromJsonSpreadRadius(json['spreadRadius']),
    );

Map<String, dynamic> _$AbdPostStyleToJson(AbdPostStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'pad': instance.pad,
      'dividerWidth': instance.dividerWidth,
      'dividerColor': instance.dividerColor.toJson(),
      'height': instance.height,
      'maxHeightImage': instance.maxHeightImage,
      'indicatorColor': instance.indicatorColor.toJson(),
      'indicatorActiveColor': instance.indicatorActiveColor.toJson(),
      'backgroundColorItem': instance.backgroundColorItem.toJson(),
      'textColor': instance.textColor.toJson(),
      'subTextColor': instance.subTextColor.toJson(),
      'labelColor': instance.labelColor.toJson(),
      'labelTextColor': instance.labelTextColor.toJson(),
      'labelRadius': instance.labelRadius,
      'radius': instance.radius.toJson(),
      'radiusImage': instance.radiusImage,
      'paddingContent': instance.paddingContent?.toJson(),
      'shadowColor': instance.shadowColor.toJson(),
      'offsetX': instance.offsetX,
      'offsetY': instance.offsetY,
      'blurRadius': instance.blurRadius,
      'spreadRadius': instance.spreadRadius,
    };

AbdPostTemplate _$AbdPostTemplateFromJson(Map<String, dynamic> json) =>
    AbdPostTemplate(
      template:
          $enumDecodeNullable(_$AbdPostTemplateTypeEnumMap, json['template']) ??
              AbdPostTemplateType.defaultT,
      data: AbdPostTemplateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbdPostTemplateToJson(AbdPostTemplate instance) =>
    <String, dynamic>{
      'template': _$AbdPostTemplateTypeEnumMap[instance.template]!,
      'data': instance.data.toJson(),
    };

const _$AbdPostTemplateTypeEnumMap = {
  AbdPostTemplateType.defaultT: 'default',
  AbdPostTemplateType.vertical: 'vertical',
  AbdPostTemplateType.horizontal: 'horizontal',
  AbdPostTemplateType.number: 'number',
  AbdPostTemplateType.overlay: 'overlay',
  AbdPostTemplateType.timeLine: 'timeLine',
  AbdPostTemplateType.verticalCenter: 'verticalCenter',
  AbdPostTemplateType.topName: 'topName',
  AbdPostTemplateType.emerge: 'emerge',
  AbdPostTemplateType.gradient: 'gradient',
};

AbdPostTemplateData _$AbdPostTemplateDataFromJson(Map<String, dynamic> json) =>
    AbdPostTemplateData(
      size: AbdPostTemplateData.fromJsonSize(json['size']),
      imageSize: AbdPostTemplateData.fromJsonBoxFit(json['imageSize']),
      enableCategory: ConvertData.toBoolValue(json['enableCategory']),
      enableDate: ConvertData.toBoolValue(json['enableDate']),
      enableAuthor: ConvertData.toBoolValue(json['enableAuthor']),
      enableComments: ConvertData.toBoolValue(json['enableComments']),
      nameFieldTopLeftImage:
          AbdPostTemplateData.fromJsonString(json['nameFieldTopLeftImage']),
      nameFieldTopRightImage:
          AbdPostTemplateData.fromJsonString(json['nameFieldTopRightImage']),
      nameFieldAboveName:
          AbdPostTemplateData.fromJsonString(json['nameFieldAboveName']),
      nameFieldBottomLeft:
          AbdPostTemplateData.fromJsonString(json['nameFieldBottomLeft']),
      nameFieldBottomRight:
          AbdPostTemplateData.fromJsonString(json['nameFieldBottomRight']),
      alignment: AbdPostTemplateData.fromJsonString(json['alignment']),
      nameFieldAbove:
          AbdPostTemplateData.fromJsonString(json['nameFieldAbove']),
      nameFieldBelow:
          AbdPostTemplateData.fromJsonString(json['nameFieldBelow']),
      nameFieldBelowName:
          AbdPostTemplateData.fromJsonString(json['nameFieldBelowName']),
      enableExcerpt: ConvertData.toBoolValue(json['enableExcerpt']),
      color: AbdPostTemplateData.fromJsonAbdColor(json['color']),
      opacity: ConvertData.stringToDoubleCanBeNull(json['opacity']),
      colorLine: AbdPostTemplateData.fromJsonAbdColor(json['colorLine']),
      enableImageAuthor: ConvertData.toBoolValue(json['enableImageAuthor']),
      colorBegin: AbdPostTemplateData.fromJsonAbdColor(json['colorBegin']),
      colorEnd: AbdPostTemplateData.fromJsonAbdColor(json['colorEnd']),
      begin: AbdPostTemplateData.fromJsonAlignmentDirectional(json['begin']),
      end: AbdPostTemplateData.fromJsonAlignmentDirectional(json['end']),
    );

Map<String, dynamic> _$AbdPostTemplateDataToJson(AbdPostTemplateData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', AbdPostTemplateData.toJsonSize(instance.size));
  val['imageSize'] = _$BoxFitEnumMap[instance.imageSize];
  writeNotNull('enableCategory', instance.enableCategory);
  writeNotNull('enableDate', instance.enableDate);
  writeNotNull('enableAuthor', instance.enableAuthor);
  writeNotNull('enableComments', instance.enableComments);
  writeNotNull('nameFieldTopLeftImage', instance.nameFieldTopLeftImage);
  writeNotNull('nameFieldTopRightImage', instance.nameFieldTopRightImage);
  writeNotNull('nameFieldAboveName', instance.nameFieldAboveName);
  writeNotNull('nameFieldBottomLeft', instance.nameFieldBottomLeft);
  writeNotNull('nameFieldBottomRight', instance.nameFieldBottomRight);
  writeNotNull('alignment', instance.alignment);
  writeNotNull('nameFieldAbove', instance.nameFieldAbove);
  writeNotNull('nameFieldBelow', instance.nameFieldBelow);
  writeNotNull('nameFieldBelowName', instance.nameFieldBelowName);
  writeNotNull('enableExcerpt', instance.enableExcerpt);
  writeNotNull('color', AbdPostTemplateData.toJsonAbdColor(instance.color));
  writeNotNull('opacity', instance.opacity);
  writeNotNull(
      'colorLine', AbdPostTemplateData.toJsonAbdColor(instance.colorLine));
  writeNotNull('enableImageAuthor', instance.enableImageAuthor);
  writeNotNull(
      'colorBegin', AbdPostTemplateData.toJsonAbdColor(instance.colorBegin));
  writeNotNull(
      'colorEnd', AbdPostTemplateData.toJsonAbdColor(instance.colorEnd));
  writeNotNull(
      'begin', AbdPostTemplateData.toJsonAlignmentDirectional(instance.begin));
  writeNotNull(
      'end', AbdPostTemplateData.toJsonAlignmentDirectional(instance.end));
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
