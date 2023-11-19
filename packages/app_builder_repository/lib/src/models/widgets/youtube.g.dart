// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWYoutube _$AWYoutubeFromJson(Map<String, dynamic> json) => AWYoutube(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWYoutubeFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWYoutubeStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWYoutube.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWYoutubeToJson(AWYoutube instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWYoutubeFields _$AWYoutubeFieldsFromJson(Map<String, dynamic> json) =>
    AWYoutubeFields(
      height: json['height'] == null
          ? 315
          : ConvertData.stringToDouble(json['height']),
      width: json['width'] == null
          ? 560
          : ConvertData.stringToDouble(json['width']),
      url: AbdText.fromJson(json['url'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWYoutubeFieldsToJson(AWYoutubeFields instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'url': instance.url.toJson(),
    };

AWYoutubeStyle _$AWYoutubeStyleFromJson(Map<String, dynamic> json) =>
    AWYoutubeStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWYoutubeStyleToJson(AWYoutubeStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
    };
