// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWGeneral _$AWGeneralFromJson(Map<String, dynamic> json) => AWGeneral(
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      fields: AWGeneral.fromJsonFields(json['fields']),
    );

Map<String, dynamic> _$AWGeneralToJson(AWGeneral instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
    };

AWGeneralFields _$AWGeneralFieldsFromJson(Map<String, dynamic> json) => AWGeneralFields(
      enableSelectLanguage: AWGeneralFields.fromJsonBoolTrue(json['enableSelectLanguage']),
      enableLocationScreen: AWGeneralFields.fromJsonBoolFalse(json['enableLocationScreen']),
      loginView: $enumDecodeNullable(_$AWGeneralLoginViewEnumMap, json['loginView']) ?? AWGeneralLoginView.email,
      enableRegister: AWGeneralFields.fromJsonBoolTrue(json['enableRegister']),
      forceLogin: AWGeneralFields.fromJsonBoolFalse(json['forceLogin']),
      forceLoginMobile: AWGeneralFields.fromJsonBoolFalse(json['forceLoginMobile']),
      forceLoginCheckout: AWGeneralFields.fromJsonBoolFalse(json['forceLoginCheckout']),
      forceLoginAddToCart: AWGeneralFields.fromJsonBoolFalse(json['forceLoginAddToCart']),
      enableOnBoarding: AWGeneralFields.fromJsonBoolTrue(json['enableOnBoarding']),
      enableProductQuickView: AWGeneralFields.fromJsonBoolFalse(json['enableProductQuickView']),
      enableCaptchaLogin: AWGeneralFields.fromJsonBoolTrue(json['enableCaptchaLogin']),
      enableCaptchaRegister: AWGeneralFields.fromJsonBoolTrue(json['enableCaptchaRegister']),
      enableCaptchaReviewProduct: AWGeneralFields.fromJsonBoolTrue(json['enableCaptchaReviewProduct']),
      enableCaptchaCommentPost: AWGeneralFields.fromJsonBoolTrue(json['enableCaptchaCommentPost']),
      productItemLabelEnableNew: AWGeneralFields.fromJsonBoolTrue(json['productItemLabelEnableNew']),
      productItemLabelEnableSale: AWGeneralFields.fromJsonBoolTrue(json['productItemLabelEnableSale']),
      productItemLabelEnableRating: AWGeneralFields.fromJsonBoolTrue(json['productItemLabelEnableRating']),
      productItemEnableQuantity: AWGeneralFields.fromJsonBoolFalse(json['productItemEnableQuantity']),
      productItemEnableAddCart: AWGeneralFields.fromJsonBoolTrue(json['productItemEnableAddCart']),
      loginProvider: $enumDecodeNullable(_$AWGeneralLoginProviderEnumMap, json['loginProvider']) ??
          AWGeneralLoginProvider.firebase,
      initCodeCountry: json['initCodeCountry'] as String? ?? 'US',
      includeCountry: AWGeneralFields.fromJsonListString(json['includeCountry']),
      excludeCountry: AWGeneralFields.fromJsonListString(json['excludeCountry']),
      customCheckout: AWGeneralFields.fromJsonBoolFalse(json['customCheckout']),
      pickupAddress: AWGeneralFields.fromJsonBoolFalse(json['pickupAddress']),
      enableStickyBanner: AWGeneralFields.fromJsonBoolFalse(json['enableStickyBanner']),
      itemStickyBanner:
          json['itemStickyBanner'] == null ? [] : AWGeneralFields.fromJsonListMap(json['itemStickyBanner']),
    );

