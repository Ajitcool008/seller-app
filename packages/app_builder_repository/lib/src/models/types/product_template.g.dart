// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdProductTemplate _$AbdProductTemplateFromJson(Map<String, dynamic> json) =>
    AbdProductTemplate(
      template: $enumDecodeNullable(
              _$AbdProductTemplateLayoutEnumMap, json['template']) ??
          AbdProductTemplateLayout.contained,
      data:
          AbdProductTemplateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbdProductTemplateToJson(AbdProductTemplate instance) =>
    <String, dynamic>{
      'template': _$AbdProductTemplateLayoutEnumMap[instance.template]!,
      'data': instance.data.toJson(),
    };

const _$AbdProductTemplateLayoutEnumMap = {
  AbdProductTemplateLayout.card: 'card',
  AbdProductTemplateLayout.vertical: 'vertical',
  AbdProductTemplateLayout.overlay: 'overlay',
  AbdProductTemplateLayout.grid: 'grid',
  AbdProductTemplateLayout.contained: 'contained',
  AbdProductTemplateLayout.horizontal: 'horizontal',
  AbdProductTemplateLayout.emerge: 'emerge',
  AbdProductTemplateLayout.verticalCenter: 'vertical-center',
  AbdProductTemplateLayout.cardHorizontal: 'card-horizontal',
  AbdProductTemplateLayout.cardVertical: 'card-vertical',
  AbdProductTemplateLayout.curve: 'curve',
};

AbdProductTemplateData _$AbdProductTemplateDataFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const [
      'enableLabelNew',
      'enableLabelSale',
      'enableCategory',
      'enableRating',
      'enableQuantity',
      'enableAddCart',
      'thumbSizes',
      'imageSize',
      'enablePrice',
      'opacity',
      'opacityColor'
    ],
  );
  return AbdProductTemplateData(
    size: AbdProductTemplateDataSize.fromJson(
        json['size'] as Map<String, dynamic>),
    enableLabelNew: json['enableLabelNew'] as bool?,
    enableCategory: json['enableCategory'] as bool?,
    enableAddCart: json['enableAddCart'] as bool?,
    enableLabelSale: json['enableLabelSale'] as bool?,
    enablePrice: json['enablePrice'] as bool?,
    enableQuantity: json['enableQuantity'] as bool?,
    enableRating: json['enableRating'] as bool?,
    opacity: ConvertData.stringToDoubleCanBeNull(json['opacity']),
    thumbSizes: json['thumbSizes'] as String?,
    imageSize: json['imageSize'] as String?,
    opacityColor: json['opacityColor'] == null
        ? null
        : AbdColor.fromJson(json['opacityColor'] as Map<String, dynamic>),
    enableProgressSale: json['enableProgressSale'] as bool?,
  );
}

Map<String, dynamic> _$AbdProductTemplateDataToJson(
    AbdProductTemplateData instance) {
  final val = <String, dynamic>{
    'size': instance.size.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enableLabelNew', instance.enableLabelNew);
  writeNotNull('enableLabelSale', instance.enableLabelSale);
  writeNotNull('enableCategory', instance.enableCategory);
  writeNotNull('enableRating', instance.enableRating);
  writeNotNull('enableQuantity', instance.enableQuantity);
  writeNotNull('enableAddCart', instance.enableAddCart);
  writeNotNull('thumbSizes', instance.thumbSizes);
  writeNotNull('imageSize', instance.imageSize);
  writeNotNull('enablePrice', instance.enablePrice);
  writeNotNull('opacity', instance.opacity);
  writeNotNull('opacityColor', instance.opacityColor?.toJson());
  writeNotNull('enableProgressSale', instance.enableProgressSale);
  return val;
}

AbdProductTemplateDataSize _$AbdProductTemplateDataSizeFromJson(
        Map<String, dynamic> json) =>
    AbdProductTemplateDataSize(
      width: ConvertData.stringToDouble(json['width']),
      height: ConvertData.stringToDouble(json['height']),
    );

Map<String, dynamic> _$AbdProductTemplateDataSizeToJson(
        AbdProductTemplateDataSize instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };
