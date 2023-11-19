// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSpacer _$AWSpacerFromJson(Map<String, dynamic> json) => AWSpacer(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWSpacerFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWSpacerStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWSpacer.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWSpacerToJson(AWSpacer instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWSpacerFields _$AWSpacerFieldsFromJson(Map<String, dynamic> json) =>
    AWSpacerFields(
      height: AWSpacerFields.fromJsonDouble(json['height']),
    );

Map<String, dynamic> _$AWSpacerFieldsToJson(AWSpacerFields instance) =>
    <String, dynamic>{
      'height': instance.height,
    };

AWSpacerStyle _$AWSpacerStyleFromJson(Map<String, dynamic> json) =>
    AWSpacerStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background:
          AbdColor.fromJson(json['backgroundColor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWSpacerStyleToJson(AWSpacerStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'backgroundColor': instance.background.toJson(),
    };
