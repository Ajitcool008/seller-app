import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWTab widget test', () {
    Map<String, dynamic> json = {
      "id": "tab-basic_1668398612248_s2xee",
      "type": "tab-basic",
      "fields": {
        "items": [
          {
            "template": "default",
            "data": {
              "title": {"tab": "Item"},
              "content": {"tab": "Content"}
            }
          }
        ]
      },
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "tabColor": {
          "value": {"r": 159, "g": 173, "b": 192, "a": 1},
          "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
        },
        "selectTabColor": {
          "value": {"r": 6, "g": 134, "b": 248, "a": 1},
          "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
        },
        "contentHeight": 300,
        "contentTextColor": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        }
      },
      "disable": false
    };

    List<AWTabTemplate> itemExpected = [
      {
        "template": "default",
        "data": {
          "title": {"tab": "Item"},
          "content": {"tab": "Content"}
        }
      }
    ].map((e) => AWTabTemplate.fromJson(e)).toList();

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor tabColorExpected = AbdColor.fromJson({
      "value": {"r": 159, "g": 173, "b": 192, "a": 1},
      "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
    });

    AbdColor selectTabColorExpected = AbdColor.fromJson({
      "value": {"r": 6, "g": 134, "b": 248, "a": 1},
      "dark": {"r": 6, "g": 134, "b": 248, "a": 1}
    });

    AbdColor contentTextColorExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 1},
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
    });

    AWTab tab = AWTab.fromJson(json);

    //
    expect(tab.id, "tab-basic_1668398612248_s2xee");
    expect(tab.type, "tab-basic");

    for (int i = 0; i < tab.fields.items.length; i++) {
      expect(tab.fields.items[i].toJson(), itemExpected[i].toJson());
    }

    expect(tab.styles.margin.toJson(), marginExpected.toJson());
    expect(tab.styles.padding.toJson(), paddingExpected.toJson());
    expect(tab.styles.background.toJson(), bgExpected.toJson());
    expect(tab.styles.tabColor.toJson(), tabColorExpected.toJson());
    expect(tab.styles.selectTabColor.toJson(), selectTabColorExpected.toJson());
    expect(tab.styles.contentHeight, 300);
    expect(tab.styles.contentTextColor.toJson(), contentTextColorExpected.toJson());

    expect(tab.toJson(), json);
  });
}
