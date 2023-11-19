import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWPostTag widget test', () {
    Map<String, dynamic> json = {
      "id": "post-tag_1668411892482_kriy6j",
      "type": "post-tag",
      "fields": {"limit": 5, "height": 34, "borderRadius": 5, "pad": 8},
      "layout": "wrap",
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "itemColor": {
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "itemBackground": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "itemBorderColor": {
          "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5},
          "value": {"r": 222, "g": 226, "b": 230, "a": 1}
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

    AbdColor itemColorExpected = AbdColor.fromJson({
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
      "value": {"r": 0, "g": 0, "b": 0, "a": 1}
    });

    AbdColor itemBackgroundExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor itemBorderColorExpected = AbdColor.fromJson({
      "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5},
      "value": {"r": 222, "g": 226, "b": 230, "a": 1}
    });

    AWPostTag postTag = AWPostTag.fromJson(json);

    //
    expect(postTag.id, "post-tag_1668411892482_kriy6j");
    expect(postTag.type, "post-tag");
    expect(postTag.layout, AWPostTagLayout.wrap);

    expect(postTag.fields.limit, 5);
    expect(postTag.fields.height, 34);
    expect(postTag.fields.borderRadius, 5);
    expect(postTag.fields.pad, 8);

    expect(postTag.styles.margin.toJson(), marginExpected.toJson());
    expect(postTag.styles.padding.toJson(), paddingExpected.toJson());
    expect(postTag.styles.background.toJson(), bgExpected.toJson());
    expect(postTag.styles.itemColor.toJson(), itemColorExpected.toJson());
    expect(postTag.styles.itemBackground.toJson(), itemBackgroundExpected.toJson());
    expect(postTag.styles.itemBorderColor.toJson(), itemBorderColorExpected.toJson());

    expect(postTag.toJson(), json);
  });
}
