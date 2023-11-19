import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWHeading widget test', () {
    Map<String, dynamic> json = {
      "id": "heading_1668163290851_ctxykj",
      "type": "heading",
      "fields": {
        "title": {
          "text": "Latest",
          "style": {
            "fontSize": 22,
            "fontWeight": "500",
            "color": {
              "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
              "value": {"r": 0, "g": 0, "b": 0, "a": 1}
            },
            "fontFamily": "Poppins",
            "letterSpacing": 1.2,
            "height": 2.4,
            "textDecoration": "underline",
            "backgroundColor": {
              "value": {"r": 0, "g": 0, "b": 0, "a": 0},
              "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
            }
          }
        },
        "centerTitle": false,
        "enableIcon": true,
        "icon": {"name": "home", "type": "feather"},
        "actionTitle": {
          "text": "Show all",
          "style": {
            "fontSize": 16,
            "fontWeight": "400",
            "color": {
              "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
              "value": {"r": 0, "g": 0, "b": 0, "a": 1}
            },
            "fontFamily": "Poppins",
            "letterSpacing": 1.2,
            "height": 2.4,
            "textDecoration": "underline",
            "backgroundColor": {
              "value": {"r": 0, "g": 0, "b": 0, "a": 0},
              "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
            }
          }
        },
        "enableIconAction": true,
        "iconAction": {"name": "chevron-right", "type": "feather"},
        "action": {
          "type": "tab",
          "route": "/",
          "args": {"name": "Profile", "key": "screens_profile"},
        }
      },
      "layout": "default",
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        },
        "secondBackground": {
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "dividerColor": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "iconColor": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "dividerHeight": 0,
        "borderRadiusTopLeft": 0,
        "borderRadiusTopRight": 0,
        "borderRadiusBottomRight": 0,
        "borderRadiusBottomLeft": 0
      },
      "disable": false
    };

    AbdText titleExpected = AbdText.fromJson({
      "text": "Latest",
      "style": {
        "fontSize": 22,
        "fontWeight": "500",
        "color": {
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "fontFamily": "Poppins",
        "letterSpacing": 1.2,
        "height": 2.4,
        "textDecoration": "underline",
        "backgroundColor": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        }
      }
    });

    AbdText actionTitleExpected = AbdText.fromJson({
      "text": "Show all",
      "style": {
        "fontSize": 16,
        "fontWeight": "400",
        "color": {
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "fontFamily": "Poppins",
        "letterSpacing": 1.2,
        "height": 2.4,
        "textDecoration": "underline",
        "backgroundColor": {
          "value": {"r": 0, "g": 0, "b": 0, "a": 0},
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0}
        }
      }
    });

    AbdIcon iconExpected = AbdIcon.fromJson({"name": "home", "type": "feather"});

    AbdIcon iconActionExpected = AbdIcon.fromJson({"name": "chevron-right", "type": "feather"});

    AbdAction actionExpected = AbdAction.fromJson({
      "type": "tab",
      "route": "/",
      "args": {"name": "Profile", "key": "screens_profile"},
    });

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AbdColor secondExpected = AbdColor.fromJson({
      "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
      "value": {"r": 0, "g": 0, "b": 0, "a": 1}
    });

    AbdColor bgDividerButtonExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 1},
      "value": {"r": 0, "g": 0, "b": 0, "a": 1}
    });

    AbdColor colorIconExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 1},
      "value": {"r": 0, "g": 0, "b": 0, "a": 1}
    });

    AWHeading heading = AWHeading.fromJson(json);

    //
    expect(heading.id, "heading_1668163290851_ctxykj");
    expect(heading.type, "heading");
    expect(heading.layout, AWHeadingLayout.rowDefault);

    expect(heading.fields.title.toJson(), titleExpected.toJson());
    expect(heading.fields.centerTitle, false);
    expect(heading.fields.enableIcon, true);
    expect(heading.fields.icon.toJson(), iconExpected.toJson());
    expect(heading.fields.actionTitle.toJson(), actionTitleExpected.toJson());
    expect(heading.fields.enableIconAction, true);
    expect(heading.fields.iconAction.toJson(), iconActionExpected.toJson());
    expect(heading.fields.action.toJson(), actionExpected.toJson());

    //
    expect(heading.styles.margin.toJson(), marginExpected.toJson());
    expect(heading.styles.padding.toJson(), paddingExpected.toJson());
    expect(heading.styles.background.toJson(), bgExpected.toJson());
    expect(heading.styles.secondBackground.toJson(), secondExpected.toJson());
    expect(heading.styles.dividerColor.toJson(), bgDividerButtonExpected.toJson());
    expect(heading.styles.iconColor?.toJson(), colorIconExpected.toJson());
    expect(heading.styles.dividerHeight, 0);
    expect(heading.styles.borderRadiusTopLeft, 0);
    expect(heading.styles.borderRadiusTopRight, 0);
    expect(heading.styles.borderRadiusBottomLeft, 0);
    expect(heading.styles.borderRadiusBottomRight, 0);

    expect(heading.toJson(), json);
  });
}
