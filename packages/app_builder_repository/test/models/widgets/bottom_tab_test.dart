import 'package:app_builder_repository/src/models/widgets/bottom_tab.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWBottomTab widget test', () {
    Map<String, dynamic> json = {
      "id": "tabs",
      "type": "tabs",
      "fields": {
        "animated": true,
        "fixedActive": false,
        "items": [
          {
            "template": "default",
            "data": {
              "icon": {"name": "home", "type": "feather"},
              "title": {"text": "Home"},
              "action": {
                "type": "tab",
                "route": "/",
                "args": {"key": "screens_home"}
              }
            }
          },
          {
            "template": "default",
            "data": {
              "icon": {"name": "search", "type": "feather"},
              "title": {"text": "Shop"},
              "action": {
                "type": "tab",
                "route": "/",
                "args": {"key": "screens_category"}
              }
            }
          },
          {
            "template": "default",
            "data": {
              "icon": {"name": "heart", "type": "feather"},
              "title": {"text": "Wishlist"},
              "action": {
                "type": "tab",
                "route": "/",
                "args": {"key": "screens_wishlist"}
              }
            }
          },
          {
            "template": "default",
            "data": {
              "icon": {"name": "shopping-cart", "type": "feather"},
              "title": {"text": "Cart"},
              "action": {
                "type": "tab",
                "route": "/",
                "args": {"key": "screens_cart"}
              }
            }
          },
          {
            "template": "default",
            "data": {
              "icon": {"name": "user", "type": "feather"},
              "title": {"text": "Me"},
              "action": {
                "type": "tab",
                "route": "/",
                "args": {"key": "screens_profile"}
              }
            }
          }
        ]
      },
      "styles": {
        "background": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 41, "g": 41, "b": 41, "a": 1}
        },
        "color": {
          "value": {"r": 159, "g": 173, "b": 192, "a": 1},
          "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
        },
        "colorActive": {
          "value": {"r": 6, "g": 134, "b": 248, "a": 1},
          "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
        },
        "colorOnActive": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "enableShadow": true,
        "padTop": 12,
        "pad": 4,
        "padBottom": 12,
        "radius": 12,
        "activeBorderRadius": 30
      },
      "layout": "default"
    };

    AWBottomTab general = AWBottomTab.fromJson(json);

    //
    expect(general.id, "tabs");
    expect(general.type, "tabs");
    expect(general.layout, AWBottomTabLayout.defaultBT);

    expect(general.toJson(), json);
  });
}
