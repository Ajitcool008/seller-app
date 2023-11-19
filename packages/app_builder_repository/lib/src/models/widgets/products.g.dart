// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ASProducts _$ASProductsFromJson(Map<String, dynamic> json) => ASProducts(
      fields: ASProductsFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: ASProductsStyles.fromJson(json['styles'] as Map<String, dynamic>),
    );

ASProductsFields _$ASProductsFieldsFromJson(Map<String, dynamic> json) =>
    ASProductsFields(
      refineItemStyle: json['refineItemStyle'] as String?,
      refinePosition: json['refinePosition'] as String?,
      itemPerPage: json['itemPerPage'] as int?,
      thumbSizes: json['thumbSizes'] as String?,
    );

Map<String, dynamic> _$ASProductsFieldsToJson(ASProductsFields instance) =>
    <String, dynamic>{
      'refinePosition': instance.refinePosition,
      'refineItemStyle': instance.refineItemStyle,
      'itemPerPage': instance.itemPerPage,
      'thumbSizes': instance.thumbSizes,
    };

ASProductsStyles _$ASProductsStylesFromJson(Map<String, dynamic> json) =>
    ASProductsStyles(
      padding: json['padding'] == null
          ? null
          : AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      marrgin: json['marrgin'] == null
          ? null
          : AbdSpacing.fromJson(json['marrgin'] as Map<String, dynamic>),
      radiusImage: json['radiusImage'] == null
          ? 8
          : ConvertData.stringToDouble(json['radiusImage']),
      radiusLabelNew: json['radiusLabelNew'] == null
          ? 8
          : ConvertData.stringToDouble(json['radiusLabelNew']),
      radiusLabelSale: json['radiusLabelSale'] == null
          ? 8
          : ConvertData.stringToDouble(json['radiusLabelSale']),
      radiusCart: json['radiusCart'] == null
          ? 8
          : ConvertData.stringToDouble(json['radiusCart']),
      textColor: json['textColor'] == null
          ? null
          : AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
      subTextColor: json['subTextColor'] == null
          ? null
          : AbdColor.fromJson(json['subTextColor'] as Map<String, dynamic>),
      priceColor: json['priceColor'] == null
          ? null
          : AbdColor.fromJson(json['priceColor'] as Map<String, dynamic>),
      salePriceColor: json['salePriceColor'] == null
          ? null
          : AbdColor.fromJson(json['salePriceColor'] as Map<String, dynamic>),
      regularPriceColor: json['regularPriceColor'] == null
          ? null
          : AbdColor.fromJson(
              json['regularPriceColor'] as Map<String, dynamic>),
      wishlistColor: json['wishlistColor'] == null
          ? null
          : AbdColor.fromJson(json['wishlistColor'] as Map<String, dynamic>),
      labelNewColor: json['labelNewColor'] == null
          ? null
          : AbdColor.fromJson(json['labelNewColor'] as Map<String, dynamic>),
      labelNewTextColor: json['labelNewTextColor'] == null
          ? null
          : AbdColor.fromJson(
              json['labelNewTextColor'] as Map<String, dynamic>),
      labelSaleColor: json['labelSaleColor'] == null
          ? null
          : AbdColor.fromJson(json['labelSaleColor'] as Map<String, dynamic>),
      labelSaleTextColor: json['labelSaleTextColor'] == null
          ? null
          : AbdColor.fromJson(
              json['labelSaleTextColor'] as Map<String, dynamic>),
      sizeImage: json['sizeImage'] as String?,
      typeCart: json['typeCart'] as String?,
      iconCart: json['iconCart'] == null
          ? null
          : AbdIcon.fromJson(json['iconCart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ASProductsStylesToJson(ASProductsStyles instance) =>
    <String, dynamic>{
      'padding': instance.padding?.toJson(),
      'marrgin': instance.marrgin?.toJson(),
      'textColor': instance.textColor?.toJson(),
      'subTextColor': instance.subTextColor?.toJson(),
      'priceColor': instance.priceColor?.toJson(),
      'salePriceColor': instance.salePriceColor?.toJson(),
      'regularPriceColor': instance.regularPriceColor?.toJson(),
      'wishlistColor': instance.wishlistColor?.toJson(),
      'labelNewColor': instance.labelNewColor?.toJson(),
      'labelNewTextColor': instance.labelNewTextColor?.toJson(),
      'labelSaleColor': instance.labelSaleColor?.toJson(),
      'labelSaleTextColor': instance.labelSaleTextColor?.toJson(),
      'sizeImage': instance.sizeImage,
      'typeCart': instance.typeCart,
      'iconCart': instance.iconCart?.toJson(),
      'radiusImage': instance.radiusImage,
      'radiusLabelNew': instance.radiusLabelNew,
      'radiusLabelSale': instance.radiusLabelSale,
      'radiusCart': instance.radiusCart,
    };
