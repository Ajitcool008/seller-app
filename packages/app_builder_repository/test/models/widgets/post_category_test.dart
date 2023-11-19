import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWPostCategory widget test', () {
    Map<String, dynamic> json = {
      "id": "post-category_1668407902069_7k1jsc",
      "type": "post-category",
      "fields": {
        "taxonomy": "categories",
        "limit": 4,
        "template": {
          "template": "contained",
          "data": {"enableCount": true, "enableRoundImage": true}
        }
      },
      "layout": "list",
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "pad": 16,
        "col": 2,
        "ratio": 1,
        "height": 200,
        "heightImage": 200,
        "indicatorColor": {
          "value": {"r": 222, "g": 226, "b": 230, "a": 1},
          "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
        },
        "indicatorActiveColor": {
          "value": {"r": 159, "g": 173, "b": 192, "a": 1},
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "backgroundItem": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "textColor": {
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "labelColor": {
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "labelTextColor": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 1},
          "value": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "labelRadius": 13,
        "radius": 8,
        "radiusImage": 8
      },
      "disable": false
    };

    AWPostCategoryTemplate templateExpected = AWPostCategoryTemplate.fromJson({
      "template": "contained",
      "data": {"enableCount": true, "enableRoundImage": true}
    });

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor indicatorColorExpected = AbdColor.fromJson({
      "value": {"r": 222, "g": 226, "b": 230, "a": 1},
      "dark": {"r": 142, "g": 142, "b": 147, "a": 1}
    });

    AbdColor indicatorActiveColorExpected = AbdColor.fromJson({
      "value": {"r": 159, "g": 173, "b": 192, "a": 1},
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1}
    });

    AbdColor bgItemExpected = AbdColor.fromJson({
      "value": {"r": 0, "g": 0, "b": 0, "a": 0},
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor textColorExpected = AbdColor.fromJson({
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
      "value": {"r": 0, "g": 0, "b": 0, "a": 1}
    });

    AbdColor labelColorExpected = AbdColor.fromJson({
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
      "value": {"r": 0, "g": 0, "b": 0, "a": 1}
    });

    AbdColor labelTextColorExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 1},
      "value": {"r": 255, "g": 255, "b": 255, "a": 1}
    });

    AWPostCategory postCategory = AWPostCategory.fromJson(json);

    //
    expect(postCategory.id, "post-category_1668407902069_7k1jsc");
    expect(postCategory.type, "post-category");
    expect(postCategory.layout, AWPostCategoryLayout.list);

    expect(postCategory.fields.taxonomy, 'categories');
    expect(postCategory.fields.limit, 4);

    expect(postCategory.fields.template.template, AWPostCategoryTemplateType.contained);
    expect(postCategory.fields.template.data.toJson(), templateExpected.data.toJson());
    expect(postCategory.fields.template.toJson(), templateExpected.toJson());

    expect(postCategory.styles.margin.toJson(), marginExpected.toJson());
    expect(postCategory.styles.padding.toJson(), paddingExpected.toJson());
    expect(postCategory.styles.background.toJson(), bgExpected.toJson());
    expect(postCategory.styles.pad, 16);
    expect(postCategory.styles.col, 2);
    expect(postCategory.styles.ratio, 1);
    expect(postCategory.styles.height, 200);
    expect(postCategory.styles.heightImage, 200);
    expect(postCategory.styles.indicatorColor.toJson(), indicatorColorExpected.toJson());
    expect(postCategory.styles.indicatorActiveColor.toJson(), indicatorActiveColorExpected.toJson());
    expect(postCategory.styles.backgroundItem.toJson(), bgItemExpected.toJson());
    expect(postCategory.styles.textColor.toJson(), textColorExpected.toJson());
    expect(postCategory.styles.labelColor.toJson(), labelColorExpected.toJson());
    expect(postCategory.styles.labelTextColor.toJson(), labelTextColorExpected.toJson());
    expect(postCategory.styles.labelRadius, 13);
    expect(postCategory.styles.radius, 8);
    expect(postCategory.styles.radiusImage, 8);

    expect(postCategory.toJson(), json);
  });
}
