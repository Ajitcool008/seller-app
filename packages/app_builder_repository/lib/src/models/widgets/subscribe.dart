import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';
part 'subscribe.g.dart';

@JsonSerializable(explicitToJson: true)
class AWSubscribe {
  final String id;

  final String type;

  final AWSubscribeFields fields;

  final AWSubscribeStyle styles;

  @JsonKey(defaultValue: 'default')
  final String layout;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWSubscribe({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
    required this.layout,
  });

  /// Connect the generated [_$AWSubscribeFromJson] function to the `fromJson`
  /// factory.
  factory AWSubscribe.fromJson(Map<String, dynamic> json) => _$AWSubscribeFromJson(json);

  /// Connect the generated [_$AWSubscribeToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSubscribeToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWSubscribeFields {
  final AbdText title;

  final AbdText description;

  final AbdText placeholder;

  final AbdText txtButton;

  @JsonKey(defaultValue: '')
  final String formId;

  final String name;

  const AWSubscribeFields({
    required this.title,
    required this.description,
    required this.placeholder,
    required this.txtButton,
    required this.formId,
    required this.name,
  });

  /// Connect the generated [_$AWSubscribeFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWSubscribeFields.fromJson(Map<String, dynamic> json) => _$AWSubscribeFieldsFromJson(json);

  /// Connect the generated [_$AWSubscribeFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSubscribeFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWSubscribeStyle {
  @JsonKey(fromJson: _fromJsonSpacing, includeIfNull: false)
  final AbdSpacing? padding;

  @JsonKey(fromJson: _fromJsonSpacing, includeIfNull: false)
  final AbdSpacing? margin;

  @JsonKey(fromJson: _fromJsonColor, includeIfNull: false)
  final AbdColor? background;

  @JsonKey(fromJson: _fromJsonImage, includeIfNull: false)
  final AbdImage? image;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 20)
  final double sizeIcon;

  @JsonKey(fromJson: _fromJsonColor, includeIfNull: false)
  final AbdColor? colorIcon;

  @JsonKey(fromJson: _fromJsonColor, includeIfNull: false)
  final AbdColor? backgroundButton;

  @JsonKey(fromJson: _fromJsonColor, includeIfNull: false)
  final AbdColor? colorButton;

  @JsonKey(fromJson: _fromJsonColor, includeIfNull: false)
  final AbdColor? backgroundInput;

  @JsonKey(fromJson: _fromJsonColor, includeIfNull: false)
  final AbdColor? colorInput;

  @JsonKey(fromJson: _fromJsonColor, includeIfNull: false)
  final AbdColor? colorPlaceholder;

  @JsonKey(fromJson: _fromJsonColor, includeIfNull: false)
  final AbdColor? borderInput;

  const AWSubscribeStyle({
    this.padding,
    this.margin,
    this.background,
    this.image,
    required this.sizeIcon,
    this.colorIcon,
    this.backgroundButton,
    this.colorButton,
    this.backgroundInput,
    this.colorInput,
    this.colorPlaceholder,
    this.borderInput,
  });

  /// Connect the generated [_$AWSubscribeStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWSubscribeStyle.fromJson(Map<String, dynamic> json) => _$AWSubscribeStyleFromJson(json);

  /// Connect the generated [_$AWSubscribeStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSubscribeStyleToJson(this);

  static AbdSpacing? _fromJsonSpacing(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (data != null) {
      return AbdSpacing.fromJson(data);
    }
    return null;
  }

  static AbdImage? _fromJsonImage(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (data != null) {
      return AbdImage.fromJson(data);
    }
    return null;
  }

  static AbdColor? _fromJsonColor(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    if (data != null) {
      return AbdColor.fromJson(data);
    }
    return null;
  }
}
