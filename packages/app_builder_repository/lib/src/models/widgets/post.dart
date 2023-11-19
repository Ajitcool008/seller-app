import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post.g.dart';

@JsonSerializable(explicitToJson: true)
class AWPost {
  final String id;

  final String type;

  @JsonKey(defaultValue: AbdPostLayout.list)
  final AbdPostLayout layout;

  final AbdPostField fields;

  final AbdPostStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWPost({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWPostFromJson] function to the `fromJson`
  /// factory.
  factory AWPost.fromJson(Map<String, dynamic> json) => _$AWPostFromJson(json);

  /// Connect the generated [_$AWPostToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}
