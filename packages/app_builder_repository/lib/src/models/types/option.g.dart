// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdOption _$AbdOptionFromJson(Map<String, dynamic> json) => AbdOption(
      key: ConvertData.stringToIntCanBeNull(json['key']),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$AbdOptionToJson(AbdOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('text', instance.text);
  return val;
}
