import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Image with all correct format', () {
    Map<String, dynamic> json = {
      "src": "https://grocery2.rnlab.io/wp-json/app-builder/v1/settings",
    };

    AbdImage obj = AbdImage.fromJson(json);

    expect(obj.src, "https://grocery2.rnlab.io/wp-json/app-builder/v1/settings");
  });

  test('JsonSerializable type Image with translate', () {
    Map<String, dynamic> json = {
      "src": "https://grocery2.rnlab.io/wp-json/app-builder/v1/settings",
      "en": "https://grocery2.rnlab.io/wp-json/app-builder/v1/settings/en.png"
    };

    AbdImage obj = AbdImage.fromJson(json);

    expect(obj.src, "https://grocery2.rnlab.io/wp-json/app-builder/v1/settings");
    expect(obj.getImage('en'), "https://grocery2.rnlab.io/wp-json/app-builder/v1/settings/en.png");
  });

  test('JsonSerializable type Image with to Json', () {
    Map<String, dynamic> json = {
      "src": "https://grocery2.rnlab.io/wp-json/app-builder/v1/settings",
      "en": "https://grocery2.rnlab.io/wp-json/app-builder/v1/settings/en.png"
    };

    AbdImage obj = AbdImage.fromJson(json);

    expect(obj.toJson(), json);

    Map<String, dynamic> json2 = {
      "src": "https://grocery2.rnlab.io/wp-json/app-builder/v1/settings",
    };

    AbdImage obj2 = AbdImage.fromJson(json2);

    expect(obj2.toJson(), json2);
  });
}
