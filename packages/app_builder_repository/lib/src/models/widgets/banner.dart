import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'banner.g.dart';

enum AWBannerLayout {
  @JsonValue('list')
  list,
  @JsonValue('carousel')
  carousel,
  @JsonValue('masonry')
  masonry,
  @JsonValue('slideshow')
  slideshow,
  @JsonValue('grid')
  grid,
  @JsonValue('multi')
  multi,
  @JsonValue('one')
  one,
}

enum AWBannerTemplateType {
  @JsonValue('default')
  defaultBanner,
  @JsonValue('style1')
  style1Banner,
  @JsonValue('style2')
  style2Banner,
  @JsonValue('style3')
  style3Banner,
  @JsonValue('style4')
  style4Banner,
  @JsonValue('style5')
  style5Banner,
  @JsonValue('style6')
  style6Banner,
  @JsonValue('style7')
  style7Banner,
  @JsonValue('style8')
  style8Banner,
  @JsonValue('style9')
  style9Banner,
}

@JsonSerializable(explicitToJson: true)
class AWBanner {
  final String id;

  final String type;

  final AWBannerFields fields;

  @JsonKey(defaultValue: AWBannerLayout.list)
  final AWBannerLayout layout;

  final AWBannerStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWBanner({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWBannerFromJson] function to the `fromJson`
  /// factory.
  factory AWBanner.fromJson(Map<String, dynamic> json) => _$AWBannerFromJson(json);

  /// Connect the generated [_$AWBannerToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBannerToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWBannerFields {
  @JsonKey(fromJson: fromJsonSize, toJson: ConvertData.toMapSize)
  final Size size;

  @JsonKey(fromJson: fromJsonScale)
  final bool enableScaleWidth;

  @JsonKey(defaultValue: [])
  final List<AWBannerTemplate> items;

  const AWBannerFields({
    required this.size,
    required this.enableScaleWidth,
    required this.items,
  });

  /// Connect the generated [_$AWBannerFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWBannerFields.fromJson(Map<String, dynamic> json) => _$AWBannerFieldsFromJson(json);

  /// Connect the generated [_$AWBannerFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBannerFieldsToJson(this);

  static Size fromJsonSize(dynamic value) {
    return ConvertData.toSizeValue(value, const Size(375, 330));
  }

  static bool fromJsonScale(dynamic value) {
    return ConvertData.toBoolValue(value) ?? true;
  }
}

/// Banner style
@JsonSerializable(explicitToJson: true)
class AWBannerStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: fromJsonImage)
  final AbdImage backgroundImage;

  @JsonKey(fromJson: fromJsonPad)
  final double pad;

  @JsonKey(fromJson: fromJsonHeight)
  final double height;

  @JsonKey(fromJson: fromJsonColumn)
  final int col;

  @JsonKey(fromJson: fromJsonRatio)
  final double ratio;

  final AbdColor? indicatorColor;

  final AbdColor? indicatorActiveColor;

  @JsonKey(name: 'backgroundColorItem')
  final AbdColor? backgroundItem;

  @JsonKey(name: 'radius', fromJson: fromJsonRadiusItem)
  final double radiusItem;

  const AWBannerStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.backgroundImage,
    required this.pad,
    required this.height,
    required this.col,
    required this.ratio,
    required this.indicatorColor,
    required this.indicatorActiveColor,
    required this.backgroundItem,
    required this.radiusItem,
  });

  /// Connect the generated [_$AWBannerStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWBannerStyle.fromJson(Map<String, dynamic> json) => _$AWBannerStyleFromJson(json);

  /// Connect the generated [_$AWBannerStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBannerStyleToJson(this);

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value, 12);
  }

  static double fromJsonHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 300);
  }

  static int fromJsonColumn(dynamic value) {
    return ConvertData.stringToInt(value, 2);
  }

  static double fromJsonRatio(dynamic value) {
    return ConvertData.stringToDouble(value, 1);
  }

  static double fromJsonRadiusItem(dynamic value) {
    return ConvertData.stringToDouble(value);
  }

  static AbdImage fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return AbdImage.fromJson({});
  }
}

/// Banner template item
@JsonSerializable(explicitToJson: true)
class AWBannerTemplate {
  final AWBannerTemplateType template;

  final AWBannerDataTemplate data;

  const AWBannerTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWBannerTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWBannerTemplate.fromJson(Map<String, dynamic> json) => _$AWBannerTemplateFromJson(json);

  /// Connect the generated [_$AWBannerTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBannerTemplateToJson(this);
}

/// Banner data template item
@JsonSerializable(explicitToJson: true)
class AWBannerDataTemplate {
  final String? alignment;

  @JsonKey(fromJson: fromJsonImage)
  final AbdImage image;

  @JsonKey(fromJson: ConvertData.toBoxFit)
  final BoxFit imageSize;

  final AbdAction action;

  @JsonKey(includeIfNull: false)
  final AbdText? text1;

  @JsonKey(includeIfNull: false)
  final AbdText? text2;

  @JsonKey(includeIfNull: false)
  final AbdText? text3;

  @JsonKey(includeIfNull: false)
  final AbdText? textButton;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableButton;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? radiusImage;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableRoundImage;

  const AWBannerDataTemplate({
    required this.image,
    required this.imageSize,
    required this.action,
    this.alignment,
    this.text1,
    this.text2,
    this.text3,
    this.textButton,
    this.radiusImage,
    this.enableRoundImage,
    this.enableButton,
  });

  /// Connect the generated [_$AWBannerDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWBannerDataTemplate.fromJson(Map<String, dynamic> json) => _$AWBannerDataTemplateFromJson(json);

  /// Connect the generated [_$AWBannerDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBannerDataTemplateToJson(this);

  static AbdImage fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return AbdImage.fromJson({});
  }
}
