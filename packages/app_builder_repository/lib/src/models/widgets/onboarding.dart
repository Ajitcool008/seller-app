import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'onboarding.g.dart';

enum AWOnBoardingLayout {
  @JsonValue('default')
  defaultLayout,
  @JsonValue('overlay')
  overlay,
}

@JsonSerializable(explicitToJson: true)
class AWOnBoarding {
  @JsonKey(defaultValue: '')
  final String id;

  @JsonKey(defaultValue: '')
  final String type;

  @JsonKey(fromJson: fromJsonFields)
  final AWOnBoardingFields fields;

  @JsonKey(defaultValue: AWOnBoardingLayout.defaultLayout)
  final AWOnBoardingLayout layout;

  @JsonKey(fromJson: fromJsonStyle)
  final AWOnBoardingStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWOnBoarding({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWOnBoardingFromJson] function to the `fromJson`
  /// factory.
  factory AWOnBoarding.fromJson(Map<String, dynamic> json) => _$AWOnBoardingFromJson(json);

  /// Connect the generated [_$AWOnBoardingToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWOnBoardingToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static AWOnBoardingFields fromJsonFields(dynamic value) {
    return AWOnBoardingFields.fromJson(ConvertData.toMapStringDynamic(value) ?? {});
  }

  static AWOnBoardingStyle fromJsonStyle(dynamic value) {
    return AWOnBoardingStyle.fromJson(ConvertData.toMapStringDynamic(value) ?? {});
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWOnBoardingFields {
  @JsonKey(fromJson: fromJsonPagination)
  final bool enablePagination;

  @JsonKey(defaultValue: [])
  final List<AWOnBoardingTemplate> items;

  const AWOnBoardingFields({required this.enablePagination, required this.items});

  /// Connect the generated [_$AWOnBoardingFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWOnBoardingFields.fromJson(Map<String, dynamic> json) => _$AWOnBoardingFieldsFromJson(json);

  /// Connect the generated [_$AWOnBoardingFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWOnBoardingFieldsToJson(this);

  static bool fromJsonPagination(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }
}

/// OnBoarding style
@JsonSerializable(explicitToJson: true)
class AWOnBoardingStyle {
  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? backgroundItem;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? titleColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? subtitleColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? skipColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? gradientFrom;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? gradientTo;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? dividerColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? indicatorColor;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? indicatorActiveColor;

  @JsonKey(fromJson: fromJsonTitleSize)
  final double titleSize;

  @JsonKey(fromJson: fromJsonSubtitleSize)
  final double subtitleSize;

  @JsonKey(fromJson: fromJsonOpacity)
  final double opacity;

  const AWOnBoardingStyle({
    this.backgroundItem,
    this.titleColor,
    this.subtitleColor,
    this.skipColor,
    this.gradientFrom,
    this.gradientTo,
    this.dividerColor,
    this.indicatorColor,
    this.indicatorActiveColor,
    required this.titleSize,
    required this.subtitleSize,
    required this.opacity,
  });

  /// Connect the generated [_$AWOnBoardingStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWOnBoardingStyle.fromJson(Map<String, dynamic> json) => _$AWOnBoardingStyleFromJson(json);

  /// Connect the generated [_$AWOnBoardingStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWOnBoardingStyleToJson(this);

  static double fromJsonTitleSize(dynamic value) {
    return ConvertData.stringToDouble(value, 28);
  }

  static double fromJsonSubtitleSize(dynamic value) {
    return ConvertData.stringToDouble(value, 14);
  }

  static double fromJsonOpacity(dynamic value) {
    return ConvertData.stringToDouble(value, 0.9);
  }

  static AbdColor? fromJsonColor(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (data != null) {
      return AbdColor.fromJson(data);
    }
    return null;
  }
}

/// OnBoarding template item
@JsonSerializable(explicitToJson: true)
class AWOnBoardingTemplate {
  final String? template;

  @JsonKey(fromJson: fromJsonData)
  final AWOnBoardingDataTemplate data;

  const AWOnBoardingTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWOnBoardingTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWOnBoardingTemplate.fromJson(Map<String, dynamic> json) => _$AWOnBoardingTemplateFromJson(json);

  /// Connect the generated [_$AWOnBoardingTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWOnBoardingTemplateToJson(this);

  static AWOnBoardingDataTemplate fromJsonData(dynamic value) {
    return AWOnBoardingDataTemplate.fromJson(ConvertData.toMapStringDynamic(value) ?? {});
  }
}

/// OnBoarding data template item
@JsonSerializable(explicitToJson: true)
class AWOnBoardingDataTemplate {
  @JsonKey(fromJson: fromJsonImage)
  final AbdImage image;

  @JsonKey(fromJson: fromJsonText)
  final AbdText title;

  @JsonKey(fromJson: fromJsonText)
  final AbdText subTitle;

  const AWOnBoardingDataTemplate({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  /// Connect the generated [_$AWOnBoardingDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWOnBoardingDataTemplate.fromJson(Map<String, dynamic> json) => _$AWOnBoardingDataTemplateFromJson(json);

  /// Connect the generated [_$AWOnBoardingDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWOnBoardingDataTemplateToJson(this);

  static AbdImage fromJsonImage(dynamic value) {
    return AbdImage.fromJson(ConvertData.toMapStringDynamic(value) ?? {});
  }

  static AbdText fromJsonText(dynamic value) {
    return AbdText.fromJson(ConvertData.toMapStringDynamic(value) ?? {});
  }
}
