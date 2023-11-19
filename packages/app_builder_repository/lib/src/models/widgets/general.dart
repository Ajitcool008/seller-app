import 'dart:core';

import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'general.g.dart';

enum AWGeneralLoginView {
  @JsonValue('email')
  email,
  @JsonValue('phone-number')
  phoneNumber,
}

enum AWGeneralLoginProvider {
  @JsonValue('firebase')
  firebase,
  @JsonValue('digits')
  digits,
}

@JsonSerializable(explicitToJson: true)
class AWGeneral {
  @JsonKey(defaultValue: '')
  final String id;

  @JsonKey(defaultValue: '')
  final String type;

  @JsonKey(fromJson: fromJsonFields)
  final AWGeneralFields fields;

  const AWGeneral({
    required this.id,
    required this.type,
    required this.fields,
  });

  /// Connect the generated [_$AWGeneralFromJson] function to the `fromJson`
  /// factory.
  factory AWGeneral.fromJson(Map<String, dynamic> json) => _$AWGeneralFromJson(json);

  /// Connect the generated [_$AWGeneralToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWGeneralToJson(this);

  static AWGeneralFields fromJsonFields(dynamic value) {
    return AWGeneralFields.fromJson(ConvertData.toMapStringDynamic(value) ?? {});
  }
}

/// General fields config
@JsonSerializable(explicitToJson: true)
class AWGeneralFields {
  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableSelectLanguage;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool enableLocationScreen;

  @JsonKey(defaultValue: AWGeneralLoginView.email)
  final AWGeneralLoginView loginView;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableRegister;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool forceLogin;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool forceLoginMobile;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool forceLoginCheckout;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool forceLoginAddToCart;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableOnBoarding;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool enableProductQuickView;

  /// Captcha
  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableCaptchaLogin;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableCaptchaRegister;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableCaptchaReviewProduct;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableCaptchaCommentPost;

  /// Product item
  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool productItemLabelEnableNew;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool productItemLabelEnableSale;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool productItemLabelEnableRating;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool productItemEnableQuantity;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool productItemEnableAddCart;

  /// Input mobile
  @JsonKey(defaultValue: AWGeneralLoginProvider.firebase)
  final AWGeneralLoginProvider loginProvider;

  @JsonKey(defaultValue: "US")
  final String initCodeCountry;

  @JsonKey(fromJson: fromJsonListString)
  final List<String> includeCountry;

  @JsonKey(fromJson: fromJsonListString)
  final List<String> excludeCountry;

  /// Checkout
  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool customCheckout;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool pickupAddress;

  /// Sticky banner
  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool enableStickyBanner;

  @JsonKey(fromJson: fromJsonListMap, defaultValue: <Map<String, dynamic>>[])
  final List<StickyBannerItem> itemStickyBanner;

  const AWGeneralFields({
    required this.enableSelectLanguage,
    required this.enableLocationScreen,
    required this.loginView,
    required this.enableRegister,
    required this.forceLogin,
    required this.forceLoginMobile,
    required this.forceLoginCheckout,
    required this.forceLoginAddToCart,
    required this.enableOnBoarding,
    required this.enableProductQuickView,
    required this.enableCaptchaLogin,
    required this.enableCaptchaRegister,
    required this.enableCaptchaReviewProduct,
    required this.enableCaptchaCommentPost,
    required this.productItemLabelEnableNew,
    required this.productItemLabelEnableSale,
    required this.productItemLabelEnableRating,
    required this.productItemEnableQuantity,
    required this.productItemEnableAddCart,
    required this.loginProvider,
    required this.initCodeCountry,
    required this.includeCountry,
    required this.excludeCountry,
    required this.customCheckout,
    required this.pickupAddress,
    required this.enableStickyBanner,
    required this.itemStickyBanner,
  });

  /// Connect the generated [_$AWGeneralFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWGeneralFields.fromJson(Map<String, dynamic> json) => _$AWGeneralFieldsFromJson(json);

  /// Connect the generated [_$AWGeneralFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWGeneralFieldsToJson(this);

  static bool fromJsonBoolFalse(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static bool fromJsonBoolTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static List<String> fromJsonListString(dynamic value) {
    return List<String>.from(value is List ? value : []);
  }

  static List<StickyBannerItem> fromJsonListMap(dynamic value) {
    if (value is List) {
      return value.map((e) => StickyBannerItem.fromJson(e)).toList();
    }
    return [];
  }
}

@JsonSerializable(explicitToJson: true)
class StickyBannerItem {
  @JsonKey(defaultValue: 'default')
  final String template;

  @JsonKey(fromJson: fromJsonAction)
  final bool active;

  final AWStickyBannerData data;

  const StickyBannerItem({
    required this.template,
    required this.active,
    required this.data,
  });

  /// Connect the generated [_$AWStickyBannerFromJson] function to the `fromJson`
  /// factory.
  factory StickyBannerItem.fromJson(Map<String, dynamic> json) => _$StickyBannerItemFromJson(json);

  /// Connect the generated [_$AWStickyBannerToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$StickyBannerItemToJson(this);

  static bool fromJsonAction(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

@JsonSerializable(explicitToJson: true)
class AWStickyBannerData {
  final AbdPosition position;

  @JsonKey(fromJson: fromJsonBoxFit)
  final BoxFit? fit;

  @JsonKey(fromJson: ConvertData.stringToIntCanBeNull)
  final int? delay;

  final bool? enableDragable;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? radius;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? elevation;

  @JsonKey(includeIfNull: false)
  final AbdColor? shadowColor;

  @JsonKey(fromJson: fromJsonImage, includeIfNull: false)
  final AbdImage? image;

  @JsonKey(fromJson: fromJsonImageSize, toJson: toJsonSize, includeIfNull: false)
  final Size? imageSize;

  @JsonKey(includeIfNull: false)
  final AbdAction? action;

  const AWStickyBannerData({
    required this.position,
    this.fit,
    this.shadowColor,
    this.image,
    this.imageSize,
    this.action,
    this.radius,
    this.delay,
    this.elevation,
    this.enableDragable,
  });

  /// Connect the generated [_$AWStickyBannerDataFromJson] function to the `fromJson`
  /// factory.
  factory AWStickyBannerData.fromJson(Map<String, dynamic> json) => _$AWStickyBannerDataFromJson(json);

  /// Connect the generated [_$AWStickyBannerDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWStickyBannerDataToJson(this);

  static AbdImage? fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static Size? fromJsonImageSize(dynamic value) {
    if (value is Map) {
      return ConvertData.toSizeValue(value, const Size(32, 32));
    }
    return null;
  }

  static dynamic toJsonSize(Size? value) {
    if (value is Size) {
      return ConvertData.toMapSize(value);
    }
    return null;
  }

  static dynamic fromJsonBoxFit(dynamic value) {
    if (value is BoxFit) {
      return value;
    }

    if (value is String && value.isNotEmpty) {
      return ConvertData.toBoxFit(value);
    }

    return null;
  }
}
