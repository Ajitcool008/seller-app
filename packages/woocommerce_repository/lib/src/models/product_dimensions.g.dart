// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dimensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDimensions _$ProductDimensionsFromJson(Map<String, dynamic> json) => ProductDimensions(
      length: ConvertData.stringToDoubleCanBeNull(json['length']),
      width: ConvertData.stringToDoubleCanBeNull(json['width']),
      height: ConvertData.stringToDoubleCanBeNull(json['height']),
    );

Map<String, dynamic> _$ProductDimensionsToJson(ProductDimensions instance) => <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
    };