Map<String, dynamic> _$AWGeneralFieldsToJson(AWGeneralFields instance) => <String, dynamic>{
      'enableSelectLanguage': instance.enableSelectLanguage,
      'enableLocationScreen': instance.enableLocationScreen,
      'loginView': _$AWGeneralLoginViewEnumMap[instance.loginView]!,
      'enableRegister': instance.enableRegister,
      'forceLogin': instance.forceLogin,
      'forceLoginMobile': instance.forceLoginMobile,
      'forceLoginCheckout': instance.forceLoginCheckout,
      'forceLoginAddToCart': instance.forceLoginAddToCart,
      'enableOnBoarding': instance.enableOnBoarding,
      'enableProductQuickView': instance.enableProductQuickView,
      'enableCaptchaLogin': instance.enableCaptchaLogin,
      'enableCaptchaRegister': instance.enableCaptchaRegister,
      'enableCaptchaReviewProduct': instance.enableCaptchaReviewProduct,
      'enableCaptchaCommentPost': instance.enableCaptchaCommentPost,
      'productItemLabelEnableNew': instance.productItemLabelEnableNew,
      'productItemLabelEnableSale': instance.productItemLabelEnableSale,
      'productItemLabelEnableRating': instance.productItemLabelEnableRating,
      'productItemEnableQuantity': instance.productItemEnableQuantity,
      'productItemEnableAddCart': instance.productItemEnableAddCart,
      'loginProvider': _$AWGeneralLoginProviderEnumMap[instance.loginProvider]!,
      'initCodeCountry': instance.initCodeCountry,
      'includeCountry': instance.includeCountry,
      'excludeCountry': instance.excludeCountry,
      'customCheckout': instance.customCheckout,
      'pickupAddress': instance.pickupAddress,
      'enableStickyBanner': instance.enableStickyBanner,
      'itemStickyBanner': instance.itemStickyBanner.map((e) => e.toJson()).toList(),
    };

const _$AWGeneralLoginViewEnumMap = {
  AWGeneralLoginView.email: 'email',
  AWGeneralLoginView.phoneNumber: 'phone-number',
};

const _$AWGeneralLoginProviderEnumMap = {
  AWGeneralLoginProvider.firebase: 'firebase',
  AWGeneralLoginProvider.digits: 'digits',
};

StickyBannerItem _$StickyBannerItemFromJson(Map<String, dynamic> json) => StickyBannerItem(
      template: json['template'] as String? ?? 'default',
      active: StickyBannerItem.fromJsonAction(json['active']),
      data: AWStickyBannerData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StickyBannerItemToJson(StickyBannerItem instance) => <String, dynamic>{
      'template': instance.template,
      'active': instance.active,
      'data': instance.data.toJson(),
    };

AWStickyBannerData _$AWStickyBannerDataFromJson(Map<String, dynamic> json) => AWStickyBannerData(
      position: AbdPosition.fromJson(json['position'] as Map<String, dynamic>),
      fit: AWStickyBannerData.fromJsonBoxFit(json['fit']),
      shadowColor: json['shadowColor'] == null ? null : AbdColor.fromJson(json['shadowColor'] as Map<String, dynamic>),
      image: AWStickyBannerData.fromJsonImage(json['image']),
      imageSize: AWStickyBannerData.fromJsonImageSize(json['imageSize']),
      action: json['action'] == null ? null : AbdAction.fromJson(json['action'] as Map<String, dynamic>),
      radius: ConvertData.stringToDoubleCanBeNull(json['radius']),
      delay: ConvertData.stringToIntCanBeNull(json['delay']),
      elevation: ConvertData.stringToDoubleCanBeNull(json['elevation']),
      enableDragable: json['enableDragable'] as bool?,
    );

Map<String, dynamic> _$AWStickyBannerDataToJson(AWStickyBannerData instance) {
  final val = <String, dynamic>{
    'position': instance.position.toJson(),
    'fit': _$BoxFitEnumMap[instance.fit],
    'delay': instance.delay,
    'enableDragable': instance.enableDragable,
    'radius': instance.radius,
    'elevation': instance.elevation,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shadowColor', instance.shadowColor?.toJson());
  writeNotNull('image', instance.image?.toJson());
  writeNotNull('imageSize', AWStickyBannerData.toJsonSize(instance.imageSize));
  writeNotNull('action', instance.action?.toJson());
  return val;
}

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
};
