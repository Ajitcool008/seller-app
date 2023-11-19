// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdSpacing _$AbdSpacingFromJson(Map<String, dynamic> json) => AbdSpacing(
      key: json['key'] as String,
      left: json['left'] == null ? 0 : AbdSpacing.validate(json['left']),
      right: json['right'] == null ? 0 : AbdSpacing.validate(json['right']),
      bottom: json['bottom'] == null ? 0 : AbdSpacing.validate(json['bottom']),
      top: json['top'] == null ? 0 : AbdSpacing.validate(json['top']),
    );

Map<String, dynamic> _$AbdSpacingToJson(AbdSpacing instance) =>
    <String, dynamic>{
      'key': instance.key,
      'left': instance.left,
      'right': instance.right,
      'bottom': instance.bottom,
      'top': instance.top,
    };
