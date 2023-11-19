import 'dart:ui';

import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Convert data - To TextAlign null value', () {
    expect(ConvertData.toTextAlign(), TextAlign.start);
    expect(ConvertData.toTextAlign(''), TextAlign.start);
    expect(ConvertData.toTextAlign('acb'), TextAlign.start);
  });

  test('Convert data - To TextAlign left value', () {
    expect(ConvertData.toTextAlign('left'), TextAlign.left);
  });

  test('Convert data - To TextAlign center value', () {
    expect(ConvertData.toTextAlign('center'), TextAlign.center);
  });

  test('Convert data - To TextAlign right value', () {
    expect(ConvertData.toTextAlign('right'), TextAlign.right);
  });

  test('Convert data - To TextAlign justify value', () {
    expect(ConvertData.toTextAlign('justify'), TextAlign.justify);
  });

  test('Convert data - To TextAlign end value', () {
    expect(ConvertData.toTextAlign('end'), TextAlign.end);
  });
}
