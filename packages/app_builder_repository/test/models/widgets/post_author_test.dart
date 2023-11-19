import 'package:app_builder_repository/src/models/widgets/post_author.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWPostAuth widget test', () {
    Map<String, dynamic> json = {
      "id": "post-author_1668249705898_2d0lly",
      "type": "post-author",
      "fields": {
        "limit": 4,
        "template": {
          "template": "vertical",
          "data": {
            "enableAvatar": true,
            "enableCount": true
          }
        }
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
        "height": 300,
        "pad": 12,
        "backgroundItem": {
          "dark": {
            "r": 49,
            "g": 49,
            "b": 49,
            "a": 1
          },
          "value": {
            "r": 244,
            "g": 244,
            "b": 244,
            "a": 1
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
            "r": 159,
            "g": 173,
            "b": 192,
            "a": 1
          },
          "value": {
            "r": 159,
            "g": 173,
            "b": 192,
            "a": 1
          }
        },
        "radiusItem": 8,
        "shadowColor": {
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          },
          "dark": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          }
        },
        "offsetX": 0,
        "offsetY": 4,
        "blurRadius": 24,
        "spreadRadius": 0
      },
      "disable": false
    };

    AWPostAuth postAuth = AWPostAuth.fromJson(json);

    expect(postAuth.toJson(), json);
  });
}
