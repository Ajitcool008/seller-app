import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWVideo widget test', () {
    Map<String, dynamic> json = {
      "id": "video_1668221119862_4zy42s",
      "type": "video",
      "fields": {
        "width": 600,
        "height": 200,
        "url": {"text": ""}
      },
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        }
      },
      "disable": false
    };

    AbdText urlExpected = AbdText.fromJson({"text": "", 'style': null});

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AWVideo video = AWVideo.fromJson(json);

    //
    expect(video.id, "video_1668221119862_4zy42s");
    expect(video.type, "video");

    expect(video.fields.width, 600);
    expect(video.fields.height, 200);
    expect(video.fields.url.toJson(), urlExpected.toJson());

    expect(video.styles.margin.toJson(), marginExpected.toJson());
    expect(video.styles.padding.toJson(), paddingExpected.toJson());
    expect(video.styles.background.toJson(), bgExpected.toJson());

    expect(video.toJson(), json);
  });
}
