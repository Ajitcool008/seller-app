// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdColor _$AbdColorFromJson(Map<String, dynamic> json) => AbdColor(
      value: AbdRgba.fromJson(json['value'] as Map<String, dynamic>),
      dark: AbdRgba.fromJson(json['dark'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbdColorToJson(AbdColor instance) => <String, dynamic>{
      'value': instance.value.toJson(),
      'dark': instance.dark.toJson(),
    };
