import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWPageBlock widget test', () {
    Map<String, dynamic> json = {
      "id": "page-block_1668396455290_5dj0nq",
      "type": "page-block",
      "fields": {
        "page": {"key": 1500433, "text": "Elementor form"}
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

    AbdOption pageExpected = AbdOption.fromJson({"key": 1500433, "text": "Elementor form"});

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AWPageBlock pageBlock = AWPageBlock.fromJson(json);

    //
    expect(pageBlock.id, "page-block_1668396455290_5dj0nq");
    expect(pageBlock.type, "page-block");

    expect(pageBlock.fields.page.toJson(), pageExpected.toJson());

    expect(pageBlock.styles.margin.toJson(), marginExpected.toJson());
    expect(pageBlock.styles.padding.toJson(), paddingExpected.toJson());
    expect(pageBlock.styles.background.toJson(), bgExpected.toJson());

    expect(pageBlock.toJson(), json);
  });
}
