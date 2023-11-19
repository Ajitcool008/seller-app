// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWOnBoarding _$AWOnBoardingFromJson(Map<String, dynamic> json) => AWOnBoarding(
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      fields: AWOnBoarding.fromJsonFields(json['fields']),
      styles: AWOnBoarding.fromJsonStyle(json['styles']),
      layout:
          $enumDecodeNullable(_$AWOnBoardingLayoutEnumMap, json['layout']) ??
              AWOnBoardingLayout.defaultLayout,
      disable: json['disable'] == null
          ? false
          : AWOnBoarding.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWOnBoardingToJson(AWOnBoarding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'layout': _$AWOnBoardingLayoutEnumMap[instance.layout]!,
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

const _$AWOnBoardingLayoutEnumMap = {
  AWOnBoardingLayout.defaultLayout: 'default',
  AWOnBoardingLayout.overlay: 'overlay',
};

AWOnBoardingFields _$AWOnBoardingFieldsFromJson(Map<String, dynamic> json) =>
    AWOnBoardingFields(
      enablePagination:
          AWOnBoardingFields.fromJsonPagination(json['enablePagination']),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  AWOnBoardingTemplate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AWOnBoardingFieldsToJson(AWOnBoardingFields instance) =>
    <String, dynamic>{
      'enablePagination': instance.enablePagination,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

AWOnBoardingStyle _$AWOnBoardingStyleFromJson(Map<String, dynamic> json) =>
    AWOnBoardingStyle(
      backgroundItem: AWOnBoardingStyle.fromJsonColor(json['backgroundItem']),
      titleColor: AWOnBoardingStyle.fromJsonColor(json['titleColor']),
      subtitleColor: AWOnBoardingStyle.fromJsonColor(json['subtitleColor']),
      skipColor: AWOnBoardingStyle.fromJsonColor(json['skipColor']),
      gradientFrom: AWOnBoardingStyle.fromJsonColor(json['gradientFrom']),
      gradientTo: AWOnBoardingStyle.fromJsonColor(json['gradientTo']),
      dividerColor: AWOnBoardingStyle.fromJsonColor(json['dividerColor']),
      indicatorColor: AWOnBoardingStyle.fromJsonColor(json['indicatorColor']),
      indicatorActiveColor:
          AWOnBoardingStyle.fromJsonColor(json['indicatorActiveColor']),
      titleSize: AWOnBoardingStyle.fromJsonTitleSize(json['titleSize']),
      subtitleSize:
          AWOnBoardingStyle.fromJsonSubtitleSize(json['subtitleSize']),
      opacity: AWOnBoardingStyle.fromJsonOpacity(json['opacity']),
    );

Map<String, dynamic> _$AWOnBoardingStyleToJson(AWOnBoardingStyle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backgroundItem', instance.backgroundItem?.toJson());
  writeNotNull('titleColor', instance.titleColor?.toJson());
  writeNotNull('subtitleColor', instance.subtitleColor?.toJson());
  writeNotNull('skipColor', instance.skipColor?.toJson());
  writeNotNull('gradientFrom', instance.gradientFrom?.toJson());
  writeNotNull('gradientTo', instance.gradientTo?.toJson());
  writeNotNull('dividerColor', instance.dividerColor?.toJson());
  writeNotNull('indicatorColor', instance.indicatorColor?.toJson());
  writeNotNull('indicatorActiveColor', instance.indicatorActiveColor?.toJson());
  val['titleSize'] = instance.titleSize;
  val['subtitleSize'] = instance.subtitleSize;
  val['opacity'] = instance.opacity;
  return val;
}

AWOnBoardingTemplate _$AWOnBoardingTemplateFromJson(
        Map<String, dynamic> json) =>
    AWOnBoardingTemplate(
      template: json['template'] as String?,
      data: AWOnBoardingTemplate.fromJsonData(json['data']),
    );

Map<String, dynamic> _$AWOnBoardingTemplateToJson(
        AWOnBoardingTemplate instance) =>
    <String, dynamic>{
      'template': instance.template,
      'data': instance.data.toJson(),
    };

AWOnBoardingDataTemplate _$AWOnBoardingDataTemplateFromJson(
        Map<String, dynamic> json) =>
    AWOnBoardingDataTemplate(
      image: AWOnBoardingDataTemplate.fromJsonImage(json['image']),
      title: AWOnBoardingDataTemplate.fromJsonText(json['title']),
      subTitle: AWOnBoardingDataTemplate.fromJsonText(json['subTitle']),
    );

Map<String, dynamic> _$AWOnBoardingDataTemplateToJson(
        AWOnBoardingDataTemplate instance) =>
    <String, dynamic>{
      'image': instance.image.toJson(),
      'title': instance.title.toJson(),
      'subTitle': instance.subTitle.toJson(),
    };
