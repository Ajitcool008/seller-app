import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWSearch widget test', () {
    Map<String, dynamic> json = {
      "id": "post-search_1668412922941_wyj59v",
      "type": "post-search",
      "fields": {
        "placeholder": {
          "text": "Search Posts",
          "style": {
            "fontSize": 14,
            "color": {
              "value": {"r": 100, "g": 124, "b": 156, "a": 1},
              "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
            }
          }
        },
        "enableIcon": true,
        "icon": {"name": "search", "type": "feather"},
        "enableIconLeft": true
      },
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "backgroundColorInput": {
          "value": {"r": 244, "g": 244, "b": 244, "a": 1},
          "dark": {"r": 49, "g": 49, "b": 49, "a": 1}
        },
        "borderColorInput": {
          "value": {"r": 222, "g": 226, "b": 230, "a": 1},
          "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5}
        },
        "iconColorInput": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        }
      },
      "disable": false
    };

    AbdText placeholderExpected = AbdText.fromJson({
      "text": "Search Posts",
      "style": {
        "fontSize": 14,
        "color": {
          "value": {"r": 100, "g": 124, "b": 156, "a": 1},
          "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
        }
      }
    });

    AbdIcon iconExpected = AbdIcon.fromJson({"name": "search", "type": "feather"});

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor backgroundColorInputExpected = AbdColor.fromJson({
      "value": {"r": 244, "g": 244, "b": 244, "a": 1},
      "dark": {"r": 49, "g": 49, "b": 49, "a": 1}
    });

    AbdColor borderColorInputExpected = AbdColor.fromJson({
      "value": {"r": 222, "g": 226, "b": 230, "a": 1},
      "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5}
    });

    AbdColor iconColorInputExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 1},
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
    });

    AWSearch text = AWSearch.fromJson(json);

    //
    expect(text.id, "post-search_1668412922941_wyj59v");
    expect(text.type, "post-search");

    expect(text.fields.placeholder.toJson(), placeholderExpected.toJson());
    expect(text.fields.enableIcon, true);
    expect(text.fields.icon.toJson(), iconExpected.toJson());
    expect(text.fields.enableIconLeft, true);

    expect(text.styles.margin.toJson(), marginExpected.toJson());
    expect(text.styles.padding.toJson(), paddingExpected.toJson());
    expect(text.styles.background.toJson(), bgExpected.toJson());
    expect(text.styles.backgroundColorInput.toJson(), backgroundColorInputExpected.toJson());
    expect(text.styles.borderColorInput.toJson(), borderColorInputExpected.toJson());
    expect(text.styles.iconColorInput.toJson(), iconColorInputExpected.toJson());

    expect(text.toJson(), json);
  });
}
