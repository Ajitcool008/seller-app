import 'package:app_builder_repository/src/models/widgets/youtube.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWYoutube widget test', () {
    Map<String, dynamic> json = {
      "id": "video-youtube_1668395274771_eoezzp",
      "type": "video-youtube",
      "fields": {
        "width": 600.0,
        "height": 200.0,
        "url": {
          "text": ""
        }
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

    AWYoutube youtube = AWYoutube.fromJson(json);

    expect(youtube.toJson(), json);
  });
}
