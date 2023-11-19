import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Option - Get key', () {
    Map<String, dynamic> json = {"key": 1510299, "text": "Product video 16"};

    AbdOption option = AbdOption.fromJson(json);

    expect(option.key, 1510299);
    expect(option.text, 'Product video 16');

    expect(option.toJson(), json);
  });
}
