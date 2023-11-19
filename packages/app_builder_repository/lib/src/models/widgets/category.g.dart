// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ASCategory _$ASCategoryFromJson(Map<String, dynamic> json) => ASCategory(
      configs: ASCategoryConfigs.fromJson(json['configs'] as Map<String, dynamic>),
      fields: ASCategoryFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: ASCategoryStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$ASCategoryLayoutEnumMap, json['layout']) ?? ASCategoryLayout.defaultLayout,
    );

const _$ASCategoryLayoutEnumMap = {
  ASCategoryLayout.defaultLayout: 'default',
  ASCategoryLayout.vertical: 'vertical',
  ASCategoryLayout.horizontal: 'horizontal',
};

ASCategoryConfigs _$ASCategoryConfigsFromJson(Map<String, dynamic> json) => ASCategoryConfigs(
      appBarType:
          $enumDecodeNullable(_$ASCategoryTypeAppbarEnumMap, json['appBarType']) ?? ASCategoryTypeAppbar.floating,
      enableSearch: ASCategoryConfigs.fromJsonTrue(json['enableSearch']),
      enableCart: ASCategoryConfigs.fromJsonTrue(json['enableCart']),
      enableBanner: ASCategoryConfigs.fromJsonTrue(json['enableBanner']),
      widthBanner: ASCategoryConfigs.fromJsonWidthBanner(json['widthBanner']),
      heightBanner: ASCategoryConfigs.fromJsonHeightBanner(json['heightBanner']),
      radiusBanner: ASCategoryConfigs.fromJsonRadiusBanner(json['radiusBanner']),
      enableScaleWidthBanner: ASCategoryConfigs.fromJsonTrue(json['enableScaleWidthBanner']),
      appbarColorOnTop: ASCategoryConfigs.fromJsonColor(json['appbarColorOnTop']),
      iconAppbarColorOnTop: ASCategoryConfigs.fromJsonColor(json['iconAppbarColorOnTop']),
      imageBanner: ASCategoryConfigs.fromJsonImage(json['imageBanner']),
      backgroundBanner: ASCategoryConfigs.fromJsonColor(json['backgroundBanner']),
    );

