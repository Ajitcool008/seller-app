// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rgba.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdRgba _$AbdRgbaFromJson(Map<String, dynamic> json) => AbdRgba(
      r: json['r'] == null ? 0 : AbdRgba.validateGRB(json['r']),
      g: json['g'] == null ? 0 : AbdRgba.validateGRB(json['g']),
      b: json['b'] == null ? 0 : AbdRgba.validateGRB(json['b']),
      a: json['a'] == null ? 1 : AbdRgba.validateAlpha(json['a']),
    );

Map<String, dynamic> _$AbdRgbaToJson(AbdRgba instance) => <String, dynamic>{
      'r': instance.r,
      'g': instance.g,
      'b': instance.b,
      'a': instance.a,
    };
