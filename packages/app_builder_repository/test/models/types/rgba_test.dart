import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type RGBA with all correct format', () {
    Map<String, dynamic> json = {
      "r": 255,
      "g": 255,
      "b": 255,
      "a": 1
    };

    AbdRgba action = AbdRgba.fromJson(json);

    expect(action.r, 255);
    expect(action.g, 255);
    expect(action.b, 255);
    expect(action.a, 1);
  });

  test('JsonSerializable type RGBA with String data', () {
    Map<String, dynamic> json = {
      "r": 3.4,
      "g": '33',
      "b": '35.3',
      "a": "1"
    };

    AbdRgba action = AbdRgba.fromJson(json);

    expect(action.r, 3);
    expect(action.g, 33);
    expect(action.b, 35);
    expect(action.a, 1);
  });

  test('JsonSerializable type RGBA with empty json', () {
    Map<String, dynamic> json = {
      "r": '',
    };

    AbdRgba action = AbdRgba.fromJson(json);

    expect(action.r, 0);
    expect(action.g, 0);
    expect(action.b, 0);
    expect(action.a, 1);
  });
}
