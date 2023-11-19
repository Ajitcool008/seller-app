import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'heading.g.dart';

enum AWHeadingLayout {
  @JsonValue('default')
  rowDefault,
  @JsonValue('divider')
  rowDivider,
  @JsonValue('corner')
  rowCorner,
  @JsonValue('vertical')
  vertical;
}

@JsonSerializable(explicitToJson: true)
class AWHeading {
  final String id;

  final String type;

  final AWHeadingFields fields;

  final AWHeadingStyle styles;

  @JsonKey(defaultValue: AWHeadingLayout.rowDefault)
  final AWHeadingLayout layout;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWHeading({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWHeadingFromJson] function to the `fromJson`
  /// factory.
  factory AWHeading.fromJson(Map<String, dynamic> json) => _$AWHeadingFromJson(json);

  /// Connect the generated [_$AWHeadingToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWHeadingToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWHeadingFields {
  final AbdText title;

  @JsonKey(fromJson: fromJsonCenterTitle)
  final bool centerTitle;

  @JsonKey(fromJson: fromJsonEnableIcon)
  final bool enableIcon;

  final AbdIcon icon;

  final AbdText actionTitle;

  @JsonKey(fromJson: fromJsonEnableIconAction)
  final bool enableIconAction;

  final AbdIcon iconAction;

  final AbdAction action;

  const AWHeadingFields({
    required this.title,
    required this.centerTitle,
    required this.enableIcon,
    required this.icon,
    required this.actionTitle,
    required this.enableIconAction,
    required this.iconAction,
    required this.action,
  });

  /// Connect the generated [_$AWHeadingFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWHeadingFields.fromJson(Map<String, dynamic> json) => _$AWHeadingFieldsFromJson(json);

  /// Connect the generated [_$AWHeadingFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWHeadingFieldsToJson(this);

  static bool fromJsonCenterTitle(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static bool fromJsonEnableIcon(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static bool fromJsonEnableIconAction(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWHeadingStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  final AbdColor secondBackground;

  final AbdColor dividerColor;

  final AbdColor? iconColor;

  @JsonKey(fromJson: fromJsonDouble)
  final double dividerHeight;

  @JsonKey(fromJson: fromJsonDouble)
  final double borderRadiusTopLeft;

  @JsonKey(fromJson: fromJsonDouble)
  final double borderRadiusTopRight;

  @JsonKey(fromJson: fromJsonDouble)
  final double borderRadiusBottomLeft;

  @JsonKey(fromJson: fromJsonDouble)
  final double borderRadiusBottomRight;

  const AWHeadingStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.secondBackground,
    required this.dividerColor,
    required this.iconColor,
    required this.dividerHeight,
    required this.borderRadiusTopLeft,
    required this.borderRadiusTopRight,
    required this.borderRadiusBottomLeft,
    required this.borderRadiusBottomRight,
  });

  /// Connect the generated [_$AWHeadingStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWHeadingStyle.fromJson(Map<String, dynamic> json) => _$AWHeadingStyleFromJson(json);

  /// Connect the generated [_$AWHeadingStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWHeadingStyleToJson(this);

  static double fromJsonDouble(dynamic value) {
    return ConvertData.stringToDouble(value);
  }
}
