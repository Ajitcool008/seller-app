import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_list_page.g.dart';


@JsonSerializable(explicitToJson: true)
class APPostList {

  final String id;

  final APPostListStyle styles;

  const APPostList({
    required this.id,
    required this.styles,
  });

  /// Connect the generated [_$APPostListFromJson] function to the `fromJson`
  /// factory.
  factory APPostList.fromJson(Map<String, dynamic> json) => _$APPostListFromJson(json);

  /// Connect the generated [_$APPostListToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostListToJson(this);

}


/// Text style
@JsonSerializable(explicitToJson: true)
class APPostListStyle {

  final AbdColor? textColor;

  final AbdColor? subTextColor;

  final AbdColor? labelColor;

  final AbdColor? labelTextColor;

  final double? labelRadius;

  final double? radiusImage;

  const APPostListStyle({
    this.textColor,
    this.subTextColor,
    this.labelColor,
    this.labelTextColor,
    this.labelRadius,
    this.radiusImage,
});

  /// Connect the generated [_$APPostListStyleFromJson] function to the `fromJson`
  /// factory.
  factory APPostListStyle.fromJson(Map<String, dynamic> json) => _$APPostListStyleFromJson(json);

  /// Connect the generated [_$APPostListStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostListStyleToJson(this);
}

enum APPostListAppBarLayout{
  @JsonValue('fixed')
  fixed,
  @JsonValue('floating')
  floating,
  @JsonValue('scroll')
  scroll,
}

@JsonSerializable(explicitToJson: true)
class APPostListConfig {

  final bool? enableAppbarSearch;

  final bool? enableCenterTitle;

  @JsonKey(defaultValue: APPostListAppBarLayout.floating)
  final APPostListAppBarLayout appBarType;


  const APPostListConfig({
    this.enableAppbarSearch,
    this.enableCenterTitle,
    required this.appBarType,
  });

  /// Connect the generated [_$APPostListConfigFromJson] function to the `fromJson`
  /// factory.
  factory APPostListConfig.fromJson(Map<String, dynamic> json) => _$APPostListConfigFromJson(json);

  /// Connect the generated [_$APPostListConfigToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostListConfigToJson(this);
}
