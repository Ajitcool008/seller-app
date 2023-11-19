import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'bottom_tab.g.dart';

enum AWBottomTabLayout {
  @JsonValue('default')
  defaultBT,
  @JsonValue('default_bg')
  defaultBg,
  @JsonValue('border_top')
  borderTop,
  @JsonValue('border_bottom')
  borderBottom,
  @JsonValue('salomon')
  salomon,
  @JsonValue('inspired_inside')
  inspiredInside,
  @JsonValue('inspired_inside_hexagon')
  inspiredInsideHexagon,
  @JsonValue('inspired_outside')
  inspiredOutside,
  @JsonValue('inspired_outside_hexagon')
  inspiredOutsideHexagon,
  @JsonValue('inspired_outside_deep')
  inspiredOutsideDeep,
  @JsonValue('inspired_outside_radius')
  inspiredOutsideRadius,
  @JsonValue('inspired_curve')
  inspiredCurve,
  @JsonValue('inspired_curve_hexagon')
  inspiredCurveHexagon,
  @JsonValue('creative')
  creative,
  @JsonValue('creative_hexagon')
  creativeHexagon,
  @JsonValue('fancy')
  fancy,
  @JsonValue('fancy_border')
  fancyBorder,
  @JsonValue('floating')
  floating,
}

enum AWBottomTabCountType {
  @JsonValue('cart')
  cart,
  @JsonValue('wishlist')
  wishlist,
  @JsonValue('favorite')
  favorite,
}

@JsonSerializable(explicitToJson: true)
class AWBottomTab {
  final String id;

  final String type;

  final AWBottomTabFields fields;

  @JsonKey(defaultValue: AWBottomTabLayout.defaultBT)
  final AWBottomTabLayout layout;

  final AWBottomTabStyle styles;

  const AWBottomTab({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
  });

  /// Connect the generated [_$AWBottomTabFromJson] function to the `fromJson`
  /// factory.
  factory AWBottomTab.fromJson(Map<String, dynamic> json) => _$AWBottomTabFromJson(json);

  /// Connect the generated [_$AWBottomTabToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBottomTabToJson(this);
}

/// Bottom tab fields config
@JsonSerializable(explicitToJson: true)
class AWBottomTabFields {
  @JsonKey(fromJson: fromJsonHidden)
  final bool hidden;

  @JsonKey(fromJson: fromJsonAnimated)
  final bool animated;

  @JsonKey(fromJson: fromJsonFixedActive)
  final bool fixedActive;

  @JsonKey(defaultValue: [])
  final List<AWBottomTabTemplate> items;

  const AWBottomTabFields({
    required this.hidden,
    required this.animated,
    required this.fixedActive,
    required this.items,
  });

  /// Connect the generated [_$AWBottomTabFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWBottomTabFields.fromJson(Map<String, dynamic> json) => _$AWBottomTabFieldsFromJson(json);

  /// Connect the generated [_$AWBottomTabFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBottomTabFieldsToJson(this);

  static bool fromJsonHidden(dynamic value) {
    return ConvertData.toBoolValue(value) ?? false;
  }

  static bool fromJsonAnimated(dynamic value) {
    return ConvertData.toBoolValue(value) ?? true;
  }

  static bool fromJsonFixedActive(dynamic value) {
    return ConvertData.toBoolValue(value) ?? false;
  }
}

/// Bottom Tab style
@JsonSerializable(explicitToJson: true)
class AWBottomTabStyle {
  final AbdColor background;

  final AbdColor color;

  final AbdColor colorActive;

  final AbdColor? colorOnActive;

  @JsonKey(fromJson: fromJsonEnableShadow)
  final bool enableShadow;

  @JsonKey(fromJson: fromJsonPadTop)
  final double padTop;

  @JsonKey(fromJson: fromJsonPad)
  final double pad;

  @JsonKey(fromJson: fromJsonPadBottom)
  final double padBottom;

  @JsonKey(fromJson: fromJsonRadius)
  final double radius;

  @JsonKey(fromJson: fromJsonActiveBorderRadius)
  final double activeBorderRadius;

  const AWBottomTabStyle({
    required this.background,
    required this.color,
    required this.colorActive,
    required this.colorOnActive,
    required this.enableShadow,
    required this.padTop,
    required this.pad,
    required this.padBottom,
    required this.radius,
    required this.activeBorderRadius,
  });

  /// Connect the generated [_$AWBottomTabStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWBottomTabStyle.fromJson(Map<String, dynamic> json) => _$AWBottomTabStyleFromJson(json);

  /// Connect the generated [_$AWBottomTabStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBottomTabStyleToJson(this);

  static bool fromJsonEnableShadow(dynamic value) {
    return ConvertData.toBoolValue(value) ?? true;
  }

  static double fromJsonPadTop(dynamic value) {
    return ConvertData.stringToDouble(value, 12);
  }

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value, 4);
  }

  static double fromJsonPadBottom(dynamic value) {
    return ConvertData.stringToDouble(value, 12);
  }

  static double fromJsonRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 12);
  }

  static double fromJsonActiveBorderRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 30);
  }
}

/// Bottom Tab template item
@JsonSerializable(explicitToJson: true)
class AWBottomTabTemplate {
  final String template;
  @JsonKey(defaultValue: true)
  final bool active;

  final AWBottomTabDataTemplate data;

  const AWBottomTabTemplate({
    required this.template,
    required this.active,
    required this.data,
  });

  /// Connect the generated [_$AWBottomTabTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWBottomTabTemplate.fromJson(Map<String, dynamic> json) => _$AWBottomTabTemplateFromJson(json);

  /// Connect the generated [_$AWBottomTabTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBottomTabTemplateToJson(this);
}

/// Banner data template item
@JsonSerializable(explicitToJson: true)
class AWBottomTabDataTemplate {
  @JsonKey(includeIfNull: false)
  final AbdIcon? icon;

  @JsonKey(includeIfNull: false)
  final AbdText? title;

  @JsonKey(includeIfNull: false)
  final AbdAction? action;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableCount;

  @JsonKey(includeIfNull: false)
  final AWBottomTabCountType? countType;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableCustomize;

  @JsonKey(includeIfNull: false)
  final AbdColor? background;

  @JsonKey(includeIfNull: false)
  final AbdColor? color;

  @JsonKey(includeIfNull: false)
  final AbdColor? colorActive;

  @JsonKey(includeIfNull: false)
  final AbdColor? colorOnActive;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableShadow;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? padTop;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? pad;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? padBottom;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? radius;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? activeBorderRadius;

  const AWBottomTabDataTemplate({
    this.icon,
    this.title,
    this.action,
    this.enableCount,
    this.countType,
    this.enableCustomize,
    this.background,
    this.color,
    this.colorActive,
    this.colorOnActive,
    this.enableShadow,
    this.padTop,
    this.pad,
    this.padBottom,
    this.radius,
    this.activeBorderRadius,
  });

  /// Connect the generated [_$AWBottomTabDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWBottomTabDataTemplate.fromJson(Map<String, dynamic> json) => _$AWBottomTabDataTemplateFromJson(json);

  /// Connect the generated [_$AWBottomTabDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWBottomTabDataTemplateToJson(this);
}
