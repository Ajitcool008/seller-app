import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AbdProductTemplate widget test', () {
    Map<String, dynamic> json = {
      "template": "contained",
      "data": {
        "size": {
          "width": 240.0,
          "height": 240.0
        },
        "imageSize": "cover",
        "enableLabelNew": true,
        "enableLabelSale": true,
        "enableRating": true,
        "enableQuantity": false
      }
    };

    AbdProductTemplate template = AbdProductTemplate.fromJson(json);

    expect(template.toJson(), json);
  });
}
