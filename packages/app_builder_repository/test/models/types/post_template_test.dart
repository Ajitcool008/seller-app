import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AbdPostField widget test', () {
    Map<String, dynamic> json = {
      "postType": "posts",
      "search": {"text": ""},
      "tags": [],
      "categories": [],
      "post": [],
      "page": 1,
      "perPage": 10,
      "enableLoadMore": false,
      "template": {
        "template": "default",
        "data": {
          "size": {"width": 335, "height": 260},
          "imageSize": "cover",
          "enableCategory": true,
          "enableDate": true,
          "enableAuthor": true,
          "enableComments": true,
          "nameFieldTopLeftImage": "",
          "nameFieldTopRightImage": "",
          "nameFieldAboveName": "",
          "nameFieldBottomLeft": "",
          "nameFieldBottomRight": ""
        }
      }
    };

    AbdPostField field = AbdPostField.fromJson(json);

    expect(field.toJson(), json);
  });
}
