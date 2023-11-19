// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APPostList _$APPostListFromJson(Map<String, dynamic> json) => APPostList(
      id: json['id'] as String,
      styles: APPostListStyle.fromJson(json['styles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APPostListToJson(APPostList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'styles': instance.styles.toJson(),
    };

APPostListStyle _$APPostListStyleFromJson(Map<String, dynamic> json) =>
    APPostListStyle(
      textColor: json['textColor'] == null
          ? null
          : AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
      subTextColor: json['subTextColor'] == null
          ? null
          : AbdColor.fromJson(json['subTextColor'] as Map<String, dynamic>),
      labelColor: json['labelColor'] == null
          ? null
          : AbdColor.fromJson(json['labelColor'] as Map<String, dynamic>),
      labelTextColor: json['labelTextColor'] == null
          ? null
          : AbdColor.fromJson(json['labelTextColor'] as Map<String, dynamic>),
      labelRadius: (json['labelRadius'] as num?)?.toDouble(),
      radiusImage: (json['radiusImage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$APPostListStyleToJson(APPostListStyle instance) =>
    <String, dynamic>{
      'textColor': instance.textColor?.toJson(),
      'subTextColor': instance.subTextColor?.toJson(),
      'labelColor': instance.labelColor?.toJson(),
      'labelTextColor': instance.labelTextColor?.toJson(),
      'labelRadius': instance.labelRadius,
      'radiusImage': instance.radiusImage,
    };

APPostListConfig _$APPostListConfigFromJson(Map<String, dynamic> json) =>
    APPostListConfig(
      enableAppbarSearch: json['enableAppbarSearch'] as bool?,
      enableCenterTitle: json['enableCenterTitle'] as bool?,
      appBarType: $enumDecodeNullable(
              _$APPostListAppBarLayoutEnumMap, json['appBarType']) ??
          APPostListAppBarLayout.floating,
    );

Map<String, dynamic> _$APPostListConfigToJson(APPostListConfig instance) =>
    <String, dynamic>{
      'enableAppbarSearch': instance.enableAppbarSearch,
      'enableCenterTitle': instance.enableCenterTitle,
      'appBarType': _$APPostListAppBarLayoutEnumMap[instance.appBarType]!,
    };

const _$APPostListAppBarLayoutEnumMap = {
  APPostListAppBarLayout.fixed: 'fixed',
  APPostListAppBarLayout.floating: 'floating',
  APPostListAppBarLayout.scroll: 'scroll',
};
