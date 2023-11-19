import 'package:app_builder_repository/src/models/widgets/theme.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWTheme widget test', () {
    Map<String, dynamic> json = {
      "id": "theme",
      "type": "theme",
      "fields": {
        "fontFamilyBody": "Poppins",
        "fontFamily": "Poppins",
        "displayColor": {
          "value": {"r": 0, "g": 0, "b": 1, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "bodyColor": {
          "value": {"r": 100, "g": 124, "b": 156, "a": 1},
          "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
        },
        "cardColor": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 49, "g": 49, "b": 49, "a": 1}
        },
        "primary": {
          "value": {"r": 6, "g": 134, "b": 248, "a": 1},
          "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
        },
        "primaryVariant": {
          "value": {"r": 32, "g": 100, "b": 217, "a": 1},
          "dark": {"r": 32, "g": 100, "b": 217, "a": 1}
        },
        "secondary": {
          "value": {"r": 6, "g": 134, "b": 248, "a": 1},
          "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
        },
        "secondaryVariant": {
          "value": {"r": 6, "g": 134, "b": 248, "a": 1},
          "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
        },
        "surface": {
          "value": {"r": 244, "g": 244, "b": 244, "a": 1},
          "dark": {"r": 49, "g": 49, "b": 49, "a": 1}
        },
        "background": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 41, "g": 41, "b": 41, "a": 1}
        },
        "error": {
          "value": {"r": 240, "g": 31, "b": 14, "a": 1},
          "dark": {"r": 240, "g": 31, "b": 14, "a": 1}
        },
        "onPrimary": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "onSecondary": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "onSurface": {
          "value": {"r": 100, "g": 124, "b": 156, "a": 1},
          "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
        },
        "onBackground": {
          "value": {"r": 100, "g": 124, "b": 156, "a": 1},
          "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
        },
        "onError": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "success": {
          "value": {"r": 33, "g": 186, "b": 69, "a": 1},
          "dark": {"r": 33, "g": 186, "b": 69, "a": 1}
        },
        "onSuccess": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "warning": {
          "value": {"r": 255, "g": 162, "b": 0, "a": 1},
          "dark": {"r": 255, "g": 162, "b": 0, "a": 1}
        },
        "onWarning": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "appBarBackgroundColor": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 41, "g": 41, "b": 41, "a": 1}
        },
        "appBarIconColor": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "appBarTextColor": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "appBarShadowColor": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "appBarElevation": 4,
        "scaffoldBackgroundColor": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 41, "g": 41, "b": 41, "a": 1}
        },
        "textFieldsType": "filled",
        "textFieldsBorderRadius": 8,
        "textFieldsBorderWidth": 1,
        "textFieldsBorderColor": {
          "value": {"r": 222, "g": 226, "b": 230, "a": 1},
          "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5}
        },
        "textFieldsLabelColor": {
          "value": {"r": 0, "g": 0, "b": 1, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "textFieldsLabelFontSize": 14,
        "textFieldsLabelFontWeight": 3,
        "textFieldsPadding": {
          "textFieldsPaddingLeft": 0,
          "textFieldsPaddingRight": 0,
          "textFieldsPaddingBottom": 0,
          "textFieldsPaddingTop": 0
        },
        "buttonBorderRadius": 8,
        "dividerColor": {
          "value": {"r": 222, "g": 226, "b": 230, "a": 1},
          "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5}
        },
        "brightnessLight": 1,
        "brightnessDark": 0
      },
    };

    AWTheme text = AWTheme.fromJson(json);

    //
    expect(text.id, "theme");
    expect(text.type, "theme");

    expect(text.toJson(), json);
  });
}
