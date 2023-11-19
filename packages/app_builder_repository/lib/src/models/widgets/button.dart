import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'button.g.dart';

@JsonSerializable(explicitToJson: true)
class AWButton {
  final String id;

  final String type;

  final AWButtonFields fields;

  final AWButtonStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWButton({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWButtonFromJson] function to the `fromJson`
  /// factory.
  factory AWButton.fromJson(Map<String, dynamic> json) => _$AWButtonFromJson(json);

  /// Connect the generated [_$AWButtonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWButtonToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWButtonFields {
  final AbdText title;

  final AbdIcon icon;

  final AbdAction action;

  @JsonKey(fromJson: fromJsonFullWidth, defaultValue: true)
  final bool enableFullWidth;

  @JsonKey(fromJson: fromJsonIcon, defaultValue: false)
  final bool enableIcon;

  @JsonKey(fromJson: fromJsonIconLeft, defaultValue: false)
  final bool enableIconLeft;

  const AWButtonFields({
    required this.title,
    required this.icon,
    required this.action,
    required this.enableFullWidth,
    required this.enableIcon,
    required this.enableIconLeft,
  });

  /// Connect the generated [_$AWButtonFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWButtonFields.fromJson(Map<String, dynamic> json) => _$AWButtonFieldsFromJson(json);

  /// Connect the generated [_$AWButtonFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWButtonFieldsToJson(this);

  static bool fromJsonFullWidth(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static bool fromJsonIcon(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static bool fromJsonIconLeft(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWButtonStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  @JsonKey(fromJson: fromJsonHeight)
  final double height;

  final AbdColor background;

  @JsonKey(name: "backgroundItem")
  final AbdColor? backgroundButton;

  @JsonKey(name: "borderWidgetItem", fromJson: fromJsonWidthBorder)
  final double widthBorderButton;

  @JsonKey(name: "borderColorItem")
  final AbdColor? colorBorderButton;

  @JsonKey(name: "radiusItem", fromJson: fromJsonRadius)
  final double radiusButton;

  @JsonKey(name: "autoIconItem", fromJson: fromJsonChangeIcon)
  final bool enableChangeIcon;

  @JsonKey(name: "iconSizeItem", fromJson: fromJsonSizeIcon)
  final double sizeIcon;

  @JsonKey(name: "iconColorItem")
  final AbdColor? colorIcon;

  const AWButtonStyle({
    required this.padding,
    required this.margin,
    required this.height,
    required this.background,
    required this.backgroundButton,
    required this.widthBorderButton,
    required this.colorBorderButton,
    required this.radiusButton,
    required this.enableChangeIcon,
    required this.sizeIcon,
    required this.colorIcon,
  });

  /// Connect the generated [_$AWButtonStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWButtonStyle.fromJson(Map<String, dynamic> json) => _$AWButtonStyleFromJson(json);

  /// Connect the generated [_$AWButtonStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWButtonStyleToJson(this);

  static double fromJsonHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 48);
  }

  static double fromJsonWidthBorder(dynamic value) {
    return ConvertData.stringToDouble(value);
  }

  static double fromJsonRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }

  static double fromJsonSizeIcon(dynamic value) {
    return ConvertData.stringToDouble(value, 14);
  }

  static bool fromJsonChangeIcon(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}
