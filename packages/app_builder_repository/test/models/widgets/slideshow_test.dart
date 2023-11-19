import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWSlideshow widget test', () {
    Map<String, dynamic> json = {
      "id": "slideshow_1668224144163_h31qha",
      "type": "slideshow",
      "fields": {
        "autoPlay": false,
        "enableIndicator": true,
        "autoPlayDelay": 3000,
        "autoPlayInterval": 500,
        "size": {"width": 375, "height": 330},
        "scrollDirection": 0,
        "items": [
          {
            "template": "default",
            "data": {
              "image": {"src": ""},
              "layer": [
                {
                  "active": false,
                  "value": {
                    "type": "text",
                    "position": {"width": 0, "height": 0, "left": 5, "top": 5, "right": 5, "bottom": 5}
                  }
                }
              ]
            }
          }
        ]
      },
      "layout": "basic",
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "borderRadius": 0,
        "indicatorAlignment": "bottom-start",
        "indicatorColor": {
          "value": {"r": 222, "g": 226, "b": 230, "a": 1},
          "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
        },
        "indicatorActiveColor": {
          "value": {"r": 159, "g": 173, "b": 192, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "indicatorMargin": {
          "indicatorMarginLeft": 5,
          "indicatorMarginTop": 5,
          "indicatorMarginRight": 5,
          "indicatorMarginBottom": 5
        },
        "indicatorSize": 6,
        "activeIndicatorSize": 10,
        "indicatorSpace": 4
      },
      "disable": false
    };

    List<AWSlideshowTemplate> itemsExpected = [
      {
        "template": "default",
        "data": {
          "image": {"src": ""},
          "layer": [
            {
              "active": false,
              "value": {
                "type": "text",
                "position": {"width": 0, "height": 0, "left": 5, "top": 5, "right": 5, "bottom": 5}
              }
            }
          ]
        }
      }
    ].map((element) => AWSlideshowTemplate.fromJson(element)).toList();

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor indicatorColorExpected = AbdColor.fromJson({
      "value": {"r": 222, "g": 226, "b": 230, "a": 1},
      "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
    });

    AbdColor indicatorActiveColorExpected = AbdColor.fromJson({
      "value": {"r": 159, "g": 173, "b": 192, "a": 1},
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
    });

    AbdSpacing indicatorMarginExpected = AbdSpacing.fromJson(
        {"indicatorMarginLeft": 5, "indicatorMarginTop": 5, "indicatorMarginRight": 5, "indicatorMarginBottom": 5});

    AWSlideshow slideshow = AWSlideshow.fromJson(json);

    //
    expect(slideshow.id, "slideshow_1668224144163_h31qha");
    expect(slideshow.type, "slideshow");
    expect(slideshow.layout, AWSlideshowLayout.basic);

    expect(slideshow.fields.autoPlay, false);
    expect(slideshow.fields.enableIndicator, true);
    expect(slideshow.fields.autoPlayDelay, 3000);
    expect(slideshow.fields.autoPlayInterval, 500);
    expect(slideshow.fields.size, const Size(375, 330));
    expect(slideshow.fields.scrollDirection, Axis.horizontal);
    for (int i = 0; i < slideshow.fields.items.length; i++) {
      expect(slideshow.fields.items[i].toJson(), itemsExpected[i].toJson());
    }

    expect(slideshow.styles.margin.toJson(), marginExpected.toJson());
    expect(slideshow.styles.padding.toJson(), paddingExpected.toJson());
    expect(slideshow.styles.background.toJson(), bgExpected.toJson());
    expect(slideshow.styles.borderRadius, 0);
    expect(slideshow.styles.indicatorAlignment, AlignmentDirectional.bottomStart);
    expect(slideshow.styles.indicatorColor.toJson(), indicatorColorExpected.toJson());
    expect(slideshow.styles.indicatorActiveColor.toJson(), indicatorActiveColorExpected.toJson());
    expect(slideshow.styles.indicatorMargin.toJson(), indicatorMarginExpected.toJson());
    expect(slideshow.styles.indicatorSize, 6);
    expect(slideshow.styles.activeIndicatorSize, 10);
    expect(slideshow.styles.indicatorSpace, 4);

    expect(slideshow.toJson(), json);
  });
}
