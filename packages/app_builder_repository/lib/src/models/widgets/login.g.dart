// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ASLogin _$ASLoginFromJson(Map<String, dynamic> json) => ASLogin(
      configs: ASLoginConfigs.fromJson(json['configs'] as Map<String, dynamic>),
      fields: ASLoginFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: ASLoginStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$ASLoginLayoutEnumMap, json['layout']) ??
          ASLoginLayout.defaultLayout,
    );

const _$ASLoginLayoutEnumMap = {
  ASLoginLayout.defaultLayout: 'default',
  ASLoginLayout.logoTop: 'logo_top',
  ASLoginLayout.imageHeaderTop: 'image_header_top',
  ASLoginLayout.imageHeaderCorner: 'image_header_corner',
};

ASLoginConfigs _$ASLoginConfigsFromJson(Map<String, dynamic> json) =>
    ASLoginConfigs(
      extendBodyBehindAppBar:
          ASLoginConfigs.fromJsonFalse(json['extendBodyBehindAppBar']),
      shadowAppBar: ASLoginConfigs.fromJsonTrue(json['shadowAppBar']),
      appbarColor: ASLoginConfigs.fromJsonColor(json['appbarColor']),
    );

Map<String, dynamic> _$ASLoginConfigsToJson(ASLoginConfigs instance) {
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

ASLoginFields _$ASLoginFieldsFromJson(Map<String, dynamic> json) =>
    ASLoginFields(
      loginFacebook: ASLoginFields.fromJsonTrue(json['loginFacebook']),
      loginGoogle: ASLoginFields.fromJsonTrue(json['loginGoogle']),
      loginApple: ASLoginFields.fromJsonTrue(json['loginApple']),
      loginPhoneNumber: ASLoginFields.fromJsonTrue(json['loginPhoneNumber']),
      titleAppBar: ASLoginFields.fromJsonTrue(json['titleAppBar']),
      term: ASLoginFields.fromJsonTerm(json['term']),
    );

Map<String, dynamic> _$ASLoginFieldsToJson(ASLoginFields instance) =>
    <String, dynamic>{
      'loginFacebook': instance.loginFacebook,
      'loginGoogle': instance.loginGoogle,
      'loginApple': instance.loginApple,
      'loginPhoneNumber': instance.loginPhoneNumber,
      'titleAppBar': instance.titleAppBar,
      'term': instance.term.toJson(),
    };

ASLoginStyle _$ASLoginStyleFromJson(Map<String, dynamic> json) => ASLoginStyle(
      padding: ASLoginStyle.fromJsonSpacing(json['padding']),
      background: ASLoginStyle.fromJsonColor(json['background']),
      headerImage: ASLoginStyle.fromJsonImage(json['headerImage']),
    );

Map<String, dynamic> _$ASLoginStyleToJson(ASLoginStyle instance) {
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
