import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'socials.g.dart';

@JsonSerializable(explicitToJson: true)
class AWSocials {
  final String id;

  final String type;

  final AWSocialsFields fields;

  final AWSocialsStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWSocials({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWSocialsFromJson] function to the `fromJson`
  /// factory.
  factory AWSocials.fromJson(Map<String, dynamic> json) => _$AWSocialsFromJson(json);

  /// Connect the generated [_$AWSocialsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSocialsToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Social fields config
@JsonSerializable(explicitToJson: true)
class AWSocialsFields {
  final AbdAlignment alignment;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 0)
  final double pad;

  final List<AWSocialsDataItem> socials;

  const AWSocialsFields({
    required this.alignment,
    required this.pad,
    required this.socials,
  });

  /// Connect the generated [_$AWSocialsFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWSocialsFields.fromJson(Map<String, dynamic> json) => _$AWSocialsFieldsFromJson(json);

  /// Connect the generated [_$AWSocialsFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSocialsFieldsToJson(this);
}

/// Social style
@JsonSerializable(explicitToJson: true)
class AWSocialsStyle {
  final AbdSpacing padding;
  final AbdSpacing margin;
  final AbdColor background;

  const AWSocialsStyle({required this.padding, required this.margin, required this.background});

  /// Connect the generated [_$AWSocialsStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWSocialsStyle.fromJson(Map<String, dynamic> json) => _$AWSocialsStyleFromJson(json);

  /// Connect the generated [_$AWSocialsStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSocialsStyleToJson(this);
}

/// Social data item
@JsonSerializable(explicitToJson: true)
class AWSocialsDataItem {
  @JsonKey(defaultValue: 'default')
  final String template;
  final AWSocialsData data;

  const AWSocialsDataItem({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWSocialsDataItemFromJson] function to the `fromJson`
  /// factory.
  factory AWSocialsDataItem.fromJson(Map<String, dynamic> json) => _$AWSocialsDataItemFromJson(json);

  /// Connect the generated [_$AWSocialsDataItemToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSocialsDataItemToJson(this);
}

/// Social data
@JsonSerializable(explicitToJson: true)
class AWSocialsData {
  final AbdIcon icon;
  final AbdColor backgroundColor;
  final AbdColor iconColor;
  final AbdText linkSocial;
  @JsonKey(fromJson: fromJsonEnableRound)
  final bool enableRound;
  @JsonKey(fromJson: fromJsonEnableOutLinen)
  final bool enableOutLine;

  const AWSocialsData({
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    required this.linkSocial,
    required this.enableRound,
    required this.enableOutLine,
  });

  /// Connect the generated [_$AWSocialsDataFromJson] function to the `fromJson`
  /// factory.
  factory AWSocialsData.fromJson(Map<String, dynamic> json) => _$AWSocialsDataFromJson(json);

  /// Connect the generated [_$AWSocialsDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSocialsDataToJson(this);

  static bool fromJsonEnableRound(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static bool fromJsonEnableOutLinen(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }
}
