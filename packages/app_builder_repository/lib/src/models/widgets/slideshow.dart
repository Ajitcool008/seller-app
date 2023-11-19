import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'slideshow.g.dart';

enum AWSlideshowLayout {
  @JsonValue('basic')
  basic,
  @JsonValue('center_mode')
  centerMode,
  @JsonValue('stack')
  stack,
  @JsonValue('tinder')
  tinder,
  @JsonValue('rotate')
  rotate,
}

enum AWSlideshowLayerType {
  @JsonValue('text')
  text,
  @JsonValue('button')
  button,
  @JsonValue('image')
  image,
  @JsonValue('icon')
  icon,
}

@JsonSerializable(explicitToJson: true)
class AWSlideshow {
  final String id;

  final String type;

  final AWSlideshowFields fields;

  @JsonKey(defaultValue: AWSlideshowLayout.basic)
  final AWSlideshowLayout layout;

  final AWSlideshowStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWSlideshow({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWSlideshowFromJson] function to the `fromJson`
  /// factory.
  factory AWSlideshow.fromJson(Map<String, dynamic> json) => _$AWSlideshowFromJson(json);

  /// Connect the generated [_$AWSlideshowToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSlideshowToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWSlideshowFields {
  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool autoPlay;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableIndicator;

  @JsonKey(fromJson: fromJsonAutoPlayDelay)
  final int autoPlayDelay;

  @JsonKey(fromJson: fromJsonAutoPlayInterval)
  final int autoPlayInterval;

  @JsonKey(fromJson: fromJsonSize, toJson: ConvertData.toMapSize)
  final Size size;

  @JsonKey(fromJson: fromJsonScrollDirection, toJson: toJsonScrollDirection)
  final Axis scrollDirection;

  @JsonKey(defaultValue: [])
  final List<AWSlideshowTemplate> items;

  const AWSlideshowFields({
    required this.autoPlay,
    required this.enableIndicator,
    required this.autoPlayDelay,
    required this.autoPlayInterval,
    required this.size,
    required this.scrollDirection,
    required this.items,
  });

  /// Connect the generated [_$AWSlideshowFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWSlideshowFields.fromJson(Map<String, dynamic> json) => _$AWSlideshowFieldsFromJson(json);

  /// Connect the generated [_$AWSlideshowFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSlideshowFieldsToJson(this);

  static bool fromJsonBoolTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static bool fromJsonBoolFalse(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static int fromJsonAutoPlayDelay(dynamic value) {
    return ConvertData.stringToInt(value, 3000);
  }

  static int fromJsonAutoPlayInterval(dynamic value) {
    return ConvertData.stringToInt(value, 500);
  }

  static Size fromJsonSize(dynamic value) {
    return ConvertData.toSizeValue(value, const Size(375, 330));
  }

  static Axis fromJsonScrollDirection(dynamic value) {
    if (value is Axis) {
      return value;
    }
    if (value == 1) {
      return Axis.vertical;
    }
    return Axis.horizontal;
  }

  static dynamic toJsonScrollDirection(Axis value) {
    if (value == Axis.vertical) {
      return 1;
    }
    return 0;
  }
}

/// Banner style
@JsonSerializable(explicitToJson: true)
class AWSlideshowStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: fromJsonRadius)
  final double borderRadius;

  @JsonKey(fromJson: ConvertData.toAlignmentDirectional, toJson: ConvertData.toStringAlignmentDirectional)
  final AlignmentDirectional indicatorAlignment;

  final AbdColor indicatorColor;

  final AbdColor indicatorActiveColor;

  final AbdSpacing indicatorMargin;

  @JsonKey(fromJson: fromJsonIndicatorSize)
  final double indicatorSize;

  @JsonKey(fromJson: fromJsonActiveIndicatorSize)
  final double activeIndicatorSize;

  @JsonKey(fromJson: fromJsonIndicatorSpace)
  final double indicatorSpace;

  const AWSlideshowStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.borderRadius,
    required this.indicatorAlignment,
    required this.indicatorColor,
    required this.indicatorActiveColor,
    required this.indicatorMargin,
    required this.indicatorSize,
    required this.activeIndicatorSize,
    required this.indicatorSpace,
  });

  /// Connect the generated [_$AWSlideshowStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWSlideshowStyle.fromJson(Map<String, dynamic> json) => _$AWSlideshowStyleFromJson(json);

  /// Connect the generated [_$AWSlideshowStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSlideshowStyleToJson(this);

  static double fromJsonRadius(dynamic value) {
    return ConvertData.stringToDouble(value);
  }

  static double fromJsonIndicatorSize(dynamic value) {
    return ConvertData.stringToDouble(value, 6);
  }

  static double fromJsonActiveIndicatorSize(dynamic value) {
    return ConvertData.stringToDouble(value, 10);
  }

  static double fromJsonIndicatorSpace(dynamic value) {
    return ConvertData.stringToDouble(value, 4);
  }
}

