// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdIcon _$AbdIconFromJson(Map<String, dynamic> json) => AbdIcon(
      name: json['name'] == null
          ? 'alert-circle'
          : ConvertData.toStringValue(json['name']),
      type: json['type'] == null
          ? 'feather'
          : ConvertData.toStringValue(json['type']),
    );

Map<String, dynamic> _$AbdIconToJson(AbdIcon instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };
