import 'package:app_builder_repository/src/models/widgets/countdown.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWCountdown widget test', () {
    Map<String, dynamic> json = {
      "id": "countdown_1668245197723_m4klfn",
      "type": "countdown",
      "fields": {
        "title": {
          "text": "Deal Today",
          "style": {
            "fontSize": 22,
            "color": {
              "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
              "value": {"r": 0, "g": 0, "b": 0, "a": 1}
            },
            "fontWeight": "500"
          }
        },
        "action": {
          "type": "screen",
          "route": "none",
          "args": {"key": "screens_none"}
        },
        "expireDate": "2022-11-22T09:25:29.946Z",
        "alignment": "left",
        "enableDay": true,
        "enableHour": true,
        "enableMinute": true,
        "enableSecond": true,
        "enableSeparator": true
      },
      "layout": "horizontal",
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "pad": 16,
        "backgroundTime": {
          "value": {"r": 6, "g": 134, "b": 248, "a": 1},
          "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
        },
        "borderTime": {
          "value": {"r": 6, "g": 134, "b": 248, "a": 1},
          "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
        },
        "textColor": {
          "value": {"r": 255, "g": 255, "b": 255, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "separatorColor": {
          "value": {"r": 100, "g": 124, "b": 156, "a": 1},
          "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
        },
        "padTime": 12
      },
      "disable": false
    };

    AWCountdown countdown = AWCountdown.fromJson(json);

    expect(countdown.toJson(), json);
  });
}
