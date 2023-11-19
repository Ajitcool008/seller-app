import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWBanner widget test', () {
    Map<String, dynamic> json = {
      "id": "banner_1668223982479_9ypq7c",
      "type": "banner",
      "fields": {
        "size": {"width": 375, "height": 330},
        "items": [
          {
            "template": "default",
            "data": {
              "image": {"src": "https://grocery2.rnlab.io/wp-content/uploads/2022/06/images-1-1.jpg"},
              "imageSize": "cover",
              "action": {
                "type": "screen",
                "route": "none",
                "args": {"key": "screens_none"}
              },
            }
          }
        ]
      },
      "layout": "list",
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "backgroundImage": {
          "src": "https://grocery2.rnlab.io/wp-content/uploads/2022/06/du-lich-ha-long-1-e1615968805541.jpg"
        },
        "pad": 12,
        "height": 300,
        "col": 2,
        "ratio": 1,
        "indicatorColor": {
          "value": {"r": 222, "g": 226, "b": 230, "a": 1},
          "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
        },
        "indicatorActiveColor": {
          "value": {"r": 159, "g": 173, "b": 192, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "backgroundColorItem": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "radius": 13
      },
      "disable": false
    };

    Size sizeExpected = const Size(375, 330);

    List<AWBannerTemplate> items = [
      {
        "template": "default",
        "data": {
          "image": {"src": "https://grocery2.rnlab.io/wp-content/uploads/2022/06/images-1-1.jpg"},
          "imageSize": "cover",
          "action": {
            "type": "screen",
            "route": "none",
            "args": {"key": "screens_none"}
          },
        }
      }
    ].map((e) => AWBannerTemplate.fromJson(e)).toList();

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdImage backgroundImageExpected = AbdImage.fromJson(
        {"src": "https://grocery2.rnlab.io/wp-content/uploads/2022/06/du-lich-ha-long-1-e1615968805541.jpg"});

    AbdColor indicatorColorExpected = AbdColor.fromJson({
      "value": {"r": 222, "g": 226, "b": 230, "a": 1},
      "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
    });

    AbdColor indicatorActiveColorExpected = AbdColor.fromJson({
      "value": {"r": 159, "g": 173, "b": 192, "a": 1},
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
    });

    AbdColor backgroundItemExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AWBanner banner = AWBanner.fromJson(json);

    //
    expect(banner.id, "banner_1668223982479_9ypq7c");
    expect(banner.type, "banner");
    expect(banner.layout, AWBannerLayout.list);

    expect(banner.fields.size, sizeExpected);
    for (int i = 0; i < banner.fields.items.length; i++) {
      expect(banner.fields.items[i].toJson(), items[i].toJson());
    }

    expect(banner.styles.margin.toJson(), marginExpected.toJson());
    expect(banner.styles.padding.toJson(), paddingExpected.toJson());
    expect(banner.styles.background.toJson(), bgExpected.toJson());
    expect(banner.styles.backgroundImage.toJson(), backgroundImageExpected.toJson());
    expect(banner.styles.pad, 12);
    expect(banner.styles.height, 300);
    expect(banner.styles.col, 2);
    expect(banner.styles.ratio, 1);
    expect(banner.styles.indicatorColor?.toJson(), indicatorColorExpected.toJson());
    expect(banner.styles.indicatorActiveColor?.toJson(), indicatorActiveColorExpected.toJson());
    expect(banner.styles.backgroundItem?.toJson(), backgroundItemExpected.toJson());
    expect(banner.styles.radiusItem, 13);

    expect(banner.toJson(), json);
  });
}
