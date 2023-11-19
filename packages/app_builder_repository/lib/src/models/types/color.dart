import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';
import 'rgba.dart';

part 'color.g.dart';

@JsonSerializable(explicitToJson: true)
class AbdColor {
  final AbdRgba value;

  final AbdRgba dark;

  const AbdColor({required this.value, required this.dark});

  /// Connect the generated [_$AbdColorFromJson] function to the `fromJson`
  /// factory.
  factory AbdColor.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = Map<String, dynamic>.of(json);
    // Put default value if not exist
    newJson.putIfAbsent('value', () => {'r': 0, 'g': 0, 'b': 0, 'a': 1});
    newJson.putIfAbsent('dark', () => {'r': 255, 'g': 255, 'b': 255, 'a': 1});
    return _$AbdColorFromJson(newJson);
  }

  /// Connect the generated [_$AbdColorToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdColorToJson(this);

  /// Get Color by code [value, dark]
  Color getColor([String code = 'value']) => code == 'dark' ? dark.color : value.color;
}
