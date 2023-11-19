import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWDivider widget test', () {
    Map<String, dynamic> json = {
      "id": "divider_1668157062198_85gao",
      "type": "divider",
      "fields": {"height": 15, "type": "solid"},
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 20, "paddingTop": 20},
        "margin": {"marginLeft": 30, "marginRight": 30, "marginBottom": 0, "marginTop": 0},
        "color": {
          "value": {"r": 245, "g": 166, "b": 35, "a": 1},
          "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5}
        },
        "background": {
          "value": {"r": 65, "g": 117, "b": 5, "a": 1},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        }
      },
      "disable": false
    };

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 20, "paddingTop": 20});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 30, "marginRight": 30, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 65, "g": 117, "b": 5, "a": 1},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor colorExpected = AbdColor.fromJson({
      "value": {"r": 245, "g": 166, "b": 35, "a": 1},
      "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5}
    });

    AWDivider divider = AWDivider.fromJson(json);

    //
    expect(divider.id, "divider_1668157062198_85gao");
    expect(divider.type, "divider");

    expect(divider.fields.height, 15);
    expect(divider.fields.type, AWDividerType.solid);

    expect(divider.styles.margin.toJson(), marginExpected.toJson());
    expect(divider.styles.padding.toJson(), paddingExpected.toJson());
    expect(divider.styles.background.toJson(), bgExpected.toJson());
    expect(divider.styles.color.toJson(), colorExpected.toJson());

    expect(divider.toJson(), json);
  });
}
