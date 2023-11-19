import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWSpacer widget test', () {
    Map<String, dynamic> json = {
      "id": "spacer_1668155652584_gnx5vn",
      "type": "spacer",
      "fields": {"height": 20},
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "backgroundColor": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        }
      },
      "disable": false
    };

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AWSpacer spacer = AWSpacer.fromJson(json);

    //
    expect(spacer.id, "spacer_1668155652584_gnx5vn");
    expect(spacer.type, "spacer");

    expect(spacer.fields.height, 20);

    expect(spacer.styles.margin.toJson(), marginExpected.toJson());
    expect(spacer.styles.padding.toJson(), paddingExpected.toJson());
    expect(spacer.styles.background.toJson(), bgExpected.toJson());

    expect(spacer.toJson(), json);
  });
}
