// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ASHomeConfigs _$ASHomeConfigsFromJson(Map<String, dynamic> json) =>
    ASHomeConfigs(
      extendBody: ASHomeConfigs.fromJsonTrue(json['extendBody']),
      extendBodyBehindAppBar:
          ASHomeConfigs.fromJsonTrue(json['extendBodyBehindAppBar']),
      enableStackLayout: ASHomeConfigs.fromJsonFalse(json['enableStackLayout']),
      initialChildSize:
          ASHomeConfigs.fromJsonInitSize(json['initialChildSize']),
      minHeightStack: ASHomeConfigs.fromJsonMinStack(json['minHeightStack']),
      maxHeightStack: ASHomeConfigs.fromJsonMaxStack(json['maxHeightStack']),
      enableAppbar: ASHomeConfigs.fromJsonTrue(json['enableAppbar']),
      appBarType:
          $enumDecodeNullable(_$ASHomeTypeAppbarEnumMap, json['appBarType']) ??
              ASHomeTypeAppbar.floating,
      enableSidebar: ASHomeConfigs.fromJsonTrue(json['enableSidebar']),
      enableShadowSideBar:
          ASHomeConfigs.fromJsonFalse(json['enableShadowSideBar']),
      enableLogo: ASHomeConfigs.fromJsonTrue(json['enableLogo']),
      enableLocation: ASHomeConfigs.fromJsonFalse(json['enableLocation']),
      centerLogo: ASHomeConfigs.fromJsonTrue(json['centerLogo']),
      logoWidth: ASHomeConfigs.fromJsonLogoWidth(json['logoWidth']),
      logoHeight: ASHomeConfigs.fromJsonLogoHeight(json['logoHeight']),
      enableProductSearch:
          ASHomeConfigs.fromJsonFalse(json['enableProductSearch']),
      enableBlogSearch: ASHomeConfigs.fromJsonFalse(json['enableBlogSearch']),
      enableBlogWishlist:
          ASHomeConfigs.fromJsonFalse(json['enableBlogWishlist']),
      enableProductWishlist:
          ASHomeConfigs.fromJsonFalse(json['enableProductWishlist']),
      enableNotification:
          ASHomeConfigs.fromJsonFalse(json['enableNotification']),
      enableCart: ASHomeConfigs.fromJsonFalse(json['enableCart']),
      enableNumberCart: ASHomeConfigs.fromJsonTrue(json['enableNumberCart']),
      appbarColorOnTop: ASHomeConfigs.fromJsonColor(json['appbarColorOnTop']),
      iconAppbarColorOnTop:
          ASHomeConfigs.fromJsonColor(json['iconAppbarColorOnTop']),
      iconSideBar: ASHomeConfigs.fromJsonIcon(json['iconSideBar']),
      imageSidebar: ASHomeConfigs.fromJsonImage(json['imageSidebar']),
      typeTitle: $enumDecodeNullable(
          _$ASHomeTypeTitleAppbarEnumMap, json['typeTitle']),
      logoText: ASHomeConfigs.fromJsonText(json['logoText']),
      imageLogo: ASHomeConfigs.fromJsonImage(json['imageLogo']),
      imageLogoDark: ASHomeConfigs.fromJsonImage(json['imageLogoDark']),
      iconCart: ASHomeConfigs.fromJsonIcon(json['iconCart']),
      imageCart: ASHomeConfigs.fromJsonImage(json['imageCart']),
    );

Map<String, dynamic> _$ASHomeConfigsToJson(ASHomeConfigs instance) {
  final val = <String, dynamic>{
    'extendBody': instance.extendBody,
    'extendBodyBehindAppBar': instance.extendBodyBehindAppBar,
    'enableStackLayout': instance.enableStackLayout,
    'initialChildSize': instance.initialChildSize,
    'minHeightStack': instance.minHeightStack,
    'maxHeightStack': instance.maxHeightStack,
    'enableAppbar': instance.enableAppbar,
    'appBarType': _$ASHomeTypeAppbarEnumMap[instance.appBarType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appbarColorOnTop', instance.appbarColorOnTop?.toJson());
  writeNotNull('iconAppbarColorOnTop', instance.iconAppbarColorOnTop?.toJson());
  val['enableSidebar'] = instance.enableSidebar;
  writeNotNull('iconSideBar', instance.iconSideBar?.toJson());
  writeNotNull('imageSidebar', instance.imageSidebar?.toJson());
  val['enableShadowSideBar'] = instance.enableShadowSideBar;
  writeNotNull('typeTitle', _$ASHomeTypeTitleAppbarEnumMap[instance.typeTitle]);
  val['enableLogo'] = instance.enableLogo;
  val['enableLocation'] = instance.enableLocation;
  val['centerLogo'] = instance.centerLogo;
  writeNotNull('logoText', instance.logoText?.toJson());
  val['logoWidth'] = instance.logoWidth;
  val['logoHeight'] = instance.logoHeight;
  writeNotNull('imageLogo', instance.imageLogo?.toJson());
  writeNotNull('imageLogoDark', instance.imageLogoDark?.toJson());
  val['enableBlogSearch'] = instance.enableBlogSearch;
  val['enableBlogWishlist'] = instance.enableBlogWishlist;
  val['enableProductSearch'] = instance.enableProductSearch;
  val['enableProductWishlist'] = instance.enableProductWishlist;
  val['enableNotification'] = instance.enableNotification;
  val['enableCart'] = instance.enableCart;
  val['enableNumberCart'] = instance.enableNumberCart;
  writeNotNull('iconCart', instance.iconCart?.toJson());
  writeNotNull('imageCart', instance.imageCart?.toJson());
  return val;
}

const _$ASHomeTypeAppbarEnumMap = {
  ASHomeTypeAppbar.floating: 'floating',
  ASHomeTypeAppbar.fixed: 'fixed',
  ASHomeTypeAppbar.scroll: 'scroll',
};

const _$ASHomeTypeTitleAppbarEnumMap = {
  ASHomeTypeTitleAppbar.image: 'image',
  ASHomeTypeTitleAppbar.text: 'text',
  ASHomeTypeTitleAppbar.location: 'location',
  ASHomeTypeTitleAppbar.none: 'none',
};
