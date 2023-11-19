import 'package:app_builder_repository/src/models/widgets/html.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Html with all correct format', () {

    Map<String, dynamic> expectedStyle = {
      "padding": {"paddingLeft": 12, "paddingRight": 12, "paddingBottom": 12, "paddingTop": 12},
      "margin": {"marginLeft": 1, "marginRight": 1, "marginBottom": 1, "marginTop": 1},
      "background": {
        "value": {"r": 188, "g": 60, "b": 60, "a": 1},
        "dark": {"r": 49, "g": 49, "b": 49, "a": 1}
      }
    };

    Map<String, dynamic> json = {
      "id": "html_1668239070228_43dfbe",
      "type": "html",
      "fields": {
        "html": {"text": "<p>Tieng Anh<p>", "vi": "<p>Tieng Viet<p>"}
      },
      "styles": expectedStyle,
      "disable": false
    };

    AWHtml html = AWHtml.fromJson(json);

    expect(html.type, 'html');
    expect(html.id, "html_1668239070228_43dfbe");

    expect(html.fields.html.getText(), "<p>Tieng Anh<p>");
    expect(html.fields.html.getText('vi'), "<p>Tieng Viet<p>");

    expect(html.styles.toJson(), expectedStyle);
  });
}
