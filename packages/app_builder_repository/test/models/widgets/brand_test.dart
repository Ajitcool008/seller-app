import 'package:app_builder_repository/src/models/widgets/brand.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWBrand widget test', () {
    Map<String, dynamic> json = {
      "id": "brand_1629255292890_f7h4l",
      "type": "brand",
      "fields": {
        "limit": 4,
        "template": {
          "template": "default",
          "data": {
            "enableImage": true,
            "enableName": false,
            "imageSize": "fill",
            "alignment": "left"
          }
        }
      },
      "layout": "carousel",
      "styles": {
        "padding": {
          "paddingLeft": 20,
          "paddingRight": 20,
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
          "dark": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          },
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          }
        },
        "pad": 16,
        "dividerWidth": 0,
        "dividerColor": {
          "dark": {
            "r": 84,
            "g": 84,
            "b": 88,
            "a": 0.5
          },
          "value": {
            "r": 222,
            "g": 226,
            "b": 230,
            "a": 1
          }
        },
        "col": 2,
        "ratio": 1,
        "width": 140.0,
        "height": 70.0,
        "indicatorColor": {
          "value": {
            "r": 222,
            "g": 226,
            "b": 230,
            "a": 1
          },
          "dark": {
            "r": 142,
            "g": 142,
            "b": 147,
            "a": 1
          }
        },
        "indicatorActiveColor": {
          "value": {
            "r": 159,
            "g": 173,
            "b": 192,
            "a": 1
          },
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        },
        "backgroundItem": {
          "value": {
            "r": 244,
            "g": 244,
            "b": 244,
            "a": 0
          },
          "dark": {
            "r": 49,
            "g": 49,
            "b": 49,
            "a": 1
          }
        },
        "textItem": {
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 1
          },
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        },
        "paddingContent": {
          "paddingContentLeft": 0,
          "paddingContentRight": 0,
          "paddingContentBottom": 1,
          "paddingContentTop": 1
        },
        "radius": 8,
        "offsetY": 0,
        "shadowColor": {
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0.1
          },
          "dark": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          }
        },
        "blurRadius": 0,
        "offsetX": 0,
        "spreadRadius": 1
      },
      "disable": false
    };

    AWBrand brand = AWBrand.fromJson(json);

    expect(brand.toJson(), json);
  });
}
