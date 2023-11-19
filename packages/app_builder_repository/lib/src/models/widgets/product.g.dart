// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWProduct _$AWProductFromJson(Map<String, dynamic> json) {
  $checkKeys(json);
  return AWProduct(
    id: json['id'] as String,
    type: json['type'] as String,
    fields: AWProductFields.fromJson(json['fields'] as Map<String, dynamic>),
    styles: AWProductStyle.fromJson(json['styles'] as Map<String, dynamic>),
    layout: $enumDecodeNullable(_$AWProductLayoutEnumMap, json['layout']),
    disable: json['disable'] == null ? false : AWProduct.fromJsonDisable(json['disable']),
  );
}

Map<String, dynamic> _$AWProductToJson(AWProduct instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
    'fields': instance.fields.toJson(),
    'styles': instance.styles.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('layout', _$AWProductLayoutEnumMap[instance.layout]);
  val['disable'] = instance.disable;
  return val;
}

const _$AWProductLayoutEnumMap = {
  AWProductLayout.list: 'list',
  AWProductLayout.carousel: 'carousel',
  AWProductLayout.masonry: 'masonry',
  AWProductLayout.bigFirst: 'big-first',
  AWProductLayout.slideshow: 'slideshow',
  AWProductLayout.horizontal: 'horizontal',
  AWProductLayout.vertical: 'vertical',
  AWProductLayout.grid: 'grid',
};

AWProductFields _$AWProductFieldsFromJson(Map<String, dynamic> json) {
  $checkKeys(json);
  return AWProductFields(
    limit: ConvertData.stringToIntCanBeNull(json['limit']),
    categories: json['categories'] as List<dynamic>?,
    excludeProduct: json['excludeProduct'] as List<dynamic>?,
    product: json['product'] as List<dynamic>?,
    template: json['template'] == null ? null : AbdProductTemplate.fromJson(json['template'] as Map<String, dynamic>),
    enableLoadMore: json['enableLoadMore'] as bool?,
    height: ConvertData.stringToDoubleCanBeNull(json['height']),
    tags: json['tags'] as List<dynamic>?,
    search: json['search'] == null ? null : AbdText.fromJson(json['search'] as Map<String, dynamic>),
    includeProduct: json['includeProduct'] as List<dynamic>?,
    layoutItem: $enumDecodeNullable(_$AWProductLayoutEnumMap, json['layoutItem']),
    pad: ConvertData.stringToDoubleCanBeNull(json['pad']),
    items:
        (json['items'] as List<dynamic>?)?.map((e) => AWProductFieldsItem.fromJson(e as Map<String, dynamic>)).toList(),
    name: json['name'] == null ? null : AbdText.fromJson(json['name'] as Map<String, dynamic>),
    enableIcon: json['enableIcon'] as bool?,
    enableIconLeft: json['enableIconLeft'] as bool?,
    enableScan: json['enableScan'] as bool?,
    enableScanLeft: json['enableScanLeft'] as bool?,
    placeholder: json['placeholder'] == null ? null : AbdText.fromJson(json['placeholder'] as Map<String, dynamic>),
    icon: json['icon'] as Map<String, dynamic>?,
    enableAddCart: json['enableAddCart'] as bool?,
    enableView: json['enableView'] as bool?,
    enableLike: json['enableLike'] as bool?,
    enableShare: json['enableShare'] as bool?,
    enableWishlist: json['enableWishlist'] as bool?,
    enableComment: json['enableComment'] as bool?,
    enableRating: json['enableRating'] as bool?,
    enableSale: json['enableSale'] as bool?,
    enableNew: json['enableNew'] as bool?,
    enableQuantity: json['enableQuantity'] as bool?,
  );
}

Map<String, dynamic> _$AWProductFieldsToJson(AWProductFields instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  writeNotNull('categories', instance.categories);
  writeNotNull('excludeProduct', instance.excludeProduct);
  writeNotNull('product', instance.product);
  writeNotNull('template', instance.template?.toJson());
  writeNotNull('enableLoadMore', instance.enableLoadMore);
  writeNotNull('search', instance.search?.toJson());
  writeNotNull('tags', instance.tags);
  writeNotNull('includeProduct', instance.includeProduct);
  writeNotNull('layoutItem', _$AWProductLayoutEnumMap[instance.layoutItem]);
  writeNotNull('height', instance.height);
  writeNotNull('pad', instance.pad);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('enableIcon', instance.enableIcon);
  writeNotNull('enableIconLeft', instance.enableIconLeft);
  writeNotNull('enableScan', instance.enableScan);
  writeNotNull('enableScanLeft', instance.enableScanLeft);
  writeNotNull('placeholder', instance.placeholder?.toJson());
  writeNotNull('enableLike', instance.enableLike);
  writeNotNull('enableShare', instance.enableShare);
  writeNotNull('enableAddCart', instance.enableAddCart);
  writeNotNull('enableView', instance.enableView);
  writeNotNull('enableWishlist', instance.enableWishlist);
  writeNotNull('enableComment', instance.enableComment);
  writeNotNull('enableRating', instance.enableRating);
  writeNotNull('enableSale', instance.enableSale);
  writeNotNull('enableNew', instance.enableNew);
  writeNotNull('enableQuantity', instance.enableQuantity);
  writeNotNull('icon', instance.icon);
  return val;
}

