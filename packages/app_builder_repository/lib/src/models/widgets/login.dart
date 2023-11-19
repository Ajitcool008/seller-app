import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'login.g.dart';

@JsonEnum()
enum ASLoginLayout {
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
class ASLogin {
  final ASLoginConfigs configs;

  final ASLoginFields fields;

  final ASLoginStyle styles;

  @JsonKey(defaultValue: ASLoginLayout.defaultLayout)
  final ASLoginLayout layout;

  const ASLogin({
    required this.configs,
    required this.fields,
    required this.styles,
    required this.layout,
  });

  /// Connect the generated [_$ASLoginFromJson] function to the `fromJson`
  /// factory.
  factory ASLogin.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = {};

    Map<String, dynamic> configs =
        Map.castFrom<dynamic, dynamic, String, dynamic>(json['configs'] is Map ? json['configs'] : {});

    newJson.putIfAbsent('configs', () => configs);

    Map<String, dynamic> fields = {};
    Map<String, dynamic> styles = {};
    String layout = 'default';

    if (json['widgets']?['login'] is Map) {
      Map widgets = json['widgets']['login'];

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

    return _$ASLoginFromJson(newJson);
  }

  /// Connect the generated [_$ASLoginToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> newJson = {
      'configs': configs.toJson(),
      "widgets": {
        "login": {
          "id": "login",
          "type": "login",
          "fields": fields.toJson(),
          "styles": styles.toJson(),
          "layout": _$ASLoginLayoutEnumMap[layout]!,
        }
      },
    };
    return newJson;
  }
}

/// Login configs
@JsonSerializable(explicitToJson: true)
class ASLoginConfigs {
  @JsonKey(fromJson: fromJsonFalse)
  final bool extendBodyBehindAppBar;

  @JsonKey(fromJson: fromJsonTrue)
  final bool shadowAppBar;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? appbarColor;

  const ASLoginConfigs({
    required this.extendBodyBehindAppBar,
    required this.shadowAppBar,
    this.appbarColor,
  });

  /// Connect the generated [_$ASLoginConfigsFromJson] function to the `fromJson`
  /// factory.
  factory ASLoginConfigs.fromJson(Map<String, dynamic> json) => _$ASLoginConfigsFromJson(json);

  /// Connect the generated [_$ASLoginFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASLoginConfigsToJson(this);

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

/// Login fields config
@JsonSerializable(explicitToJson: true)
class ASLoginFields {
  @JsonKey(fromJson: fromJsonTrue)
  final bool loginFacebook;

  @JsonKey(fromJson: fromJsonTrue)
  final bool loginGoogle;

  @JsonKey(fromJson: fromJsonTrue)
  final bool loginApple;

  @JsonKey(fromJson: fromJsonTrue)
  final bool loginPhoneNumber;

  @JsonKey(fromJson: fromJsonTrue)
  final bool titleAppBar;

  @JsonKey(fromJson: fromJsonTerm)
  final AbdText term;

  const ASLoginFields({
    required this.loginFacebook,
    required this.loginGoogle,
    required this.loginApple,
    required this.loginPhoneNumber,
    required this.titleAppBar,
    required this.term,
  });

  /// Connect the generated [_$ASLoginFieldsFromJson] function to the `fromJson`
  /// factory.
  factory ASLoginFields.fromJson(Map<String, dynamic> json) => _$ASLoginFieldsFromJson(json);

  /// Connect the generated [_$ASLoginFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASLoginFieldsToJson(this);

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static AbdText fromJsonTerm(dynamic value) {
    return AbdText.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value is Map ? value : {}));
  }
}

/// Login style
@JsonSerializable(explicitToJson: true)
class ASLoginStyle {
  @JsonKey(fromJson: fromJsonSpacing, includeIfNull: false)
  final AbdSpacing? padding;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? background;

  @JsonKey(fromJson: fromJsonImage, includeIfNull: false)
  final AbdImage? headerImage;

  const ASLoginStyle({
    required this.padding,
    required this.background,
    required this.headerImage,
  });

  /// Connect the generated [_$ASLoginStyleFromJson] function to the `fromJson`
  /// factory.
  factory ASLoginStyle.fromJson(Map<String, dynamic> json) => _$ASLoginStyleFromJson(json);

  /// Connect the generated [_$ASLoginStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASLoginStyleToJson(this);

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
