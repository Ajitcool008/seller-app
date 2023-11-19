import 'package:app_builder_repository/src/models/widgets/sidebar.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWSidebar widget test', () {
    Map<String, dynamic> json = {
      "id": "sidebar",
      "type": "sidebar",
      "fields": {
        "enableHeaderSidebar": true,
        "alignHeader": "left",
        "enableCategory": true,
        "alignCategory": "left",
        "showHierarchy": true,
        "titleCategory": {"text": "Categories"},
        "enableCount": false,
        "enableImageCategory": false,
        "includeCategory": [],
        "excludeCategory": [],
        "depth": 3,
        "enableCustomize": true,
        "alignCustomize": "left",
        "enableIconCustomize": true,
        "titleCustomize": {"text": "Help & Info"},
        "itemsCustomize": [
          {
            "template": "default",
            "data": {
              "icon": {"name": "book", "type": "feather"},
              "title": {"text": "Blog"},
              "action": {
                "type": "screen",
                "route": "/post_list",
                "args": {"key": "screens_posts"}
              }
            }
          },
          {
            "template": "default",
            "data": {
              "icon": {"name": "phone", "type": "feather"},
              "title": {"text": "Contact us"},
              "action": {
                "type": "screen",
                "route": "/contact",
                "args": {"key": "screens_contact"}
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
          "value": {"r": 0, "g": 0, "b": 0, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "borderColor": {
          "value": {"r": 222, "g": 226, "b": 230, "a": 1},
          "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5}
        },
        "enableImageBg": false,
        "imageBg": "https://grocery2.rnlab.io/wp-content/plugins/app-builder/assets/images/placeholder-416x416.png"
      },
      "layout": "default"
    };

    AWSidebar sidebar = AWSidebar.fromJson(json);

    //
    expect(sidebar.id, "sidebar");
    expect(sidebar.type, "sidebar");
    expect(sidebar.layout, AWSidebarLayout.defaultSidebar);

    expect(sidebar.toJson(), json);
  });
}