AWProductStyle _$AWProductStyleFromJson(Map<String, dynamic> json) {
  $checkKeys(json);
  return AWProductStyle(
    padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
    margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
    background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    pad: ConvertData.stringToDoubleCanBeNull(json['pad']),
    textColor: json['textColor'] == null ? null : AbdColor.fromJson(json['textColor'] as Map<String, dynamic>),
    height: ConvertData.stringToDoubleCanBeNull(json['height']),
    offsetX: ConvertData.stringToDoubleCanBeNull(json['offsetX']),
    offsetY: ConvertData.stringToDoubleCanBeNull(json['offsetY']),
    blurRadius: ConvertData.stringToDoubleCanBeNull(json['blurRadius']),
    spreadRadius: ConvertData.stringToDoubleCanBeNull(json['spreadRadius']),
    shadowColor: json['shadowColor'] == null ? null : AbdColor.fromJson(json['shadowColor'] as Map<String, dynamic>),
    subTextColor: json['subTextColor'] == null ? null : AbdColor.fromJson(json['subTextColor'] as Map<String, dynamic>),
    ratio: ConvertData.stringToDoubleCanBeNull(json['ratio']),
    radiusImage: ConvertData.stringToDoubleCanBeNull(json['radiusImage']),
    indicatorColor:
        json['indicatorColor'] == null ? null : AbdColor.fromJson(json['indicatorColor'] as Map<String, dynamic>),
    indicatorActiveColor: json['indicatorActiveColor'] == null
        ? null
        : AbdColor.fromJson(json['indicatorActiveColor'] as Map<String, dynamic>),
    radius: ConvertData.stringToDoubleCanBeNull(json['radius']),
    col: ConvertData.stringToIntCanBeNull(json['col']),
    backgroundColorItem: json['backgroundColorItem'] == null
        ? null
        : AbdColor.fromJson(json['backgroundColorItem'] as Map<String, dynamic>),
    dividerColor: json['dividerColor'] == null ? null : AbdColor.fromJson(json['dividerColor'] as Map<String, dynamic>),
    iconCart: json['iconCart'] as Map<String, dynamic>?,
    radiusCart: ConvertData.stringToDoubleCanBeNull(json['radiusCart']),
    labelNewColor:
        json['labelNewColor'] == null ? null : AbdColor.fromJson(json['labelNewColor'] as Map<String, dynamic>),
    wishlistColor:
        json['wishlistColor'] == null ? null : AbdColor.fromJson(json['wishlistColor'] as Map<String, dynamic>),
    regularPriceColor:
        json['regularPriceColor'] == null ? null : AbdColor.fromJson(json['regularPriceColor'] as Map<String, dynamic>),
    salePriceColor:
        json['salePriceColor'] == null ? null : AbdColor.fromJson(json['salePriceColor'] as Map<String, dynamic>),
    priceColor: json['priceColor'] == null ? null : AbdColor.fromJson(json['priceColor'] as Map<String, dynamic>),
    paddingItem: json['paddingItem'] == null ? null : AbdSpacing.fromJson(json['paddingItem'] as Map<String, dynamic>),
    enableIconCart: json['enableIconCart'] as bool?,
    typeCart: json['typeCart'] as String?,
    radiusLabelSale: ConvertData.stringToDoubleCanBeNull(json['radiusLabelSale']),
    labelSaleTextColor: json['labelSaleTextColor'] == null
        ? null
        : AbdColor.fromJson(json['labelSaleTextColor'] as Map<String, dynamic>),
    labelSaleColor:
        json['labelSaleColor'] == null ? null : AbdColor.fromJson(json['labelSaleColor'] as Map<String, dynamic>),
    radiusLabelNew: ConvertData.stringToDoubleCanBeNull(json['radiusLabelNew']),
    labelNewTextColor:
        json['labelNewTextColor'] == null ? null : AbdColor.fromJson(json['labelNewTextColor'] as Map<String, dynamic>),
    dividerWidth: ConvertData.stringToDoubleCanBeNull(json['dividerWidth']),
    backgroundColorInput: json['backgroundColorInput'] == null
        ? null
        : AbdColor.fromJson(json['backgroundColorInput'] as Map<String, dynamic>),
    borderColorInput:
        json['borderColorInput'] == null ? null : AbdColor.fromJson(json['borderColorInput'] as Map<String, dynamic>),
    iconColorInput:
        json['iconColorInput'] == null ? null : AbdColor.fromJson(json['iconColorInput'] as Map<String, dynamic>),
    actionsAlignment: $enumDecodeNullable(_$AbdAlignmentEnumMap, json['actionsAlignment']),
  );
}

