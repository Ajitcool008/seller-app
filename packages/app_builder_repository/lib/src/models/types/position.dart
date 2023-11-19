import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'position.g.dart';

@JsonSerializable()
class AbdPosition {
  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? width;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? height;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? left;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? right;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? bottom;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  final double? top;

  const AbdPosition({
    this.width,
    this.height,
    this.left,
    this.right,
    this.bottom,
    this.top,
  });

  /// Connect the generated [_$AbdPositionFromJson] function to the `fromJson`
  /// factory.
  factory AbdPosition.fromJson(Map<String, dynamic> json) => _$AbdPositionFromJson(json);

  /// Connect the generated [_$AbdPositionToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdPositionToJson(this);
}
