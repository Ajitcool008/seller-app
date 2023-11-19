import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWPostComment widget test', () {
    Map<String, dynamic> json = {
      "id": "post-comment_1668411155332_x0oq10o",
      "type": "post-comment",
      "fields": {"enableAvatar": true, "enableDate": true, "enableExcerpt": true, "limit": 5},
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        }
      },
      "disable": false
    };

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AWPostComment postComment = AWPostComment.fromJson(json);

    //
    expect(postComment.id, "post-comment_1668411155332_x0oq10o");
    expect(postComment.type, "post-comment");

    expect(postComment.fields.enableAvatar, true);
    expect(postComment.fields.enableDate, true);
    expect(postComment.fields.enableExcerpt, true);
    expect(postComment.fields.limit, 5);

    expect(postComment.styles.margin.toJson(), marginExpected.toJson());
    expect(postComment.styles.padding.toJson(), paddingExpected.toJson());
    expect(postComment.styles.background.toJson(), bgExpected.toJson());

    expect(postComment.toJson(), json);
  });
}
