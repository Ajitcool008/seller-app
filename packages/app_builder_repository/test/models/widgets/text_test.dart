import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWText widget test', () {
    Map<String, dynamic> json = {
      "id": "text_1667988693093_5gnubi",
      "type": "text",
      "fields": {
        "title": {
          "style": {
            "color": {
              "value": {"r": 77, "g": 77, "b": 209, "a": 1},
              "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
            },
            "fontSize": 14.9,
            "fontFamily": "Poppins",
            "fontWeight": "600",
            "letterSpacing": 1.2,
            "height": 2.4,
            "textDecoration": "underline",
            "backgroundColor": {
              "value": {"r": 219, "g": 64, "b": 64, "a": 0.61},
              "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
            }
          },
          "text": "Free Shipping & Free Return",
          "zh-hant": "Texy",
          "vi": "sss",
          "es": "sdd"
        },
        "alignment": "center",
        "action": {
          "type": "tab",
          "route": "/",
          "args": {"name": "Home", "key": "screens_home"}
        }
      },
      "styles": {
        "padding": {"paddingLeft": 121, "paddingRight": 121, "paddingBottom": 121, "paddingTop": 121},
        "margin": {"marginLeft": 20, "marginRight": 20, "marginBottom": 20, "marginTop": 20},
        "background": {
          "value": {"r": 209, "g": 49, "b": 49, "a": 0.55},
          "dark": {"r": 49, "g": 49, "b": 49, "a": 1}
        }
      },
      "disable": false
    };

    AbdText titleExpected = AbdText.fromJson({
      "text": "Free Shipping & Free Return",
      "style": {
        "color": {
          "value": {"r": 77, "g": 77, "b": 209, "a": 1},
          "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
        },
        "fontSize": 14.9,
        "fontFamily": "Poppins",
        "fontWeight": "600",
        "letterSpacing": 1.2,
        "height": 2.4,
        "textDecoration": "underline",
        "backgroundColor": {
          "value": {"r": 219, "g": 64, "b": 64, "a": 0.61},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        }
      },
      "zh-hant": "Texy",
      "vi": "sss",
      "es": "sdd"
    });

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 121, "paddingRight": 121, "paddingBottom": 121, "paddingTop": 121});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 20, "marginRight": 20, "marginBottom": 20, "marginTop": 20});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 209, "g": 49, "b": 49, "a": 0.55},
      "dark": {"r": 49, "g": 49, "b": 49, "a": 1}
    });

    AbdAction actionExpected = AbdAction.fromJson({
      "type": "tab",
      "route": "/",
      "args": {"name": "Home", "key": "screens_home"}
    });

    AWText text = AWText.fromJson(json);

    //
    expect(text.id, "text_1667988693093_5gnubi");
    expect(text.type, "text");

    expect(text.fields.title.toJson(), titleExpected.toJson());
    expect(text.fields.action.toJson(), actionExpected.toJson());
    expect(text.fields.alignment, TextAlign.center);

    expect(text.styles.margin.toJson(), marginExpected.toJson());
    expect(text.styles.padding.toJson(), paddingExpected.toJson());
    expect(text.styles.background.toJson(), bgExpected.toJson());

    expect(text.toJson(), json);
  });
}
