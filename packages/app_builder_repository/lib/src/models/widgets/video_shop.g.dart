// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWVideoShop _$AWVideoShopFromJson(Map<String, dynamic> json) => AWVideoShop(
      id: json['id'] as String,
      fields:
          AWVideoShopFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWVideoShopStyle.fromJson(json['styles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWVideoShopToJson(AWVideoShop instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
    };

AWVideoShopFields _$AWVideoShopFieldsFromJson(Map<String, dynamic> json) =>
    AWVideoShopFields(
      limit: json['limit'] as int?,
      excludeProduct: (json['excludeProduct'] as List<dynamic>?)
          ?.map((e) => AbdOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => AbdOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => AbdOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      search: json['search'],
      enableLike: json['enableLike'] as bool?,
      enableShare: json['enableShare'] as bool?,
      enableView: json['enableView'] as bool?,
      enableAddCart: json['enableAddCart'] as bool?,
    );

Map<String, dynamic> _$AWVideoShopFieldsToJson(AWVideoShopFields instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'excludeProduct':
          instance.excludeProduct?.map((e) => e.toJson()).toList(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'tags': instance.tags?.map((e) => e.toJson()).toList(),
      'search': instance.search,
      'enableLike': instance.enableLike,
      'enableShare': instance.enableShare,
      'enableAddCart': instance.enableAddCart,
      'enableView': instance.enableView,
    };

AWVideoShopStyle _$AWVideoShopStyleFromJson(Map<String, dynamic> json) =>
    AWVideoShopStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      actionsAlignment: json['actionsAlignment'] as String?,
    );

Map<String, dynamic> _$AWVideoShopStyleToJson(AWVideoShopStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'actionsAlignment': instance.actionsAlignment,
    };
