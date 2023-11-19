// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ASRegister _$ASRegisterFromJson(Map<String, dynamic> json) => ASRegister(
      configs:
          ASRegisterConfigs.fromJson(json['configs'] as Map<String, dynamic>),
      fields: ASRegisterFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: ASRegisterStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$ASRegisterLayoutEnumMap, json['layout']) ??
          ASRegisterLayout.defaultLayout,
    );

const _$ASRegisterLayoutEnumMap = {
  ASRegisterLayout.defaultLayout: 'default',
  ASRegisterLayout.logoTop: 'logo_top',
  ASRegisterLayout.imageHeaderTop: 'image_header_top',
  ASRegisterLayout.imageHeaderCorner: 'image_header_corner',
};

ASRegisterConfigs _$ASRegisterConfigsFromJson(Map<String, dynamic> json) =>
    ASRegisterConfigs(
      extendBodyBehindAppBar:
          ASRegisterConfigs.fromJsonFalse(json['extendBodyBehindAppBar']),
      shadowAppBar: ASRegisterConfigs.fromJsonTrue(json['shadowAppBar']),
      appbarColor: ASRegisterConfigs.fromJsonColor(json['appbarColor']),
    );

Map<String, dynamic> _$ASRegisterConfigsToJson(ASRegisterConfigs instance) {
  final val = <String, dynamic>{
    'extendBodyBehindAppBar': instance.extendBodyBehindAppBar,
    'shadowAppBar': instance.shadowAppBar,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appbarColor', instance.appbarColor?.toJson());
  return val;
}

ASRegisterFields _$ASRegisterFieldsFromJson(Map<String, dynamic> json) =>
    ASRegisterFields(
      registerFacebook: ASRegisterFields.fromJsonTrue(json['registerFacebook']),
      registerGoogle: ASRegisterFields.fromJsonTrue(json['registerGoogle']),
      registerApple: ASRegisterFields.fromJsonTrue(json['registerApple']),
      registerPhoneNumber:
          ASRegisterFields.fromJsonTrue(json['registerPhoneNumber']),
      enableSymbolPassword:
          ASRegisterFields.fromJsonTrue(json['enableSymbolPassword']),
      enableNumberPassword:
          ASRegisterFields.fromJsonTrue(json['enableNumberPassword']),
      enableLowerCharacterPassword:
          ASRegisterFields.fromJsonTrue(json['enableLowerCharacterPassword']),
      enableUpperCharacterPassword:
          ASRegisterFields.fromJsonTrue(json['enableUpperCharacterPassword']),
      enableEmail: ASRegisterFields.fromJsonTrue(json['enableEmail']),
      titleAppBar: ASRegisterFields.fromJsonTrue(json['titleAppBar']),
      minLengthPassword:
          ASRegisterFields.fromJsonInt(json['minLengthPassword']),
      term: ASRegisterFields.fromJsonTerm(json['term']),
    );

Map<String, dynamic> _$ASRegisterFieldsToJson(ASRegisterFields instance) =>
    <String, dynamic>{
      'registerFacebook': instance.registerFacebook,
      'registerGoogle': instance.registerGoogle,
      'registerApple': instance.registerApple,
      'registerPhoneNumber': instance.registerPhoneNumber,
      'enableSymbolPassword': instance.enableSymbolPassword,
      'enableNumberPassword': instance.enableNumberPassword,
      'enableLowerCharacterPassword': instance.enableLowerCharacterPassword,
      'enableUpperCharacterPassword': instance.enableUpperCharacterPassword,
      'enableEmail': instance.enableEmail,
      'titleAppBar': instance.titleAppBar,
      'minLengthPassword': instance.minLengthPassword,
      'term': instance.term.toJson(),
    };

ASRegisterStyle _$ASRegisterStyleFromJson(Map<String, dynamic> json) =>
    ASRegisterStyle(
      padding: ASRegisterStyle.fromJsonSpacing(json['padding']),
      background: ASRegisterStyle.fromJsonColor(json['background']),
      headerImage: ASRegisterStyle.fromJsonImage(json['headerImage']),
    );

Map<String, dynamic> _$ASRegisterStyleToJson(ASRegisterStyle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', instance.padding?.toJson());
  writeNotNull('background', instance.background?.toJson());
  writeNotNull('headerImage', instance.headerImage?.toJson());
  return val;
}
