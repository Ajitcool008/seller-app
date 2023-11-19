import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'icon.g.dart';

@JsonSerializable()
class AbdIcon {

  @JsonKey(fromJson: ConvertData.toStringValue, defaultValue: 'alert-circle')
  final String name;

  @JsonKey(fromJson: ConvertData.toStringValue, defaultValue: 'feather')
  final String type;

  const AbdIcon({required this.name, required this.type});

  /// Connect the generated [_$AbdIconFromJson] function to the `fromJson`
  /// factory.
  factory AbdIcon.fromJson(Map<String, dynamic> json) => _$AbdIconFromJson(json);

  /// Connect the generated [_$AbdIconToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdIconToJson(this);
}