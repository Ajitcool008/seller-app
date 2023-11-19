import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'option.g.dart';

@JsonSerializable()
class AbdOption {
  @JsonKey(fromJson: ConvertData.stringToIntCanBeNull, includeIfNull: false)
  final int? key;

  @JsonKey(includeIfNull: false)
  final String? text;

  const AbdOption({
    this.key,
    this.text,
  });

  /// Connect the generated [_$AbdOptionFromJson] function to the `fromJson`
  /// factory.
  factory AbdOption.fromJson(Map<String, dynamic> json) => _$AbdOptionFromJson(json);

  /// Connect the generated [_$AbdOptionToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdOptionToJson(this);
}
