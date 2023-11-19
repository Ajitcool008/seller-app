// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radius.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdRadius _$AbdRadiusFromJson(Map<String, dynamic> json) => AbdRadius(
      topLeft:
          json['topLeft'] == null ? 0 : AbdRadius.validate(json['topLeft']),
      topRight:
          json['topRight'] == null ? 0 : AbdRadius.validate(json['topRight']),
      bottomLeft: json['bottomLeft'] == null
          ? 0
          : AbdRadius.validate(json['bottomLeft']),
      bottomRight: json['bottomRight'] == null
          ? 0
          : AbdRadius.validate(json['bottomRight']),
    );

Map<String, dynamic> _$AbdRadiusToJson(AbdRadius instance) => <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };
