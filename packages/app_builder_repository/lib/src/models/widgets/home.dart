import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'home.g.dart';

@JsonEnum()
enum ASHomeTypeAppbar {
  @JsonValue('floating')
  floating,
  @JsonValue('fixed')
  fixed,
  @JsonValue('scroll')
  scroll,
}

@JsonEnum()
enum ASHomeTypeTitleAppbar {
  @JsonValue('image')
  image,
  @JsonValue('text')
  text,
  @JsonValue('location')
  location,
  @JsonValue('none')
  none,
}

/// Home configs
@JsonSerializable(explicitToJson: true)
class ASHomeConfigs {
  @JsonKey(fromJson: fromJsonTrue)
  final bool extendBody;

  @JsonKey(fromJson: fromJsonTrue)
  final bool extendBodyBehindAppBar;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableStackLayout;

  @JsonKey(fromJson: fromJsonInitSize)
  final double initialChildSize;

  @JsonKey(fromJson: fromJsonMinStack)
  final double minHeightStack;

  @JsonKey(fromJson: fromJsonMaxStack)
  final double maxHeightStack;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableAppbar;

  @JsonKey(defaultValue: ASHomeTypeAppbar.floating)
  final ASHomeTypeAppbar appBarType;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? appbarColorOnTop;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? iconAppbarColorOnTop;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableSidebar;

  @JsonKey(fromJson: fromJsonIcon, includeIfNull: false)
  final AbdIcon? iconSideBar;

  @JsonKey(fromJson: fromJsonImage, includeIfNull: false)
  final AbdImage? imageSidebar;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableShadowSideBar;

  @JsonKey(includeIfNull: false)
  final ASHomeTypeTitleAppbar? typeTitle;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableLogo;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableLocation;

  @JsonKey(fromJson: fromJsonTrue)
  final bool centerLogo;

  @JsonKey(fromJson: fromJsonText, includeIfNull: false)
  final AbdText? logoText;

  @JsonKey(fromJson: fromJsonLogoWidth)
  final double logoWidth;

  @JsonKey(fromJson: fromJsonLogoHeight)
  final double logoHeight;

  @JsonKey(fromJson: fromJsonImage, includeIfNull: false)
  final AbdImage? imageLogo;

  @JsonKey(fromJson: fromJsonImage, includeIfNull: false)
  final AbdImage? imageLogoDark;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableBlogSearch;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableBlogWishlist;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableProductSearch;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableProductWishlist;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableNotification;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableCart;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableNumberCart;

  @JsonKey(fromJson: fromJsonIcon, includeIfNull: false)
  final AbdIcon? iconCart;

  @JsonKey(fromJson: fromJsonImage, includeIfNull: false)
  final AbdImage? imageCart;

  const ASHomeConfigs({
    required this.extendBody,
    required this.extendBodyBehindAppBar,
    required this.enableStackLayout,
    required this.initialChildSize,
    required this.minHeightStack,
    required this.maxHeightStack,
    required this.enableAppbar,
    required this.appBarType,
    required this.enableSidebar,
    required this.enableShadowSideBar,
    required this.enableLogo,
    required this.enableLocation,
    required this.centerLogo,
    required this.logoWidth,
    required this.logoHeight,
    required this.enableProductSearch,
    required this.enableBlogSearch,
    required this.enableBlogWishlist,
    required this.enableProductWishlist,
    required this.enableNotification,
    required this.enableCart,
    required this.enableNumberCart,
    this.appbarColorOnTop,
    this.iconAppbarColorOnTop,
    this.iconSideBar,
    this.imageSidebar,
    this.typeTitle,
    this.logoText,
    this.imageLogo,
    this.imageLogoDark,
    this.iconCart,
    this.imageCart,
  });

  /// Connect the generated [_$ASHomeConfigsFromJson] function to the `fromJson`
  /// factory.
  factory ASHomeConfigs.fromJson(Map<String, dynamic> json) => _$ASHomeConfigsFromJson(json);

  /// Connect the generated [_$ASHomeFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASHomeConfigsToJson(this);

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static bool fromJsonFalse(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static double fromJsonInitSize(dynamic value) {
    return ConvertData.stringToDouble(value, 0.5);
  }

  static double fromJsonMinStack(dynamic value) {
    return ConvertData.stringToDouble(value, 0.5);
  }

  static double fromJsonMaxStack(dynamic value) {
    return ConvertData.stringToDouble(value, 1);
  }

  static double fromJsonLogoWidth(dynamic value) {
    return ConvertData.stringToDouble(value, 122);
  }

  static double fromJsonLogoHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 50);
  }

  static AbdColor? fromJsonColor(dynamic value) {
    if (value is Map) {
      return AbdColor.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static AbdIcon? fromJsonIcon(dynamic value) {
    if (value is Map) {
      return AbdIcon.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static AbdImage? fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static AbdText? fromJsonText(dynamic value) {
    if (value is Map) {
      return AbdText.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }
}
