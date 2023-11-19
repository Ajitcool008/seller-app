// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWTheme _$AWThemeFromJson(Map<String, dynamic> json) => AWTheme(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWThemeFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWThemeToJson(AWTheme instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
    };

AWThemeFields _$AWThemeFieldsFromJson(Map<String, dynamic> json) =>
    AWThemeFields(
      fontFamily: json['fontFamily'] as String?,
      fontFamilyBody: json['fontFamilyBody'] as String?,
      displayColor: AWThemeFields.fromJsonColor(json['displayColor']),
      bodyColor: AWThemeFields.fromJsonColor(json['bodyColor']),
      primary: AWThemeFields.fromJsonColor(json['primary']),
      primaryVariant: AWThemeFields.fromJsonColor(json['primaryVariant']),
      onPrimary: AWThemeFields.fromJsonColor(json['onPrimary']),
      secondary: AWThemeFields.fromJsonColor(json['secondary']),
      secondaryVariant: AWThemeFields.fromJsonColor(json['secondaryVariant']),
      onSecondary: AWThemeFields.fromJsonColor(json['onSecondary']),
      surface: AWThemeFields.fromJsonColor(json['surface']),
      onSurface: AWThemeFields.fromJsonColor(json['onSurface']),
      background: AWThemeFields.fromJsonColor(json['background']),
      onBackground: AWThemeFields.fromJsonColor(json['onBackground']),
      error: AWThemeFields.fromJsonColor(json['error']),
      onError: AWThemeFields.fromJsonColor(json['onError']),
      success: AWThemeFields.fromJsonColor(json['success']),
      onSuccess: AWThemeFields.fromJsonColor(json['onSuccess']),
      warning: AWThemeFields.fromJsonColor(json['warning']),
      onWarning: AWThemeFields.fromJsonColor(json['onWarning']),
      appBarBackgroundColor:
          AWThemeFields.fromJsonColor(json['appBarBackgroundColor']),
      appBarIconColor: AWThemeFields.fromJsonColor(json['appBarIconColor']),
      appBarTextColor: AWThemeFields.fromJsonColor(json['appBarTextColor']),
      appBarShadowColor: AWThemeFields.fromJsonColor(json['appBarShadowColor']),
      appBarElevation:
          AWThemeFields.fromJsonAppBarElevation(json['appBarElevation']),
      scaffoldBackgroundColor:
          AWThemeFields.fromJsonColor(json['scaffoldBackgroundColor']),
      textFieldsType: $enumDecodeNullable(
              _$AWThemeTextFieldTypeEnumMap, json['textFieldsType']) ??
          AWThemeTextFieldType.filled,
      textFieldsBorderRadius:
          AWThemeFields.fromJsonTextFieldRadius(json['textFieldsBorderRadius']),
      textFieldsBorderWidth: AWThemeFields.fromJsonTextFieldBorderWidth(
          json['textFieldsBorderWidth']),
      textFieldsBorderColor:
          AWThemeFields.fromJsonColor(json['textFieldsBorderColor']),
      textFieldsLabelColor:
          AWThemeFields.fromJsonColor(json['textFieldsLabelColor']),
      textFieldsLabelFontSize: AWThemeFields.fromJsonTextFieldLabelFontSize(
          json['textFieldsLabelFontSize']),
      textFieldsLabelFontWeight: AWThemeFields.fromJsonTextFieldLabelFontWeight(
          json['textFieldsLabelFontWeight']),
      textFieldsPadding: AbdSpacing.fromJson(
          json['textFieldsPadding'] as Map<String, dynamic>),
      buttonBorderRadius:
          AWThemeFields.fromJsonButtonRadius(json['buttonBorderRadius']),
      dividerColor: AWThemeFields.fromJsonColor(json['dividerColor']),
      brightnessLight:
          AWThemeFields.fromJsonBrightness(json['brightnessLight']),
      brightnessDark: AWThemeFields.fromJsonBrightness(json['brightnessDark']),
      cardColor: AWThemeFields.fromJsonColor(json['cardColor']),
    );

Map<String, dynamic> _$AWThemeFieldsToJson(AWThemeFields instance) {
  final val = <String, dynamic>{
    'fontFamily': instance.fontFamily,
    'fontFamilyBody': instance.fontFamilyBody,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('displayColor', instance.displayColor?.toJson());
  writeNotNull('bodyColor', instance.bodyColor?.toJson());
  writeNotNull('primary', instance.primary?.toJson());
  writeNotNull('primaryVariant', instance.primaryVariant?.toJson());
  writeNotNull('onPrimary', instance.onPrimary?.toJson());
  writeNotNull('secondary', instance.secondary?.toJson());
  writeNotNull('secondaryVariant', instance.secondaryVariant?.toJson());
  writeNotNull('onSecondary', instance.onSecondary?.toJson());
  writeNotNull('surface', instance.surface?.toJson());
  writeNotNull('onSurface', instance.onSurface?.toJson());
  writeNotNull('background', instance.background?.toJson());
  writeNotNull('onBackground', instance.onBackground?.toJson());
  writeNotNull('error', instance.error?.toJson());
  writeNotNull('onError', instance.onError?.toJson());
  writeNotNull('success', instance.success?.toJson());
  writeNotNull('onSuccess', instance.onSuccess?.toJson());
  writeNotNull('warning', instance.warning?.toJson());
  writeNotNull('onWarning', instance.onWarning?.toJson());
  writeNotNull(
      'appBarBackgroundColor', instance.appBarBackgroundColor?.toJson());
  writeNotNull('appBarIconColor', instance.appBarIconColor?.toJson());
  writeNotNull('appBarTextColor', instance.appBarTextColor?.toJson());
  writeNotNull('appBarShadowColor', instance.appBarShadowColor?.toJson());
  val['appBarElevation'] = instance.appBarElevation;
  writeNotNull(
      'scaffoldBackgroundColor', instance.scaffoldBackgroundColor?.toJson());
  val['textFieldsType'] =
      _$AWThemeTextFieldTypeEnumMap[instance.textFieldsType]!;
  val['textFieldsBorderRadius'] = instance.textFieldsBorderRadius;
  val['textFieldsBorderWidth'] = instance.textFieldsBorderWidth;
  writeNotNull(
      'textFieldsBorderColor', instance.textFieldsBorderColor?.toJson());
  writeNotNull('textFieldsLabelColor', instance.textFieldsLabelColor?.toJson());
  val['textFieldsLabelFontSize'] = instance.textFieldsLabelFontSize;
  val['textFieldsLabelFontWeight'] =
      AWThemeFields.toJsonTextFieldLabelFontWeight(
          instance.textFieldsLabelFontWeight);
  val['textFieldsPadding'] = instance.textFieldsPadding.toJson();
  val['buttonBorderRadius'] = instance.buttonBorderRadius;
  writeNotNull('dividerColor', instance.dividerColor?.toJson());
  val['brightnessLight'] =
      AWThemeFields.toJsonBrightness(instance.brightnessLight);
  val['brightnessDark'] =
      AWThemeFields.toJsonBrightness(instance.brightnessDark);
  writeNotNull('cardColor', instance.cardColor?.toJson());
  return val;
}

const _$AWThemeTextFieldTypeEnumMap = {
  AWThemeTextFieldType.filled: 'filled',
  AWThemeTextFieldType.outlined: 'outlined',
};
