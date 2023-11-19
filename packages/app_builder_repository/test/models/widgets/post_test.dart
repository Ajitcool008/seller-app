import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:app_builder_repository/src/models/widgets/post.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWPost widget test', () {
    Map<String, dynamic> json = {
      "id": "post_1668416018430_1k4mnn",
      "type": "post",
      "fields": {
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
        "dividerWidth": 1,
        "dividerColor": {
          "dark": {"r": 84, "g": 84, "b": 88, "a": 0.5},
          "value": {"r": 222, "g": 226, "b": 230, "a": 1}
        },
        "height": 300,
        "maxHeightImage": 300,
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
        "textColor": {
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
          "value": {"r": 0, "g": 0, "b": 0, "a": 1}
        },
        "subTextColor": {
          "dark": {"r": 159, "g": 173, "b": 192, "a": 1},
          "value": {"r": 159, "g": 173, "b": 192, "a": 1}
        },
        "labelColor": {
          "dark": {"r": 33, "g": 186, "b": 69, "a": 1},
          "value": {"r": 33, "g": 186, "b": 69, "a": 1}
        },
        "labelTextColor": {
          "dark": {"r": 255, "g": 255, "b": 255, "a": 1},
          "value": {"r": 255, "g": 255, "b": 255, "a": 1}
        },
        "labelRadius": 19,
        "radius": {
          "topLeft": 10,
          "topRight": 10,
          "bottomLeft": 10,
          "bottomRight": 10,
        },
        "radiusImage": 8,
        "paddingContent": {
          "paddingContentLeft": 0,
          "paddingContentRight": 0,
          "paddingContentBottom": 0,
          "paddingContentTop": 8
        },
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

    AWPost post = AWPost.fromJson(json);

    expect(post.id, "post_1668416018430_1k4mnn");
    expect(post.type, "post");
    expect(post.layout, AbdPostLayout.list);

    expect(post.toJson(), json);
  });
}
