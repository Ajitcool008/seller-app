import 'dart:ui';

import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Color with all correct format', () {
    Map<String, dynamic> json = {
      "value": {
        'r': 255,
        'g': 255,
        'b': 255,
        'a': 1,
      },
      "dark": {
        'r': 0,
        'g': 0,
        'b': 0,
        'a': 1,
      },
    };

    AbdColor action = AbdColor.fromJson(json);

    expect(action.value.r, 255);
    expect(action.value.g, 255);
    expect(action.value.b, 255);
    expect(action.value.a, 1);

    expect(action.dark.r, 0);
    expect(action.dark.g, 0);
    expect(action.dark.b, 0);
    expect(action.dark.a, 1);
  });

  test('JsonSerializable type Color from null value', () {
    Map<String, dynamic> json = {};

    AbdColor action = AbdColor.fromJson(json);

    expect(action.value.r, 0);
    expect(action.value.g, 0);
    expect(action.value.b, 0);
    expect(action.value.a, 1);

    expect(action.dark.r, 255);
    expect(action.dark.g, 255);
    expect(action.dark.b, 255);
    expect(action.dark.a, 1);
  });

  test('JsonSerializable type Color get color by code', () {
    Map<String, dynamic> json = {
      "value": {
        'r': 255,
        'g': 255,
        'b': 255,
        'a': 1,
      },
      "dark": {
        'r': 0,
        'g': 0,
        'b': 0,
        'a': 1,
      },
    };

    AbdColor action = AbdColor.fromJson(json);

    expect(action.getColor(), const Color.fromRGBO(255, 255, 255, 1));
    expect(action.getColor('dark'), const Color.fromRGBO(0, 0, 0, 1));
  });
}
