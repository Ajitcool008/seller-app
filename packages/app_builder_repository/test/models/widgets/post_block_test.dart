import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWPostBlock widget test', () {
    Map<String, dynamic> json = {
      "id": "post-block_1668398102322_junn7",
      "type": "post-block",
      "fields": {
        "post": {"key": 1435027, "text": "News today"}
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

    AbdOption postExpected = AbdOption.fromJson({"key": 1435027, "text": "News today"});

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AWPostBlock postBlock = AWPostBlock.fromJson(json);

    //
    expect(postBlock.id, "post-block_1668398102322_junn7");
    expect(postBlock.type, "post-block");

    expect(postBlock.fields.post.toJson(), postExpected.toJson());

    expect(postBlock.styles.margin.toJson(), marginExpected.toJson());
    expect(postBlock.styles.padding.toJson(), paddingExpected.toJson());
    expect(postBlock.styles.background.toJson(), bgExpected.toJson());

    expect(postBlock.toJson(), json);
  });
}
