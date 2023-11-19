import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWPostArchive widget test', () {
    Map<String, dynamic> json = {
      "id": "post-archive_1668401516216_4j2ede",
      "type": "post-archive",
      "fields": {"enableIconArchives": false, "enableCount": false},
      "styles": {
        "padding": {"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0},
        "margin": {"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0},
        "background": {
          "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
          "value": {"r": 0, "g": 0, "b": 0, "a": 0}
        }
      },
      "disable": false
    };

    AbdSpacing paddingExpected =
        AbdSpacing.fromJson({"paddingLeft": 0, "paddingRight": 0, "paddingBottom": 0, "paddingTop": 0});

    AbdSpacing marginExpected =
        AbdSpacing.fromJson({"marginLeft": 0, "marginRight": 0, "marginBottom": 0, "marginTop": 0});

    AbdColor bgExpected = AbdColor.fromJson({
      "dark": {"r": 0, "g": 0, "b": 0, "a": 0},
      "value": {"r": 0, "g": 0, "b": 0, "a": 0}
    });

    AWPostArchive postArchive = AWPostArchive.fromJson(json);

    //
    expect(postArchive.id, "post-archive_1668401516216_4j2ede");
    expect(postArchive.type, "post-archive");

    expect(postArchive.fields.enableIconArchives, false);
    expect(postArchive.fields.enableCount, false);

    expect(postArchive.styles.margin.toJson(), marginExpected.toJson());
    expect(postArchive.styles.padding.toJson(), paddingExpected.toJson());
    expect(postArchive.styles.background.toJson(), bgExpected.toJson());

    expect(postArchive.toJson(), json);
  });
}
