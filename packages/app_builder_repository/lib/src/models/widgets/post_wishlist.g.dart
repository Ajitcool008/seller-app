// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_wishlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APPostWishlist _$APPostWishlistFromJson(Map<String, dynamic> json) =>
    APPostWishlist(
      id: json['id'] as String,
      styles:
          APPostWishlistStyle.fromJson(json['styles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APPostWishlistToJson(APPostWishlist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'styles': instance.styles.toJson(),
    };

APPostWishlistStyle _$APPostWishlistStyleFromJson(Map<String, dynamic> json) =>
    APPostWishlistStyle(
      textColor: json['textColor'] == null
          ? null
          : AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
      subtextColor: json['subtextColor'] == null
          ? null
          : AbdColor.fromJson(json['subtextColor'] as Map<String, dynamic>),
      labelColor: json['labelColor'] == null
          ? null
          : AbdColor.fromJson(json['labelColor'] as Map<String, dynamic>),
      labelTextColor: json['labelTextColor'] == null
          ? null
          : AbdColor.fromJson(json['labelTextColor'] as Map<String, dynamic>),
      labelRadius: (json['labelRadius'] as num?)?.toDouble(),
      radiusImage: (json['radiusImage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$APPostWishlistStyleToJson(
        APPostWishlistStyle instance) =>
    <String, dynamic>{
      'textColor': instance.textColor?.toJson(),
      'subtextColor': instance.subtextColor?.toJson(),
      'labelColor': instance.labelColor?.toJson(),
      'labelTextColor': instance.labelTextColor?.toJson(),
      'labelRadius': instance.labelRadius,
      'radiusImage': instance.radiusImage,
    };