Map<String, dynamic> _$AWProductStyleToJson(AWProductStyle instance) {
  final val = <String, dynamic>{
    'padding': instance.padding.toJson(),
    'margin': instance.margin.toJson(),
    'background': instance.background.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('height', instance.height);
  writeNotNull('col', instance.col);
  writeNotNull('ratio', instance.ratio);
  writeNotNull('pad', instance.pad);
  writeNotNull('dividerWidth', instance.dividerWidth);
  writeNotNull('dividerColor', instance.dividerColor?.toJson());
  writeNotNull('indicatorColor', instance.indicatorColor?.toJson());
  writeNotNull('indicatorActiveColor', instance.indicatorActiveColor?.toJson());
  writeNotNull('backgroundColorItem', instance.backgroundColorItem?.toJson());
  writeNotNull('textColor', instance.textColor?.toJson());
  writeNotNull('subTextColor', instance.subTextColor?.toJson());
  writeNotNull('priceColor', instance.priceColor?.toJson());
  writeNotNull('salePriceColor', instance.salePriceColor?.toJson());
  writeNotNull('regularPriceColor', instance.regularPriceColor?.toJson());
  writeNotNull('wishlistColor', instance.wishlistColor?.toJson());
  writeNotNull('labelNewColor', instance.labelNewColor?.toJson());
  writeNotNull('labelNewTextColor', instance.labelNewTextColor?.toJson());
  writeNotNull('radiusLabelNew', instance.radiusLabelNew);
  writeNotNull('labelSaleColor', instance.labelSaleColor?.toJson());
  writeNotNull('labelSaleTextColor', instance.labelSaleTextColor?.toJson());
  writeNotNull('radiusLabelSale', instance.radiusLabelSale);
  writeNotNull('radius', instance.radius);
  writeNotNull('radiusImage', instance.radiusImage);
  writeNotNull('typeCart', instance.typeCart);
  writeNotNull('radiusCart', instance.radiusCart);
  writeNotNull('iconCart', instance.iconCart);
  writeNotNull('enableIconCart', instance.enableIconCart);
  writeNotNull('paddingItem', instance.paddingItem?.toJson());
  writeNotNull('shadowColor', instance.shadowColor?.toJson());
  writeNotNull('offsetX', instance.offsetX);
  writeNotNull('offsetY', instance.offsetY);
  writeNotNull('blurRadius', instance.blurRadius);
  writeNotNull('spreadRadius', instance.spreadRadius);
  writeNotNull('backgroundColorInput', instance.backgroundColorInput?.toJson());
  writeNotNull('borderColorInput', instance.borderColorInput?.toJson());
  writeNotNull('iconColorInput', instance.iconColorInput?.toJson());
  writeNotNull('actionsAlignment', _$AbdAlignmentEnumMap[instance.actionsAlignment]);
  return val;
}

const _$AbdAlignmentEnumMap = {
  AbdAlignment.center: 'center',
  AbdAlignment.left: 'left',
  AbdAlignment.right: 'right',
  AbdAlignment.justify: 'justify',
  AbdAlignment.end: 'end',
  AbdAlignment.start: 'start',
};

AWProductFieldsItem _$AWProductFieldsItemFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['template'],
  );
  return AWProductFieldsItem(
    data: AWProductFields.fromJson(json['data'] as Map<String, dynamic>),
    template: json['template'] as String?,
  );
}

Map<String, dynamic> _$AWProductFieldsItemToJson(AWProductFieldsItem instance) {
  final val = <String, dynamic>{
    'data': instance.data.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('template', instance.template);
  return val;
}
