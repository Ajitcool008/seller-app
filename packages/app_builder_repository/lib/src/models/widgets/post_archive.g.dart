// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_archive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWPostArchive _$AWPostArchiveFromJson(Map<String, dynamic> json) =>
    AWPostArchive(
      id: json['id'] as String,
      type: json['type'] as String,
      fields:
          AWPostArchiveFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles:
          AWPostArchiveStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWPostArchive.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWPostArchiveToJson(AWPostArchive instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWPostArchiveFields _$AWPostArchiveFieldsFromJson(Map<String, dynamic> json) =>
    AWPostArchiveFields(
      enableIconArchives:
          AWPostArchiveFields.fromJsonBoolFalse(json['enableIconArchives']),
      enableCount: AWPostArchiveFields.fromJsonBoolFalse(json['enableCount']),
    );

Map<String, dynamic> _$AWPostArchiveFieldsToJson(
        AWPostArchiveFields instance) =>
    <String, dynamic>{
      'enableIconArchives': instance.enableIconArchives,
      'enableCount': instance.enableCount,
    };

AWPostArchiveStyle _$AWPostArchiveStyleFromJson(Map<String, dynamic> json) =>
    AWPostArchiveStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWPostArchiveStyleToJson(AWPostArchiveStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };
