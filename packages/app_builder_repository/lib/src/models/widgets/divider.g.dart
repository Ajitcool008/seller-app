// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWDivider _$AWDividerFromJson(Map<String, dynamic> json) => AWDivider(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWDividerFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWDividerStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWDivider.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWDividerToJson(AWDivider instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWDividerFields _$AWDividerFieldsFromJson(Map<String, dynamic> json) =>
    AWDividerFields(
      height: AWDividerFields.fromJsonDouble(json['height']),
      type: $enumDecodeNullable(_$AWDividerTypeEnumMap, json['type']) ??
          AWDividerType.solid,
    );

Map<String, dynamic> _$AWDividerFieldsToJson(AWDividerFields instance) =>
    <String, dynamic>{
      'height': instance.height,
      'type': _$AWDividerTypeEnumMap[instance.type]!,
    };

const _$AWDividerTypeEnumMap = {
  AWDividerType.solid: 'solid',
  AWDividerType.dashed: 'dashed',
  AWDividerType.dotted: 'dotted',
  AWDividerType.none: 'none',
};

AWDividerStyle _$AWDividerStyleFromJson(Map<String, dynamic> json) =>
    AWDividerStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      color: AbdColor.fromJson(json['color'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWDividerStyleToJson(AWDividerStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'color': instance.color.toJson(),
    };
