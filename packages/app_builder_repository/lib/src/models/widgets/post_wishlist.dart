import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_wishlist.g.dart';


@JsonSerializable(explicitToJson: true)
class APPostWishlist {
  final String id;


  final APPostWishlistStyle styles;


  const APPostWishlist({
    required this.id,
    required this.styles,
  });

  /// Connect the generated [_$APPostWishlistFromJson] function to the `fromJson`
  /// factory.
  factory APPostWishlist.fromJson(Map<String, dynamic> json) => _$APPostWishlistFromJson(json);

  /// Connect the generated [_$APPostWishlistToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostWishlistToJson(this);

}


/// Text style
@JsonSerializable(explicitToJson: true)
class APPostWishlistStyle {

  final AbdColor? textColor;

  final AbdColor? subtextColor;

  final AbdColor? labelColor;

  final AbdColor? labelTextColor;

  final double? labelRadius;

  final double? radiusImage;

  const APPostWishlistStyle({
    this.textColor,
    this.subtextColor,
    this.labelColor,
    this.labelTextColor,
    this.labelRadius,
    this.radiusImage,
});

  /// Connect the generated [_$APPostWishlistStyleFromJson] function to the `fromJson`
  /// factory.
  factory APPostWishlistStyle.fromJson(Map<String, dynamic> json) => _$APPostWishlistStyleFromJson(json);

  /// Connect the generated [_$APPostWishlistStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostWishlistStyleToJson(this);
}
