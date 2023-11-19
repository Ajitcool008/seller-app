import 'package:app_builder_repository/src/models/widgets/socials.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Social with all correct format', () {
    Map<String, dynamic> json = {
      "id": "social_1668241383421_oompjr",
      "styles": {
        "padding": {
          "paddingTop": 0,
          "paddingRight": 0,
          "paddingBottom": 0,
          "paddingLeft": 0
        },
        "background": {
          "dark": {
            "g": 0,
            "r": 0,
            "a": 0,
            "b": 0
          },
          "value": {
            "g": 0,
            "r": 0,
            "a": 0,
            "b": 0
          }
        },
        "margin": {
          "marginBottom": 0,
          "marginLeft": 0,
          "marginTop": 0,
          "marginRight": 0
        }
      },
      "fields": {
        "alignment": "left",
        "pad": 16,
        "socials": [
          {
            "template": "default",
            "data": {
              "linkSocial": {
                "vi": "https://grocery2.rnlab.io/wp-admin/admin.php?page=app-builder",
                "text": ""
              },
              "iconColor": {
                "dark": {
                  "g": 134,
                  "r": 6,
                  "a": 1,
                  "b": 248
                },
                "value": {
                  "g": 128,
                  "r": 54,
                  "a": 1,
                  "b": 193
                }
              },
              "enableRound": true,
              "enableOutLine": true,
              "icon": {
                "type": "awesome",
                "name": "fab-facebook"
              },
              "backgroundColor": {
                "dark": {
                  "g": 0,
                  "r": 0,
                  "a": 0,
                  "b": 0
                },
                "value": {
                  "g": 49,
                  "r": 222,
                  "a": 0,
                  "b": 49
                }
              }
            }
          },
          {
            "template": "default",
            "data": {
              "linkSocial": {
                "text": ""
              },
              "iconColor": {
                "dark": {
                  "g": 134,
                  "r": 6,
                  "a": 1,
                  "b": 248
                },
                "value": {
                  "g": 134,
                  "r": 6,
                  "a": 1,
                  "b": 248
                }
              },
              "enableRound": false,
              "enableOutLine": true,
              "icon": {
                "type": "awesome",
                "name": "fab-facebook"
              },
              "backgroundColor": {
                "dark": {
                  "g": 0,
                  "r": 0,
                  "a": 0,
                  "b": 0
                },
                "value": {
                  "g": 0,
                  "r": 0,
                  "a": 0,
                  "b": 0
                }
              }
            }
          },
          {
            "template": "default",
            "data": {
              "linkSocial": {
                "text": ""
              },
              "iconColor": {
                "dark": {
                  "g": 134,
                  "r": 6,
                  "a": 1,
                  "b": 248
                },
                "value": {
                  "g": 134,
                  "r": 6,
                  "a": 1,
                  "b": 248
                }
              },
              "enableRound": false,
              "enableOutLine": true,
              "icon": {
                "type": "awesome",
                "name": "fab-facebook"
              },
              "backgroundColor": {
                "dark": {
                  "g": 0,
                  "r": 0,
                  "a": 0,
                  "b": 0
                },
                "value": {
                  "g": 0,
                  "r": 0,
                  "a": 0,
                  "b": 0
                }
              }
            }
          },
          {
            "template": "default",
            "data": {
              "linkSocial": {
                "text": ""
              },
              "iconColor": {
                "dark": {
                  "g": 134,
                  "r": 6,
                  "a": 1,
                  "b": 248
                },
                "value": {
                  "g": 134,
                  "r": 6,
                  "a": 1,
                  "b": 248
                }
              },
              "enableRound": false,
              "enableOutLine": true,
              "icon": {
                "type": "awesome",
                "name": "fab-facebook"
              },
              "backgroundColor": {
                "dark": {
                  "g": 0,
                  "r": 0,
                  "a": 0,
                  "b": 0
                },
                "value": {
                  "g": 0,
                  "r": 0,
                  "a": 0,
                  "b": 0
                }
              }
            }
          }
        ]
      },
      "type": "social",
      "disable": false
    };

    AWSocials socials = AWSocials.fromJson(json);

    expect(socials.type, 'social');
    expect(socials.id, "social_1668241383421_oompjr");

    expect(socials.toJson(), json);
  });
}
