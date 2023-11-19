import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWIconBox widget test', () {
    Map<String, dynamic> json = {
      "id": "icon-box_1668390621239_67hh6",
      "type": "icon-box",
      "fields": {
        "items": [
          {
            "template": "default",
            "data": {
              "icon": {"name": "settings", "type": "feather"},
              "title": {
                "text": "Title",
                "style": {
                  "color": {
                    "value": {"r": 0, "g": 0, "b": 0, "a": 1.0},
                    "dark": {"r": 255, "g": 255, "b": 255, "a": 1.0}
                  },
                  "fontSize": 16.0,
                  "fontFamily": 'Poppins',
                  "fontWeight": '500',
                  "letterSpacing": 1.2,
                  "height": 2.4,
                  "textDecoration": "underline",
                  "backgroundColor": {
                    "value": {"r": 0, "g": 0, "b": 0, "a": 0},
                    "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
                  }
                }
              },
              "description": {
                "text": "Description",
                "style": {
                  "fontSize": 14,
                  "color": {
                    "value": {"r": 100, "g": 124, "b": 156, "a": 1},
                    "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
                  },
                  "fontFamily": 'Poppins',
                  "fontWeight": '500',
                  "letterSpacing": 1.2,
                  "height": 2.4,
                  "textDecoration": "underline",
                  "backgroundColor": {
                    "value": {"r": 0, "g": 0, "b": 0, "a": 0},
                    "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
                  }
                }
              },
              "action": {
                "type": "screen",
                "route": "none",
                "args": {"key": "screens_none"}
              }
            }
          }
        ]
      },
      "layout": "list",
      "styles": {
        "padding": {
          "paddingLeft": 0,
          "paddingRight": 0,
          "paddingBottom": 0,
          "paddingTop": 0
        },
        "margin": {
          "marginLeft": 0,
          "marginRight": 0,
          "marginBottom": 0,
          "marginTop": 0
        },
        "background": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "pad": 12,
        "height": 300,
        "width": 300,
        "col": 2,
        "ratio": 1,
        "indicatorColor": {
          "value": {"r": 222, "g": 226, "b": 230, "a": 1},
          "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
        },
        "indicatorActiveColor": {
          "value": {"r": 159, "g": 173, "b": 192, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "backgroundColorItem": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "borderColor": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "radius": 0,
        "enableBoxIcon": false,
        "iconColor": {
          "dark": {"r": 6, "g": 134, "b": 248, "a": 1},
          "value": {"r": 6, "g": 134, "b": 248, "a": 1}
        },
        "sizeIcon": 36,
        "sizeBoxIcon": 54,
        "iconBoxColor": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "iconBorder": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "shadowColor": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "offsetX": 0,
        "offsetY": 4,
        "blurRadius": 24,
        "spreadRadius": 0
      },
      "disable": false
    };

    List<AWIconBoxTemplate> itemsExpected = [
      {
        "template": "default",
        "data": {
          "icon": {"name": "settings", "type": "feather"},
          "title": {
            "text": "Title",
            "style": {
              "color": {
                "value": {"r": 0, "g": 0, "b": 0, "a": 1.0},
                "dark": {"r": 255, "g": 255, "b": 255, "a": 1.0}
              },
              "fontSize": 16.0,
              "fontFamily": 'Poppins',
              "fontWeight": '500',
              "letterSpacing": 1.2,
              "height": 2.4,
              "textDecoration": "underline",
              "backgroundColor": {
                "value": {"r": 0, "g": 0, "b": 0, "a": 0},
                "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
              }
            }
          },
          "description": {
            "text": "Description",
            "style": {
              "fontSize": 14,
              "color": {
                "value": {"r": 100, "g": 124, "b": 156, "a": 1},
                "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
              },
              "fontFamily": 'Poppins',
              "fontWeight": '500',
              "letterSpacing": 1.2,
              "height": 2.4,
              "textDecoration": "underline",
              "backgroundColor": {
                "value": {"r": 0, "g": 0, "b": 0, "a": 0},
                "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
              }
            }
          },
          "action": {
            "type": "screen",
            "route": "none",
            "args": {"key": "screens_none"}
          }
        }
      }
    ].map((e) => AWIconBoxTemplate.fromJson(e)).toList();

    AbdSpacing paddingExpected = AbdSpacing.fromJson({
      "paddingLeft": 0,
      "paddingRight": 0,
      "paddingBottom": 0,
      "paddingTop": 0
    });

    AbdSpacing marginExpected = AbdSpacing.fromJson(
        {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor indicatorColorExpected = AbdColor.fromJson({
      "value": {"r": 222, "g": 226, "b": 230, "a": 1},
      "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
    });

    AbdColor indicatorActiveColorExpected = AbdColor.fromJson({
      "value": {"r": 159, "g": 173, "b": 192, "a": 1},
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
    });

    AbdColor bdItemExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor borderColorItemExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor iconColorExpected = AbdColor.fromJson({
      "dark": {"r": 6, "g": 134, "b": 248, "a": 1},
      "value": {"r": 6, "g": 134, "b": 248, "a": 1}
    });

    AbdColor iconBoxExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor iconBorderExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor shadowColorExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AWIconBox iconBox = AWIconBox.fromJson(json);

    //
    expect(iconBox.id, "icon-box_1668390621239_67hh6");
    expect(iconBox.type, "icon-box");
    expect(iconBox.layout, AWIconBoxLayout.list);

    for (int i = 0; i < iconBox.fields.items.length; i++) {
      expect(iconBox.fields.items[i].toJson(), itemsExpected[i].toJson());
    }

    expect(iconBox.styles.margin.toJson(), marginExpected.toJson());
    expect(iconBox.styles.padding.toJson(), paddingExpected.toJson());
    expect(iconBox.styles.background!.toJson(), bgExpected.toJson());
    expect(iconBox.styles.pad, 12);
    expect(iconBox.styles.height, 300);
    expect(iconBox.styles.width, 300);
    expect(iconBox.styles.col, 2);
    expect(iconBox.styles.ratio, 1);
    expect(iconBox.styles.indicatorColor!.toJson(),
        indicatorColorExpected.toJson());
    expect(iconBox.styles.indicatorActiveColor!.toJson(),
        indicatorActiveColorExpected.toJson());
    expect(
        iconBox.styles.backgroundColorItem!.toJson(), bdItemExpected.toJson());
    expect(
        iconBox.styles.borderColor!.toJson(), borderColorItemExpected.toJson());
    expect(iconBox.styles.radius, 0);
    expect(iconBox.styles.enableBoxIcon, false);
    expect(iconBox.styles.iconColor!.toJson(), iconColorExpected.toJson());
    expect(iconBox.styles.sizeIcon, 36);
    expect(iconBox.styles.sizeBoxIcon, 54);
    expect(iconBox.styles.iconBoxColor!.toJson(), iconBoxExpected.toJson());
    expect(iconBox.styles.iconBorder!.toJson(), iconBorderExpected.toJson());
    expect(iconBox.styles.shadowColor!.toJson(), shadowColorExpected.toJson());
    expect(iconBox.styles.offsetX, 0);
    expect(iconBox.styles.offsetY, 4);
    expect(iconBox.styles.blurRadius, 24);
    expect(iconBox.styles.spreadRadius, 0);

    expect(iconBox.toJson(), json);
  });
}