Map<String, dynamic> _$ASCategoryConfigsToJson(ASCategoryConfigs instance) {
  final val = <String, dynamic>{
    'appBarType': _$ASCategoryTypeAppbarEnumMap[instance.appBarType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appbarColorOnTop', instance.appbarColorOnTop?.toJson());
  writeNotNull('iconAppbarColorOnTop', instance.iconAppbarColorOnTop?.toJson());
  val['enableSearch'] = instance.enableSearch;
  val['enableCart'] = instance.enableCart;
  val['enableBanner'] = instance.enableBanner;
  val['widthBanner'] = instance.widthBanner;
  val['heightBanner'] = instance.heightBanner;
  val['radiusBanner'] = instance.radiusBanner;
  writeNotNull('imageBanner', instance.imageBanner?.toJson());
  val['enableScaleWidthBanner'] = instance.enableScaleWidthBanner;
  writeNotNull('backgroundBanner', instance.backgroundBanner?.toJson());
  return val;
}

const _$ASCategoryTypeAppbarEnumMap = {
  ASCategoryTypeAppbar.floating: 'floating',
  ASCategoryTypeAppbar.fixed: 'fixed',
  ASCategoryTypeAppbar.scroll: 'scroll',
};

ASCategoryFields _$ASCategoryFieldsFromJson(Map<String, dynamic> json) => ASCategoryFields(
      excludeCategory: ASCategoryFields.fromJsonCategory(json['excludeCategory']),
      styleView: $enumDecodeNullable(_$ASCategoryViewLayoutEnumMap, json['styleView']) ?? ASCategoryViewLayout.list,
      columnGrid: ASCategoryFields.fromJsonColumn(json['columnGrid']),
      childAspectRatio: ASCategoryFields.fromJsonRatio(json['childAspectRatio']),
      enableShowAll: ASCategoryFields.fromJsonTrue(json['enableShowAll']),
      enableChangeNameShowAll: ASCategoryFields.fromJsonTrue(json['enableChangeNameShowAll']),
      positionShowAll: $enumDecodeNullable(_$ASCategoryPositionShowAllEnumMap, json['positionShowAll']) ??
          ASCategoryPositionShowAll.start,
      padItem: ASCategoryFields.fromJsonPad(json['padItem']),
      template: ASCategoryFields.fromJsonTemplate(json['template']),
      textShowAll: ASCategoryFields.fromJsonText(json['textShowAll']),
    );

Map<String, dynamic> _$ASCategoryFieldsToJson(ASCategoryFields instance) => <String, dynamic>{
      'excludeCategory': instance.excludeCategory.map((e) => e.toJson()).toList(),
      'styleView': _$ASCategoryViewLayoutEnumMap[instance.styleView]!,
      'columnGrid': instance.columnGrid,
      'childAspectRatio': instance.childAspectRatio,
      'enableShowAll': instance.enableShowAll,
      'enableChangeNameShowAll': instance.enableChangeNameShowAll,
      'positionShowAll': _$ASCategoryPositionShowAllEnumMap[instance.positionShowAll]!,
      'textShowAll': instance.textShowAll?.toJson(),
      'padItem': instance.padItem,
      'template': instance.template.toJson(),
    };

const _$ASCategoryViewLayoutEnumMap = {
  ASCategoryViewLayout.grid: 'grid',
  ASCategoryViewLayout.list: 'list',
};

const _$ASCategoryPositionShowAllEnumMap = {
  ASCategoryPositionShowAll.start: 'start',
  ASCategoryPositionShowAll.end: 'end',
};

ASCategoryStyle _$ASCategoryStyleFromJson(Map<String, dynamic> json) => ASCategoryStyle(
      radiusItem: ASCategoryStyle.fromJsonRadius(json['radiusItem']),
      radiusImage: ASCategoryStyle.fromJsonRadiusImage(json['radiusImage']),
      sizeText: ASCategoryStyle.fromJsonSizeText(json['sizeText']),
      sizeSubtext: ASCategoryStyle.fromJsonSizeSubtext(json['sizeSubtext']),
      padding: ASCategoryStyle.fromJsonSpacing(json['padding']),
      margin: ASCategoryStyle.fromJsonSpacing(json['margin']),
      backgroundItems: ASCategoryStyle.fromJsonColor(json['backgroundItems']),
      backgroundItem: ASCategoryStyle.fromJsonColor(json['backgroundItem']),
      textColor: ASCategoryStyle.fromJsonColor(json['textColor']),
      subtextColor: ASCategoryStyle.fromJsonColor(json['subtextColor']),
    );

Map<String, dynamic> _$ASCategoryStyleToJson(ASCategoryStyle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', instance.padding?.toJson());
  writeNotNull('margin', instance.margin?.toJson());
  writeNotNull('backgroundItems', instance.backgroundItems?.toJson());
  writeNotNull('backgroundItem', instance.backgroundItem?.toJson());
  val['radiusItem'] = instance.radiusItem;
  val['radiusImage'] = instance.radiusImage;
  writeNotNull('textColor', instance.textColor?.toJson());
  val['sizeText'] = instance.sizeText;
  writeNotNull('subtextColor', instance.subtextColor?.toJson());
  val['sizeSubtext'] = instance.sizeSubtext;
  return val;
}

ASCategoryTemplate _$ASCategoryTemplateFromJson(Map<String, dynamic> json) => ASCategoryTemplate(
      template:
          $enumDecodeNullable(_$ASCategoryTemplateTypeEnumMap, json['template']) ?? ASCategoryTemplateType.horizontal,
      data: ASCategoryTemplate.fromJsonData(json['data']),
    );

Map<String, dynamic> _$ASCategoryTemplateToJson(ASCategoryTemplate instance) => <String, dynamic>{
      'template': _$ASCategoryTemplateTypeEnumMap[instance.template]!,
      'data': instance.data.toJson(),
    };

const _$ASCategoryTemplateTypeEnumMap = {
  ASCategoryTemplateType.horizontal: 'horizontal',
  ASCategoryTemplateType.horizontalOver: 'horizontal-over',
  ASCategoryTemplateType.card: 'card',
  ASCategoryTemplateType.overlay: 'overlay',
  ASCategoryTemplateType.contained: 'contained',
  ASCategoryTemplateType.grid: 'grid',
  ASCategoryTemplateType.basic: 'basic',
};

ASCategoryTemplateData _$ASCategoryTemplateDataFromJson(Map<String, dynamic> json) => ASCategoryTemplateData(
      enableSubcategories: ConvertData.toBoolValue(json['enableSubcategories']),
      enableImage: ConvertData.toBoolValue(json['enableImage']),
      thumbSizes: json['thumbSizes'] as String?,
      enableNumber: ConvertData.toBoolValue(json['enableNumber']),
      enableShadow: ConvertData.toBoolValue(json['enableShadow']),
      enableBorder: ConvertData.toBoolValue(json['enableBorder']),
      borderColor: ASCategoryTemplateData.fromJsonColor(json['borderColor']),
      enableRound: ConvertData.toBoolValue(json['enableRound']),
      alignment: ASCategoryTemplateData.fromJsonTextAlign(json['alignment']),
      opacityColor: ASCategoryTemplateData.fromJsonColor(json['opacityColor']),
      opacity: ConvertData.stringToDoubleCanBeNull(json['opacity']),
      maxCountSubcategory: ConvertData.stringToIntCanBeNull(json['maxCountSubcategory']),
      columnSubcategory: ConvertData.stringToIntCanBeNull(json['columnSubcategory']),
      enableRoundSubcategory: ConvertData.toBoolValue(json['enableRoundSubcategory']),
      enableBorderSubcategory: ConvertData.toBoolValue(json['enableBorderSubcategory']),
      radiusSubCategory: ConvertData.stringToDoubleCanBeNull(json['radiusSubCategory']),
      borderColorSubCategory: ASCategoryTemplateData.fromJsonColor(json['borderColorSubCategory']),
      sizeSubcategory: ConvertData.stringToDoubleCanBeNull(json['sizeSubcategory']),
      textColorSubcategory: ASCategoryTemplateData.fromJsonColor(json['textColorSubcategory']),
      enableIcon: ConvertData.toBoolValue(json['enableIcon']),
      iconSize: ConvertData.stringToDoubleCanBeNull(json['iconSize']),
      iconColor: ASCategoryTemplateData.fromJsonColor(json['iconColor']),
      alignmentView: json['alignmentView'] as String?,
    );

Map<String, dynamic> _$ASCategoryTemplateDataToJson(ASCategoryTemplateData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enableSubcategories', instance.enableSubcategories);
  writeNotNull('enableImage', instance.enableImage);
  val['thumbSizes'] = instance.thumbSizes;
  writeNotNull('enableNumber', instance.enableNumber);
  writeNotNull('enableShadow', instance.enableShadow);
  writeNotNull('enableBorder', instance.enableBorder);
  writeNotNull('borderColor', instance.borderColor?.toJson());
  writeNotNull('enableRound', instance.enableRound);
  writeNotNull('alignment', ASCategoryTemplateData.toJsonTextAlign(instance.alignment));
  writeNotNull('opacityColor', instance.opacityColor?.toJson());
  writeNotNull('opacity', instance.opacity);
  writeNotNull('maxCountSubcategory', instance.maxCountSubcategory);
  writeNotNull('columnSubcategory', instance.columnSubcategory);
  writeNotNull('enableRoundSubcategory', instance.enableRoundSubcategory);
  writeNotNull('enableBorderSubcategory', instance.enableBorderSubcategory);
  writeNotNull('radiusSubCategory', instance.radiusSubCategory);
  writeNotNull('borderColorSubCategory', instance.borderColorSubCategory?.toJson());
  writeNotNull('sizeSubcategory', instance.sizeSubcategory);
  writeNotNull('textColorSubcategory', instance.textColorSubcategory?.toJson());
  writeNotNull('enableIcon', instance.enableIcon);
  writeNotNull('iconSize', instance.iconSize);
  writeNotNull('iconColor', instance.iconColor?.toJson());
  val['alignmentView'] = instance.alignmentView;
  return val;
}
