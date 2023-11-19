// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ASVendorDetail _$ASVendorDetailFromJson(Map<String, dynamic> json) =>
    ASVendorDetail(
      configs: ASVendorDetailConfigs.fromJson(
          json['configs'] as Map<String, dynamic>),
      fields:
          ASVendorDetailFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

ASVendorDetailConfigs _$ASVendorDetailConfigsFromJson(
        Map<String, dynamic> json) =>
    ASVendorDetailConfigs(
      enableCenterTitle:
          ASVendorDetailConfigs.fromJsonTrue(json['enableCenterTitle']),
    );

Map<String, dynamic> _$ASVendorDetailConfigsToJson(
        ASVendorDetailConfigs instance) =>
    <String, dynamic>{
      'enableCenterTitle': instance.enableCenterTitle,
    };

ASVendorDetailFields _$ASVendorDetailFieldsFromJson(
        Map<String, dynamic> json) =>
    ASVendorDetailFields(
      enableRating: ASVendorDetailFields.fromJsonTrue(json['enableRating']),
      typeAppBar: $enumDecodeNullable(
              _$ASVendorDetailTypeAppbarEnumMap, json['typeAppBar']) ??
          ASVendorDetailTypeAppbar.emerge,
    );

Map<String, dynamic> _$ASVendorDetailFieldsToJson(
        ASVendorDetailFields instance) =>
    <String, dynamic>{
      'enableRating': instance.enableRating,
      'typeAppBar': _$ASVendorDetailTypeAppbarEnumMap[instance.typeAppBar]!,
    };

const _$ASVendorDetailTypeAppbarEnumMap = {
  ASVendorDetailTypeAppbar.emerge: 'emerge',
  ASVendorDetailTypeAppbar.opacity: 'opacity',
};
