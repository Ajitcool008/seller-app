import 'package:app_builder_repository/src/models/widgets/vendor.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWVendor widget test', () {
    Map<String, dynamic> json = {
      "id": "vendor-best-selling_1668422917851_cn6u8v",
      "type": "vendor-best-selling",
      "fields": {
        "categories": [],
        "search": {"text": ""},
        "limit": 4,
        "enableRating": true,
        "template": {"template": "contained", "data": {}}
      },
      "layout": "list",
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "pad": 12,
        "height": 300,
        "col": 2,
        "ratio": 1,
        "widthItem": 250,
        "backgroundColorItem": {
          "dark": {"r": 49, "g": 49, "b": 49, "a": 1},
          "value": {"r": 244, "g": 244, "b": 244, "a": 1}
        },
        "textColor": {
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "subTextColor": {
          "dark": {"r": 204, "g": 204, "b": 204, "a": 1},
          "value": {"r": 159, "g": 173, "b": 192, "a": 1}
        },
        "radius": 8,
        "shadowColor": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "offsetX": 0,
        "offsetY": 4,
        "blurRadius": 24,
        "spreadRadius": 0
      },
      "disable": false
    };

    AWVendor post = AWVendor.fromJson(json);

    expect(post.id, "vendor-best-selling_1668422917851_cn6u8v");
    expect(post.type, "vendor-best-selling");
    expect(post.layout, AWVendorLayout.list);

    expect(post.toJson(), json);
  });
}
