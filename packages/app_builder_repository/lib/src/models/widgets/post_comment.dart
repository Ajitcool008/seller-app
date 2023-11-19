import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_comment.g.dart';

@JsonSerializable(explicitToJson: true)
class AWPostComment {
  final String id;

  final String type;

  final AWPostCommentFields fields;

  final AWPostCommentStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWPostComment({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWPostCommentFromJson] function to the `fromJson`
  /// factory.
  factory AWPostComment.fromJson(Map<String, dynamic> json) => _$AWPostCommentFromJson(json);

  /// Connect the generated [_$AWPostCommentToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostCommentToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Post comment fields config
@JsonSerializable(explicitToJson: true)
class AWPostCommentFields {
  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableAvatar;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableDate;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableExcerpt;

  @JsonKey(fromJson: fromJsonLimit)
  final int limit;

  const AWPostCommentFields({
    required this.enableAvatar,
    required this.enableDate,
    required this.enableExcerpt,
    required this.limit,
  });

  /// Connect the generated [_$AWPostCommentFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWPostCommentFields.fromJson(Map<String, dynamic> json) => _$AWPostCommentFieldsFromJson(json);

  /// Connect the generated [_$AWPostCommentFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostCommentFieldsToJson(this);

  static bool fromJsonBoolTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static int fromJsonLimit(dynamic value) {
    return ConvertData.stringToInt(value, 5);
  }
}

/// Post comment style
@JsonSerializable(explicitToJson: true)
class AWPostCommentStyle {
  final AbdSpacing padding;
  final AbdSpacing margin;
  final AbdColor background;

  const AWPostCommentStyle({required this.padding, required this.margin, required this.background});

  /// Connect the generated [_$AWPostCommentStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWPostCommentStyle.fromJson(Map<String, dynamic> json) => _$AWPostCommentStyleFromJson(json);

  /// Connect the generated [_$AWPostCommentStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWPostCommentStyleToJson(this);
}
