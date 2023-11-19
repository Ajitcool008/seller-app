import 'package:flutter/material.dart';

import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'spacing.g.dart';

List<String> positions = ['Left', 'Right', 'Bottom', 'Top'];

@JsonSerializable()
class AbdSpacing {
  final String key;

  @JsonKey(fromJson: validate, defaultValue: 0)
  final double left;

  @JsonKey(fromJson: validate, defaultValue: 0)
  final double right;

  @JsonKey(fromJson: validate, defaultValue: 0)
  final double bottom;

  @JsonKey(fromJson: validate, defaultValue: 0)
  final double top;

  const AbdSpacing({
    required this.key,
    required this.left,
    required this.right,
    required this.bottom,
    required this.top,
  });

  /// Connect the generated [_$AbdSpacingFromJson] function to the `fromJson`
  /// factory.
  factory AbdSpacing.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = {};

    // Get key
    newJson.putIfAbsent('key', () => getKey(json));

    // Get value
    for (String key in json.keys) {
      for (String position in positions) {
        if (key.contains(position)) {
          newJson.putIfAbsent(position.toLowerCase(), () => json[key]);
        }
      }
    }
    return _$AbdSpacingFromJson(newJson);
  }

  /// Connect the generated [_$AbdSpacingToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$AbdSpacingToJson(this);
    Map<String, dynamic> newJson = {};
    for (String p in json.keys) {
      if (p != 'key') {
        newJson.putIfAbsent('$key${p.substring(0, 1).toUpperCase() + p.substring(1)}', () => json[p]);
      }
    }
    return newJson;
  }

  /// The margin can't be negative number
  static double validate(value) {
    double v = ConvertData.stringToDouble(value, 0);
    if (v < 0) {
      return 0;
    }
    return v;
  }

  /// Get key from json
  static getKey(Map<String, dynamic> spacing) {
    String value = '';
    List<String> keys = spacing.keys.toList();
    if (keys.isEmpty) {
      return value;
    }
    String key = keys[0];

    for (String position in positions) {
      if (key.contains(position)) {
        value = key.replaceAll(position, '');
      }
    }
    return value;
  }

  /// Get EdgeInsetsDirectional from variable
  EdgeInsetsDirectional get value => EdgeInsetsDirectional.only(
        start: left,
        end: right,
        top: top,
        bottom: bottom,
      );
}