/// Banner template item
@JsonSerializable(explicitToJson: true)
class AWSlideshowTemplate {
  final String template;

  final AWSlideshowDataTemplate data;

  const AWSlideshowTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWSlideshowTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWSlideshowTemplate.fromJson(Map<String, dynamic> json) => _$AWSlideshowTemplateFromJson(json);

  /// Connect the generated [_$AWSlideshowTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSlideshowTemplateToJson(this);
}

/// Banner data template item
@JsonSerializable(explicitToJson: true)
class AWSlideshowDataTemplate {
  @JsonKey(fromJson: fromJsonImage)
  final AbdImage image;

  @JsonKey(defaultValue: [])
  final List<AWSlideshowLayer> layer;

  @JsonKey(fromJson: fromJsonImageSize, toJson: toJsonImageSize, includeIfNull: false)
  final Size? imageSize;

  @JsonKey(fromJson: fromJsonFit, includeIfNull: false)
  final BoxFit? fit;

  const AWSlideshowDataTemplate({
    required this.image,
    required this.layer,
    this.imageSize,
    this.fit,
  });

  /// Connect the generated [_$AWSlideshowDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWSlideshowDataTemplate.fromJson(Map<String, dynamic> json) => _$AWSlideshowDataTemplateFromJson(json);

  /// Connect the generated [_$AWSlideshowDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSlideshowDataTemplateToJson(this);

  static AbdImage fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return AbdImage.fromJson({});
  }

  static Size? fromJsonImageSize(dynamic value) {
    if (value is Map) {
      return ConvertData.toSizeValue(value, const Size(375, 330));
    }
    return null;
  }

  static dynamic toJsonImageSize(Size? value) {
    if (value is Size) {
      return ConvertData.toMapSize(value);
    }
    return null;
  }

  static BoxFit? fromJsonFit(dynamic value) {
    if (value is String && value.isNotEmpty) {
      return ConvertData.toBoxFit(value);
    }
    return null;
  }
}

/// Banner layer of template item
@JsonSerializable(explicitToJson: true)
class AWSlideshowLayer {
  @JsonKey(fromJson: fromJsonAction)
  final bool active;

  final AWSlideshowValueLayer value;

  const AWSlideshowLayer({
    required this.active,
    required this.value,
  });

  /// Connect the generated [_$AWSlideshowLayerFromJson] function to the `fromJson`
  /// factory.
  factory AWSlideshowLayer.fromJson(Map<String, dynamic> json) => _$AWSlideshowLayerFromJson(json);

  /// Connect the generated [_$AWSlideshowLayerToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSlideshowLayerToJson(this);

  static bool fromJsonAction(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Banner data layer value
@JsonSerializable(explicitToJson: true)
class AWSlideshowValueLayer {
  @JsonKey(defaultValue: AWSlideshowLayerType.text)
  final AWSlideshowLayerType type;
  final AbdPosition position;

  @JsonKey(includeIfNull: false)
  final AbdText? text;

  @JsonKey(includeIfNull: false)
  final AbdIcon? icon;

  @JsonKey(includeIfNull: false)
  final AbdColor? buttonBg;

  @JsonKey(includeIfNull: false)
  final AbdColor? buttonBorderColor;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? buttonBorderWidth;

  @JsonKey(fromJson: fromJsonButtonSize, toJson: toJsonSize, includeIfNull: false)
  final Size? buttonSize;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? buttonBorderRadius;

  @JsonKey(includeIfNull: false)
  final AbdColor? iconColor;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? iconSize;

  @JsonKey(fromJson: fromJsonImage, includeIfNull: false)
  final AbdImage? image;

  @JsonKey(fromJson: fromJsonImageSize, toJson: toJsonSize, includeIfNull: false)
  final Size? imageSize;

  @JsonKey(includeIfNull: false)
  final AbdAction? action;

  const AWSlideshowValueLayer({
    required this.type,
    required this.position,
    this.text,
    this.icon,
    this.buttonBg,
    this.buttonBorderColor,
    this.buttonBorderWidth,
    this.buttonSize,
    this.buttonBorderRadius,
    this.iconColor,
    this.iconSize,
    this.image,
    this.imageSize,
    this.action,
  });

  /// Connect the generated [_$AWSlideshowValueLayerFromJson] function to the `fromJson`
  /// factory.
  factory AWSlideshowValueLayer.fromJson(Map<String, dynamic> json) => _$AWSlideshowValueLayerFromJson(json);

  /// Connect the generated [_$AWSlideshowValueLayerToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSlideshowValueLayerToJson(this);

  static Size? fromJsonButtonSize(dynamic value) {
    if (value is Map) {
      return ConvertData.toSizeValue(value, const Size(80, 32));
    }
    return null;
  }

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
}
