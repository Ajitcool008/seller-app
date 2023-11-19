// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdText _$AbdTextFromJson(Map<String, dynamic> json) => AbdText(
      style: json['style'] == null
          ? null
          : AbdStyle.fromJson(json['style'] as Map<String, dynamic>),
      translate: const TextTranslateConverter()
          .fromJson(json['translate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbdTextToJson(AbdText instance) => <String, dynamic>{
      'style': instance.style?.toJson(),
      'translate': const TextTranslateConverter().toJson(instance.translate),
    };
