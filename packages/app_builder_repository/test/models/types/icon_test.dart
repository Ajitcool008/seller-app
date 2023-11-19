import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Icon with all correct format', () {
    Map<String, dynamic> json = {
      "name": "alert-circle",
      "type": "feather"
    };

    AbdIcon action = AbdIcon.fromJson(json);

    expect(action.name, 'alert-circle');
    expect(action.type, 'feather');


    Map<String, dynamic> json2 = {
      "name": "home",
      "type": "feather"
    };

    AbdIcon action2 = AbdIcon.fromJson(json2);

    expect(action2.name, 'home');
    expect(action2.type, 'feather');

    Map<String, dynamic> json3 = {
      "name": "home",
      "type": "awesome"
    };

    AbdIcon action3 = AbdIcon.fromJson(json3);

    expect(action3.name, 'home');
    expect(action3.type, 'awesome');

  });

  test('JsonSerializable type Icon with null value', () {
    Map<String, dynamic> json = {};

    AbdIcon action = AbdIcon.fromJson(json);

    expect(action.name, 'alert-circle');
    expect(action.type, 'feather');
  });
}
