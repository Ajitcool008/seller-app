import 'package:app_builder_repository/src/models/widgets/product_category.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWProductCategory widget test', () {
    Map<String, dynamic> json = {
      "id": "product-category_1618802700325_0u7cfb",
      "type": "product-category",
      "fields": {
        "limit": 8,
        "includeCategory": [],
        "excludeCategory": [
          {
            "key": 15,
            "text": "Uncategorized"
          }
        ],
        "template": {
          "template": "default",
          "data": {
            "enableName": true,
            "enableNumber": false,
            "alignment": "left",
            "enableRoundImage": false,
            "pad": 8,
            "borderColor": {
              "value": {
                "r": 222,
                "g": 226,
                "b": 230,
                "a": 1
              },
              "dark": {
                "r": 84,
                "g": 84,
                "b": 88,
                "a": 0.5
              }
            },
            "borderStyle": "none",
            "thumbSizes": "woocommerce_thumbnail"
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
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 0
          },
          "value": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 0
          }
        },
        "pad": 16,
        "height": 168.0,
        "col": 2,
        "ratio": 1,
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
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 0
          },
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 0
          }
        },
        "textColor": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 1
          }
        },
        "subTextColor": {
          "dark": {
            "r": 204,
            "g": 204,
            "b": 204,
            "a": 1
          },
          "value": {
            "r": 100,
            "g": 124,
            "b": 156,
            "a": 1
          }
        },
        "radius": 0,
        "radiusImage": 0,
        "maxHeightImage": 120.0
      },
      "disable": false
    };

    AWProductCategory productCategory = AWProductCategory.fromJson(json);

    expect(productCategory.toJson(), json);
  });
}
