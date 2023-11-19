import 'dart:ui';

import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rgba.g.dart';

@JsonSerializable()
class AbdRgba {
  @JsonKey(fromJson: validateGRB, defaultValue: 0)
  final int r;

  @JsonKey(fromJson: validateGRB, defaultValue: 0)
  final int g;

  @JsonKey(fromJson: validateGRB, defaultValue: 0)
  final int b;

  @JsonKey(fromJson: validateAlpha, defaultValue: 1)
  final double a;

  const AbdRgba({required this.r, required this.g, required this.b, required this.a});

  /// Connect the generated [_$AbdRgbaFromJson] function to the `fromJson`
  /// factory.
  factory AbdRgba.fromJson(Map<String, dynamic> json) => _$AbdRgbaFromJson(json);

  /// Connect the generated [_$AbdRgbaToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdRgbaToJson(this);

  /// Validate R G B value
  /// Red, Green, Blue is integer between 0 and 255
  ///
  static int validateGRB(dynamic value) {
    int c = ConvertData.stringToInt(value, 0);
    if (c < 0) {
      return 0;
    }

    if (c > 255) {
      return 255;
    }

    return c;
  }

  /// Validate Alpha value
  /// a number between 0.0 (fully transparent) and 1.0 (fully opaque)
  ///
  static double validateAlpha(dynamic value) {
    double c = ConvertData.stringToDouble(value, 1);
    if (c < 0) {
      return 0;
    }

    if (c > 1) {
      return 1;
    }

    return c;
  }

  Color get color => Color.fromRGBO(r, g, b, a);
}
