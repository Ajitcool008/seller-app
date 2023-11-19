// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ASVendorList _$ASVendorListFromJson(Map<String, dynamic> json) => ASVendorList(
      configs:
          ASVendorListConfigs.fromJson(json['configs'] as Map<String, dynamic>),
      fields:
          ASVendorListFields.fromJson(json['fields'] as Map<String, dynamic>),
      layout:
          $enumDecodeNullable(_$ASVendorListLayoutEnumMap, json['layout']) ??
              ASVendorListLayout.defaultLayout,
    );

const _$ASVendorListLayoutEnumMap = {
  ASVendorListLayout.defaultLayout: 'default',
  ASVendorListLayout.map: 'map',
};

ASVendorListConfigs _$ASVendorListConfigsFromJson(Map<String, dynamic> json) =>
    ASVendorListConfigs(
      enableCenterTitle:
          ASVendorListConfigs.fromJsonTrue(json['enableCenterTitle']),
    );

Map<String, dynamic> _$ASVendorListConfigsToJson(
        ASVendorListConfigs instance) =>
    <String, dynamic>{
      'enableCenterTitle': instance.enableCenterTitle,
    };

ASVendorListFields _$ASVendorListFieldsFromJson(Map<String, dynamic> json) =>
    ASVendorListFields(
      itemPerPage: ASVendorListFields.fromJsonPerPage(json['itemPerPage']),
      enableRangeFilter:
          ASVendorListFields.fromJsonFalse(json['enableRangeFilter']),
      enableRating: ASVendorListFields.fromJsonTrue(json['enableRating']),
    );

Map<String, dynamic> _$ASVendorListFieldsToJson(ASVendorListFields instance) =>
    <String, dynamic>{
      'itemPerPage': instance.itemPerPage,
      'enableRangeFilter': instance.enableRangeFilter,
      'enableRating': instance.enableRating,
    };
