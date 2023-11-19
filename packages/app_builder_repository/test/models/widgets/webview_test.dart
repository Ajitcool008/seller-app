import 'package:app_builder_repository/src/models/widgets/webview.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWWebView widget test', () {
    Map<String, dynamic> json = {
      "id": "webview_1668236851015_bmt7zg",
      "type": "webview",
      "fields": {
        "height": 200.0,
        "url": {
          "text": "https://grocery2.rnlab.io/wp-admin/admin.php?page=app-builder"
        },
        "syncAuth": true,
        "syncAuthWebToApp": true,
        "items": [
          {
            "template": "default",
            "data": {
              "condition": "url_start",
              "value": "3333",
              "action": {
                "type": "tab",
                "route": "/product/category",
                "args": {
                  "name": "Category",
                  "key": "screens_category"
                }
              }
            }
          },
          {
            "template": "default",
            "data": {
              "condition": "url_contain",
              "value": "44",
              "action": {
                "type": "screen",
                "route": "none",
                "args": {
                  "key": "screens_none"
                }
              }
            }
          }
        ]
      },
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
        }
      },
      "disable": false
    };

    AWWebView webView = AWWebView.fromJson(json);

    expect(webView.toJson(), json);
  });
}
