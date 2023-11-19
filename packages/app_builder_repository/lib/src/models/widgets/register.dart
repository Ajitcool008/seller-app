import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'register.g.dart';

@JsonEnum()
enum ASRegisterLayout {
  @JsonValue('default')
  defaultLayout,
  @JsonValue('logo_top')
  logoTop,
  @JsonValue('image_header_top')
  imageHeaderTop,
  @JsonValue('image_header_corner')
  imageHeaderCorner,
}

@JsonSerializable(createToJson: false)
class ASRegister {
  final ASRegisterConfigs configs;

  final ASRegisterFields fields;

  final ASRegisterStyle styles;

  @JsonKey(defaultValue: ASRegisterLayout.defaultLayout)
  final ASRegisterLayout layout;

  const ASRegister({
    required this.configs,
    required this.fields,
    required this.styles,
    required this.layout,
  });

  /// Connect the generated [_$ASRegisterFromJson] function to the `fromJson`
  /// factory.
  factory ASRegister.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = {};

    Map<String, dynamic> configs =
        Map.castFrom<dynamic, dynamic, String, dynamic>(json['configs'] is Map ? json['configs'] : {});

    newJson.putIfAbsent('configs', () => configs);

    Map<String, dynamic> fields = {};
    Map<String, dynamic> styles = {};
    String layout = 'default';

    if (json['widgets']?['register'] is Map) {
      Map widgets = json['widgets']['register'];

      if (widgets['layout'] is String) {
        layout = widgets['layout'];
      }

      if (widgets['fields'] is Map) {
        fields = Map.castFrom<dynamic, dynamic, String, dynamic>(widgets['fields']);
      }

      if (widgets['styles'] is Map) {
        styles = Map.castFrom<dynamic, dynamic, String, dynamic>(widgets['styles']);
      }
    }

    newJson.putIfAbsent('layout', () => layout);
    newJson.putIfAbsent('fields', () => fields);
    newJson.putIfAbsent('styles', () => styles);

    return _$ASRegisterFromJson(newJson);
  }

  /// Connect the generated [_$ASRegisterToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> newJson = {
      'configs': configs.toJson(),
      "widgets": {
        "register": {
          "id": "register",
          "type": "register",
          "fields": fields.toJson(),
          "styles": styles.toJson(),
          "layout": _$ASRegisterLayoutEnumMap[layout]!,
        }
      },
    };
    return newJson;
  }
}

/// Register configs
@JsonSerializable(explicitToJson: true)
class ASRegisterConfigs {
  @JsonKey(fromJson: fromJsonFalse)
  final bool extendBodyBehindAppBar;

  @JsonKey(fromJson: fromJsonTrue)
  final bool shadowAppBar;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? appbarColor;

  const ASRegisterConfigs({
    required this.extendBodyBehindAppBar,
    required this.shadowAppBar,
    this.appbarColor,
  });

  /// Connect the generated [_$ASRegisterConfigsFromJson] function to the `fromJson`
  /// factory.
  factory ASRegisterConfigs.fromJson(Map<String, dynamic> json) => _$ASRegisterConfigsFromJson(json);

  /// Connect the generated [_$ASRegisterFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASRegisterConfigsToJson(this);

  static bool fromJsonFalse(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static AbdColor? fromJsonColor(dynamic value) {
    if (value is Map) {
      return AbdColor.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }

    return null;
  }
}

/// Register fields config
@JsonSerializable(explicitToJson: true)
class ASRegisterFields {
  @JsonKey(fromJson: fromJsonTrue)
  final bool registerFacebook;

  @JsonKey(fromJson: fromJsonTrue)
  final bool registerGoogle;

  @JsonKey(fromJson: fromJsonTrue)
  final bool registerApple;

  @JsonKey(fromJson: fromJsonTrue)
  final bool registerPhoneNumber;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableSymbolPassword;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableNumberPassword;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableLowerCharacterPassword;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableUpperCharacterPassword;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableEmail;

  @JsonKey(fromJson: fromJsonTrue)
  final bool titleAppBar;

  @JsonKey(fromJson: fromJsonInt)
  final int minLengthPassword;

  @JsonKey(fromJson: fromJsonTerm)
  final AbdText term;

  const ASRegisterFields({
    required this.registerFacebook,
    required this.registerGoogle,
    required this.registerApple,
    required this.registerPhoneNumber,
    required this.enableSymbolPassword,
    required this.enableNumberPassword,
    required this.enableLowerCharacterPassword,
    required this.enableUpperCharacterPassword,
    required this.enableEmail,
    required this.titleAppBar,
    required this.minLengthPassword,
    required this.term,
  });

  /// Connect the generated [_$ASRegisterFieldsFromJson] function to the `fromJson`
  /// factory.
  factory ASRegisterFields.fromJson(Map<String, dynamic> json) => _$ASRegisterFieldsFromJson(json);

  /// Connect the generated [_$ASRegisterFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASRegisterFieldsToJson(this);

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static int fromJsonInt(dynamic value) {
    return ConvertData.stringToInt(value, 6);
  }

  static AbdText fromJsonTerm(dynamic value) {
    return AbdText.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value is Map ? value : {}));
  }
}

/// Register style
@JsonSerializable(explicitToJson: true)
class ASRegisterStyle {
  @JsonKey(fromJson: fromJsonSpacing, includeIfNull: false)
  final AbdSpacing? padding;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? background;

  @JsonKey(fromJson: fromJsonImage, includeIfNull: false)
  final AbdImage? headerImage;

  const ASRegisterStyle({
    required this.padding,
    required this.background,
    required this.headerImage,
  });

  /// Connect the generated [_$ASRegisterStyleFromJson] function to the `fromJson`
  /// factory.
  factory ASRegisterStyle.fromJson(Map<String, dynamic> json) => _$ASRegisterStyleFromJson(json);

  /// Connect the generated [_$ASRegisterStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASRegisterStyleToJson(this);

  static AbdColor? fromJsonColor(dynamic value) {
    if (value is Map) {
      return AbdColor.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static AbdSpacing? fromJsonSpacing(dynamic value) {
    if (value is Map) {
      return AbdSpacing.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static AbdImage? fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }
}
