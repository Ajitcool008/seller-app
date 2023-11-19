import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWTestimonial widget test', () {
    Map<String, dynamic> json = {
      "id": "testimonial_1668250223244_p24ecr",
      "type": "testimonial",
      "fields": {
        "backgroundItem": {
          "value": {"r": 244, "g": 244, "b": 244, "a": 1},
          "dark": {"r": 49, "g": 49, "b": 49, "a": 1}
        },
        "radius": 8,
        "pad": 16,
        "items": [
          {
            "template": "default",
            "data": {
              "image": {"src": ""},
              "title": {
                "text": "Title",
                "style": {
                  "fontSize": 14,
                  "fontWeight": "500",
                  "color": {
                    "value": {"r": 0, "g": 0, "b": 0, "a": 1},
                    "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
                  },
                  "fontFamily": "Poppins",
                  "letterSpacing": 1.2,
                  "height": 2.4,
                  "textDecoration": "underline",
                  "backgroundColor": {
                    "value": {"r": 219, "g": 64, "b": 64, "a": 0.61},
                    "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
                  }
                }
              },
              "description": {
                "text": "Description",
                "style": {
                  "fontSize": 12,
                  "fontWeight": "400",
                  "color": {
                    "value": {"r": 100, "g": 124, "b": 156, "a": 1},
                    "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
                  },
                  "fontFamily": "Poppins",
                  "letterSpacing": 1.2,
                  "height": 2.4,
                  "textDecoration": "underline",
                  "backgroundColor": {
                    "value": {"r": 219, "g": 64, "b": 64, "a": 0.61},
                    "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
                  }
                }
              }
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
        }
      },
      "disable": false
    };

    AbdColor backgroundItemExpected = AbdColor.fromJson({
      "value": {"r": 244, "g": 244, "b": 244, "a": 1},
      "dark": {"r": 49, "g": 49, "b": 49, "a": 1}
    });

    List<AWTestimonialTemplate> itemsExpected = [
      {
        "template": "default",
        "data": {
          "image": {"src": ""},
          "title": {
            "text": "Title",
            "style": {
              "fontSize": 14,
              "fontWeight": "500",
              "color": {
                "value": {"r": 0, "g": 0, "b": 0, "a": 1},
                "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
              },
              "fontFamily": "Poppins",
              "letterSpacing": 1.2,
              "height": 2.4,
              "textDecoration": "underline",
              "backgroundColor": {
                "value": {"r": 219, "g": 64, "b": 64, "a": 0.61},
                "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
              }
            }
          },
          "description": {
            "text": "Description",
            "style": {
              "fontSize": 12,
              "fontWeight": "400",
              "color": {
                "value": {"r": 100, "g": 124, "b": 156, "a": 1},
                "dark": {"r": 204, "g": 204, "b": 204, "a": 1}
              },
              "fontFamily": "Poppins",
              "letterSpacing": 1.2,
              "height": 2.4,
              "textDecoration": "underline",
              "backgroundColor": {
                "value": {"r": 219, "g": 64, "b": 64, "a": 0.61},
                "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
              }
            }
          }
        }
      }
    ].map((e) => AWTestimonialTemplate.fromJson(e)).toList();

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AWTestimonial testimonial = AWTestimonial.fromJson(json);

    //
    expect(testimonial.id, "testimonial_1668250223244_p24ecr");
    expect(testimonial.type, "testimonial");

    expect(testimonial.fields.backgroundItem.toJson(), backgroundItemExpected.toJson());
    expect(testimonial.fields.radius, 8);
    expect(testimonial.fields.pad, 16);
    for (int i = 0; i < testimonial.fields.items.length; i++) {
      expect(testimonial.fields.items[i].toJson(), itemsExpected[i].toJson());
    }

    expect(testimonial.styles.margin.toJson(), marginExpected.toJson());
    expect(testimonial.styles.padding.toJson(), paddingExpected.toJson());
    expect(testimonial.styles.background.toJson(), bgExpected.toJson());

    expect(testimonial.toJson(), json);
  });
}
