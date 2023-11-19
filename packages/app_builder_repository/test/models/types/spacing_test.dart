import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Spacing - Get key', () {
    Map<String, dynamic> json = {
      "marginLeft": 10,
      "marginRight": 11,
      "marginBottom": 12,
      "marginTop": 13,
    };

    AbdSpacing spacing = AbdSpacing.fromJson(json);

    expect(AbdSpacing.getKey(json), 'margin');

    expect(spacing.key, 'margin');
    expect(spacing.top, 13);
    expect(spacing.bottom, 12);
    expect(spacing.left, 10);
    expect(spacing.right, 11);

    expect(spacing.value, const EdgeInsetsDirectional.only(
      start: 10,
      end: 11,
      top: 13,
      bottom: 12,
    ));

    expect(spacing.toJson(), json);
  });

  test('JsonSerializable type Spacing - Get key', () {
    Map<String, dynamic> json = {
      "paddingLeft": 10,
      "paddingRight": 11,
      "paddingBottom": 12,
      "paddingTop": 13,
    };

    AbdSpacing spacing = AbdSpacing.fromJson(json);

    expect(AbdSpacing.getKey(json), 'padding');

    expect(spacing.key, 'padding');
    expect(spacing.top, 13);
    expect(spacing.bottom, 12);
    expect(spacing.left, 10);
    expect(spacing.right, 11);

    expect(spacing.value, const EdgeInsetsDirectional.only(
      start: 10,
      end: 11,
      top: 13,
      bottom: 12,
    ));

    expect(spacing.toJson(), json);
  });
}
