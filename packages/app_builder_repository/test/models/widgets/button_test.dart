import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWButton widget test', () {
    Map<String, dynamic> json = {
      "id": "button_1668157799902_zaympm",
      "type": "button",
      "fields": {
        "title": {
          "text": "Click",
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
          }
        },
        "action": {
          "type": "tab",
          "route": "/product/category",
          "args": {"name": "Category", "key": "screens_category"}
        },
        "enableFullWidth": true,
        "enableIcon": true,
        "icon": {"name": "settings", "type": "feather"},
        "enableIconLeft": true
      },
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 20, "marginRight": 20, "marginBottom": 0, "marginTop": 0},
        "height": 48,
        "background": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "backgroundItem": {
          "value": {"r": 65, "g": 117, "b": 5, "a": 1},
          "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
        },
        "borderWidgetItem": 3,
        "borderColorItem": {
          "value": {"r": 74, "g": 144, "b": 226, "a": 1},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "radiusItem": 8,
        "autoIconItem": true,
        "iconSizeItem": 23,
        "iconColorItem": {
          "value": {"r": 140, "g": 22, "b": 22, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        }
      },
      "disable": false
    };

    AbdText titleExpected = AbdText.fromJson({
      "text": "Click",
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
      }
    });

    AbdAction actionExpected = AbdAction.fromJson({
      "type": "tab",
      "route": "/product/category",
      "args": {"name": "Category", "key": "screens_category"}
    });

    AbdIcon iconExpected = AbdIcon.fromJson({"name": "settings", "type": "feather"});

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 20, "marginRight": 20, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor bgButtonExpected = AbdColor.fromJson({
      "value": {"r": 65, "g": 117, "b": 5, "a": 1},
      "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
    });

    AbdColor colorBorderButtonExpected = AbdColor.fromJson({
      "value": {"r": 74, "g": 144, "b": 226, "a": 1},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor colorIconExpected = AbdColor.fromJson({
      "value": {"r": 140, "g": 22, "b": 22, "a": 1},
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
    });

    AWButton button = AWButton.fromJson(json);

    //
    expect(button.id, "button_1668157799902_zaympm");
    expect(button.type, "button");

    expect(button.fields.title.toJson(), titleExpected.toJson());
    expect(button.fields.icon.toJson(), iconExpected.toJson());
    expect(button.fields.action.toJson(), actionExpected.toJson());
    expect(button.fields.enableFullWidth, true);
    expect(button.fields.enableIcon, true);
    expect(button.fields.enableIconLeft, true);
    //
    expect(button.styles.margin.toJson(), marginExpected.toJson());
    expect(button.styles.padding.toJson(), paddingExpected.toJson());
    expect(button.styles.background.toJson(), bgExpected.toJson());
    expect(button.styles.height, 48);
    expect(button.styles.backgroundButton?.toJson(), bgButtonExpected.toJson());
    expect(button.styles.widthBorderButton, 3);
    expect(button.styles.colorBorderButton?.toJson(), colorBorderButtonExpected.toJson());
    expect(button.styles.radiusButton, 8);
    expect(button.styles.enableChangeIcon, true);
    expect(button.styles.sizeIcon, 23);
    expect(button.styles.colorIcon?.toJson(), colorIconExpected.toJson());

    expect(button.toJson(), json);
  });
}
