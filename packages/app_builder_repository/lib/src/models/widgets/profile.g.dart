// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APProfile _$APProfileFromJson(Map<String, dynamic> json) => APProfile(
      id: json['id'] as String,
      fields: APProfileFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: APProfileStyle.fromJson(json['styles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APProfileToJson(APProfile instance) => <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
    };

APProfileFields _$APProfileFieldsFromJson(Map<String, dynamic> json) =>
    APProfileFields(
      enableChangeTheme: json['enableChangeTheme'] as bool?,
      enableWallet: json['enableWallet'] as bool?,
      enablePhone: json['enablePhone'] as bool?,
      enableDownload: json['enableDownload'] as bool?,
      enableHelpInfo: json['enableHelpInfo'] as bool?,
      phone: json['phone'] == null
          ? null
          : AbdText.fromJson(json['phone'] as Map<String, dynamic>),
      textCopyRight: json['textCopyRight'] == null
          ? null
          : AbdText.fromJson(json['textCopyRight'] as Map<String, dynamic>),
      itemInfo: (json['itemInfo'] as List<dynamic>?)
              ?.map((e) =>
                  APProfileFieldItemInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      itemSocial: (json['itemSocial'] as List<dynamic>?)
              ?.map((e) =>
                  APProfileFieldItemSocial.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$APProfileFieldsToJson(APProfileFields instance) =>
    <String, dynamic>{
      'enableChangeTheme': instance.enableChangeTheme,
      'enableWallet': instance.enableWallet,
      'enablePhone': instance.enablePhone,
      'enableDownload': instance.enableDownload,
      'enableHelpInfo': instance.enableHelpInfo,
      'phone': instance.phone?.toJson(),
      'textCopyRight': instance.textCopyRight?.toJson(),
      'itemInfo': instance.itemInfo.map((e) => e.toJson()).toList(),
      'itemSocial': instance.itemSocial.map((e) => e.toJson()).toList(),
    };

APProfileStyle _$APProfileStyleFromJson(Map<String, dynamic> json) =>
    APProfileStyle(
      padding: json['padding'] == null
          ? null
          : AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APProfileStyleToJson(APProfileStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding?.toJson(),
    };

APProfileFieldItemInfo _$APProfileFieldItemInfoFromJson(
        Map<String, dynamic> json) =>
    APProfileFieldItemInfo(
      data: APProfileFieldItemInfoData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APProfileFieldItemInfoToJson(
        APProfileFieldItemInfo instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

APProfileFieldItemInfoData _$APProfileFieldItemInfoDataFromJson(
        Map<String, dynamic> json) =>
    APProfileFieldItemInfoData(
      title: json['title'] == null
          ? null
          : AbdText.fromJson(json['title'] as Map<String, dynamic>),
      action: json['action'] == null
          ? null
          : AbdAction.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APProfileFieldItemInfoDataToJson(
        APProfileFieldItemInfoData instance) =>
    <String, dynamic>{
      'title': instance.title?.toJson(),
      'action': instance.action?.toJson(),
    };

APProfileFieldItemSocial _$APProfileFieldItemSocialFromJson(
        Map<String, dynamic> json) =>
    APProfileFieldItemSocial(
      data: APProfileFieldItemSocialData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APProfileFieldItemSocialToJson(
        APProfileFieldItemSocial instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

APProfileFieldItemSocialData _$APProfileFieldItemSocialDataFromJson(
        Map<String, dynamic> json) =>
    APProfileFieldItemSocialData(
      linkSocial: json['linkSocial'] == null
          ? null
          : AbdText.fromJson(json['linkSocial'] as Map<String, dynamic>),
      icon: json['icon'] == null
          ? null
          : AbdIcon.fromJson(json['icon'] as Map<String, dynamic>),
      background: json['background'] == null
          ? null
          : AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      iconColor: json['iconColor'] == null
          ? null
          : AbdColor.fromJson(json['iconColor'] as Map<String, dynamic>),
      enableRound: json['enableRound'] as bool?,
      enableOutLine: json['enableOutLine'] as bool?,
    );

Map<String, dynamic> _$APProfileFieldItemSocialDataToJson(
        APProfileFieldItemSocialData instance) =>
    <String, dynamic>{
      'linkSocial': instance.linkSocial?.toJson(),
      'icon': instance.icon?.toJson(),
      'background': instance.background?.toJson(),
      'iconColor': instance.iconColor?.toJson(),
      'enableRound': instance.enableRound,
      'enableOutLine': instance.enableOutLine,
    };
