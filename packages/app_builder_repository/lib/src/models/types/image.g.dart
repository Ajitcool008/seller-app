// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdImage _$AbdImageFromJson(Map<String, dynamic> json) => AbdImage(
      src: json['src'] as String? ?? '',
      translate: (json['translate'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$AbdImageToJson(AbdImage instance) => <String, dynamic>{
      'src': instance.src,
      'translate': instance.translate,
    };
