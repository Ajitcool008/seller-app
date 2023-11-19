import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Radius with all correct format', () {
    Map<String, dynamic> json = {
      "topLeft": "10",
      "topRight": "20",
      "bottomLeft": "30",
      "bottomRight": "40",
    };

    AbdRadius action = AbdRadius.fromJson(json);

    expect(action.topLeft, 10);
    expect(action.topRight, 20);
    expect(action.bottomLeft, 30);
    expect(action.bottomRight, 40);

    expect(
      action.value,
      const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(40),
      ),
    );
  });

  test('JsonSerializable type Radius with null value', () {
    Map<String, dynamic> json = {
      "topLeft": "",
      "topRight": "20",
      "bottomLeft": "-1",
      "bottomRight": "40",
    };

    AbdRadius action = AbdRadius.fromJson(json);

    expect(action.topLeft, 0);
    expect(action.topRight, 20);
    expect(action.bottomLeft, 0);
    expect(action.bottomRight, 40);

    expect(
      action.value,
      const BorderRadius.only(
        topLeft: Radius.circular(0),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(40),
      ),
    );
  });
}
