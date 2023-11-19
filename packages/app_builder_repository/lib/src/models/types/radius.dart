import 'package:flutter/material.dart';

import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'radius.g.dart';

@JsonSerializable()
class AbdRadius {
  @JsonKey(fromJson: validate, defaultValue: 0)
  final double topLeft;

  @JsonKey(fromJson: validate, defaultValue: 0)
  final double topRight;

  @JsonKey(fromJson: validate, defaultValue: 0)
  final double bottomLeft;

  @JsonKey(fromJson: validate, defaultValue: 0)
  final double bottomRight;

  const AbdRadius({
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
  });

  /// Connect the generated [_$AbdRadiusFromJson] function to the `fromJson`
  /// factory.
  factory AbdRadius.fromJson(Map<String, dynamic> json) => _$AbdRadiusFromJson(json);

  /// Connect the generated [_$AbdRadiusToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdRadiusToJson(this);

  /// The margin can't be negative number
  static double validate(value) {
    double v = ConvertData.stringToDouble(value, 0);
    if (v < 0) {
      return 0;
    }
    return v;
  }

  /// Get BorderRadius from variable
  BorderRadius get value => BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight),
      );
}
