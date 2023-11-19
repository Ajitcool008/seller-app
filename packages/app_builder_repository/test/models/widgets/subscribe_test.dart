import 'package:app_builder_repository/src/models/widgets/subscribe.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWSubscribe widget test', () {
    Map<String, dynamic> json = {
      "id": "subscribe_1668393018890_n3691r",
      "type": "subscribe",
      "fields": {
        "title": {
          "text": "Stay in touch",
          "style": {
            "fontSize": 22,
            "fontWeight": "500",
            "color": {
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
            }
          }
        },
        "description": {
          "text": "Get notified about exclusive offers every week!",
          "style": {
            "fontSize": 22,
            "color": {
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
            }
          }
        },
        "placeholder": {
          "text": "Your Email"
        },
        "name": "your-email",
        "formId": "",
        "txtButton": {
          "text": "Subscribe"
        }
      },
      "layout": "default",
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
        "image": {
          "src": "test"
        },
        "sizeIcon": 20,
        "colorIcon": {
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
        "backgroundInput": {
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
        "colorInput": {
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
        "colorPlaceholder": {
          "value": {
            "r": 100,
            "g": 124,
            "b": 156,
            "a": 1
          },
          "dark": {
            "r": 204,
            "g": 204,
            "b": 204,
            "a": 1
          }
        },
        "borderInput": {
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
        "backgroundButton": {
          "value": {
            "r": 6,
            "g": 134,
            "b": 248,
            "a": 1
          },
          "dark": {
            "r": 6,
            "g": 134,
            "b": 248,
            "a": 1
          }
        },
        "colorButton": {
          "value": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        }
      },
      "disable": false
    };

    AWSubscribe subscribe = AWSubscribe.fromJson(json);

    expect(subscribe.toJson(), json);
  });
}
