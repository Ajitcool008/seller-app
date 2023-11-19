// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ASProductDetail _$ASProductDetailFromJson(Map<String, dynamic> json) =>
    ASProductDetail(
      fields: ASProductDetailFields.fromJson(
          json['fields'] as Map<String, dynamic>),
      styles: ASProductDetailStyles.fromJson(
          json['styles'] as Map<String, dynamic>),
      layout: json['layout'] as String? ?? 'default',
      disable: json['disable'] as bool? ?? false,
    );

ASProductDetailFields _$ASProductDetailFieldsFromJson(
        Map<String, dynamic> json) =>
    ASProductDetailFields(
      productGallerySize:
          ASProductDetailFields.fromJsonSize(json['productGallerySize']),
      paddingCategory: json['paddingCategory'] == null
          ? null
          : AbdSpacing.fromJson(
              json['paddingCategory'] as Map<String, dynamic>),
      paddingName: json['paddingName'] == null
          ? null
          : AbdSpacing.fromJson(json['paddingName'] as Map<String, dynamic>),
      paddingRelatedProduct: json['paddingRelatedProduct'] == null
          ? null
          : AbdSpacing.fromJson(
              json['paddingRelatedProduct'] as Map<String, dynamic>),
      paddingQuantity: json['paddingQuantity'] == null
          ? null
          : AbdSpacing.fromJson(
              json['paddingQuantity'] as Map<String, dynamic>),
      productGalleryFit: json['productGalleryFit'] as String?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => ASProductDetailRow.fromJson(e as Map<String, dynamic>))
          .toList(),
      productGalleryScrollDirection:
          json['productGalleryScrollDirection'] as int? ?? 0,
      productGalleryThumbSizes: json['productGalleryThumbSizes'] as String?,
      disableSwiper: json['disableSwiper'] as bool?,
      playVideoInSameScreen: json['playVideoInSameScreen'] as bool?,
      autoPlayVideo: json['autoPlayVideo'] as bool?,
    );

Map<String, dynamic> _$ASProductDetailFieldsToJson(
        ASProductDetailFields instance) =>
    <String, dynamic>{
      'paddingCategory': instance.paddingCategory?.toJson(),
      'paddingName': instance.paddingName?.toJson(),
      'paddingRelatedProduct': instance.paddingRelatedProduct?.toJson(),
      'paddingQuantity': instance.paddingQuantity?.toJson(),
      'productGalleryFit': instance.productGalleryFit,
      'rows': instance.rows?.map((e) => e.toJson()).toList(),
      'productGalleryThumbSizes': instance.productGalleryThumbSizes,
      'disableSwiper': instance.disableSwiper,
      'playVideoInSameScreen': instance.playVideoInSameScreen,
      'autoPlayVideo': instance.autoPlayVideo,
      'productGalleryScrollDirection': instance.productGalleryScrollDirection,
      'productGallerySize': ConvertData.toMapSize(instance.productGallerySize),
    };

ASProductDetailRow _$ASProductDetailRowFromJson(Map<String, dynamic> json) =>
    ASProductDetailRow(
      active: json['active'] as bool? ?? false,
      template: json['template'] as String?,
      data: json['data'] == null
          ? null
          : ASRowData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ASProductDetailRowToJson(ASProductDetailRow instance) =>
    <String, dynamic>{
      'template': instance.template,
      'active': instance.active,
      'data': instance.data?.toJson(),
    };

ASRowData _$ASRowDataFromJson(Map<String, dynamic> json) => ASRowData(
      divider: json['divider'] as bool? ?? false,
      crossAxisAlignment: json['crossAxisAlignment'] as String?,
      mainAxisAlignment: json['mainAxisAlignment'] as String?,
      columns: (json['columns'] as List<dynamic>?)
          ?.map((e) => ASRowDataColumns.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ASRowDataToJson(ASRowData instance) => <String, dynamic>{
      'mainAxisAlignment': instance.mainAxisAlignment,
      'crossAxisAlignment': instance.crossAxisAlignment,
      'columns': instance.columns?.map((e) => e.toJson()).toList(),
      'divider': instance.divider,
    };

ASRowDataColumns _$ASRowDataColumnsFromJson(Map<String, dynamic> json) =>
    ASRowDataColumns(
      active: json['active'] as bool? ?? false,
      value: json['value'] == null
          ? null
          : ASRowDataColumnsValue.fromJson(
              json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ASRowDataColumnsToJson(ASRowDataColumns instance) =>
    <String, dynamic>{
      'value': instance.value?.toJson(),
      'active': instance.active,
    };

ASRowDataColumnsValue _$ASRowDataColumnsValueFromJson(
        Map<String, dynamic> json) =>
    ASRowDataColumnsValue(
      flex: json['flex'] == null ? 1 : ConvertData.stringToInt(json['flex']),
      align: json['align'] as String? ?? 'left',
      expand: ASRowDataColumnsValue._fromJsonBoolFalse(json['expand']),
      brandLayout: json['layout'] as String? ?? 'horizontal',
      customType: json['customType'] as String? ?? 'text',
      customButtonBorderWidth:
          ConvertData.stringToDouble(json['buttonBorderWidth']),
      customButtonBorderRadius:
          ConvertData.stringToDouble(json['buttonBorderRadius']),
      customButtonSize:
          ASRowDataColumnsValue._fromJsonButtonSize(json['buttonSize']),
      customIconSize: json['iconSize'] == null
          ? 14
          : ConvertData.stringToDouble(json['iconSize']),
      customImageSize:
          ASRowDataColumnsValue._fromJsonImageSize(json['imageSize']),
      statusType: json['typeStatus'] as String? ?? 'text',
      dividerHeight: json['heightDivider'] == null
          ? 1
          : ConvertData.stringToDouble(json['heightDivider']),
      webviewHeight: json['height'] == null
          ? 200
          : ConvertData.stringToDouble(json['height']),
      webviewSyncAuth:
          ASRowDataColumnsValue._fromJsonBoolFalse(json['syncAuth']),
      relatedThumbSize: json['thumbSizes'] as String? ?? 'src',
      type: json['type'] as String?,
      padding: ASRowDataColumnsValue._fromJsonSpacing(json['padding']),
      margin: ASRowDataColumnsValue._fromJsonSpacing(json['margin']),
      foreground: ASRowDataColumnsValue._fromJsonColor(json['foreground']),
      conditional: json['conditional'] == null
          ? null
          : ASRowDataCVConditional.fromJson(
              json['conditional'] as Map<String, dynamic>),
      htmlText: ASRowDataColumnsValue._fromJsonText(json['textHtml']),
      customText: ASRowDataColumnsValue._fromJsonText(json['text']),
      customButtonBackground:
          ASRowDataColumnsValue._fromJsonColor(json['buttonBg']),
      customButtonBorderColor:
          ASRowDataColumnsValue._fromJsonColor(json['buttonBorderColor']),
      customIcon: ASRowDataColumnsValue._fromJsonIcon(json['icon']),
      customIconColor: ASRowDataColumnsValue._fromJsonColor(json['iconColor']),
      customImage: ASRowDataColumnsValue._fromJsonImage(json['image']),
      customAction: ASRowDataColumnsValue._fromJsonAction(json['action']),
      advancedFieldName: json['customFieldName'] as String?,
      dividerColor: ASRowDataColumnsValue._fromJsonColor(json['colorDivider']),
      webviewUrl: ASRowDataColumnsValue._fromJsonText(json['url']),
    );

Map<String, dynamic> _$ASRowDataColumnsValueToJson(
    ASRowDataColumnsValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  val['flex'] = instance.flex;
  val['align'] = instance.align;
  writeNotNull('padding', instance.padding?.toJson());
  writeNotNull('margin', instance.margin?.toJson());
  writeNotNull('foreground', instance.foreground?.toJson());
  val['conditional'] = instance.conditional?.toJson();
  val['expand'] = instance.expand;
  val['layout'] = instance.brandLayout;
  writeNotNull('textHtml', instance.htmlText?.toJson());
  val['customType'] = instance.customType;
  writeNotNull('text', instance.customText?.toJson());
  writeNotNull('buttonBg', instance.customButtonBackground?.toJson());
  writeNotNull('buttonBorderColor', instance.customButtonBorderColor?.toJson());
  val['buttonBorderWidth'] = instance.customButtonBorderWidth;
  val['buttonBorderRadius'] = instance.customButtonBorderRadius;
  val['buttonSize'] = ConvertData.toMapSize(instance.customButtonSize);
  writeNotNull('icon', instance.customIcon?.toJson());
  writeNotNull('iconColor', instance.customIconColor?.toJson());
  val['iconSize'] = instance.customIconSize;
  writeNotNull('image', instance.customImage?.toJson());
  val['imageSize'] = ConvertData.toMapSize(instance.customImageSize);
  writeNotNull('action', instance.customAction?.toJson());
  val['customFieldName'] = instance.advancedFieldName;
  val['typeStatus'] = instance.statusType;
  val['heightDivider'] = instance.dividerHeight;
  writeNotNull('colorDivider', instance.dividerColor?.toJson());
  val['height'] = instance.webviewHeight;
  writeNotNull('url', instance.webviewUrl?.toJson());
  val['syncAuth'] = instance.webviewSyncAuth;
  val['thumbSizes'] = instance.relatedThumbSize;
  return val;
}

ASRowDataCVConditional _$ASRowDataCVConditionalFromJson(
        Map<String, dynamic> json) =>
    ASRowDataCVConditional(
      whenConditionals: json['when_conditionals'] as String?,
      conditionals: json['conditionals'] as List<dynamic>?,
    );

Map<String, dynamic> _$ASRowDataCVConditionalToJson(
        ASRowDataCVConditional instance) =>
    <String, dynamic>{
      'when_conditionals': instance.whenConditionals,
      'conditionals': instance.conditionals,
    };

ASProductConfigs _$ASProductConfigsFromJson(Map<String, dynamic> json) =>
    ASProductConfigs(
      name: json['name'] as String?,
      enableAppbar: json['enableAppbar'] as bool?,
      cartIconType: json['cartIconType'] as String?,
      enableAppbarCart: json['enableAppbarCart'] as bool?,
      enableAppbarShare: json['enableAppbarShare'] as bool?,
      enableAppbarWishList: json['enableAppbarWishList'] as bool?,
      enableBottomBar: json['enableBottomBar'] as bool?,
      enableBottomBarAddToCart: json['enableBottomBarAddToCart'] as bool?,
      enableBottomBarCart: json['enableBottomBarCart'] as bool?,
      enableBottomBarHome: json['enableBottomBarHome'] as bool?,
      enableBottomBarSearch: json['enableBottomBarSearch'] as bool?,
      enableAppbarSearch: json['enableAppbarSearch'] as bool?,
      enableBottomBarWishList: json['enableBottomBarWishList'] as bool?,
      enableCartIcon: json['enableCartIcon'] as bool?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => ASProductDetailRow.fromJson(e as Map<String, dynamic>))
          .toList(),
      appBarType: json['appBarType'] as String?,
      extendBodyBehindAppBar: json['extendBodyBehindAppBar'] as bool?,
      floatingActionButtonLocation:
          json['floatingActionButtonLocation'] as String?,
      enableAppbarHome: json['enableAppbarHome'] as bool?,
      enableBottomBarShare: json['enableBottomBarShare'] as bool?,
      enableBottomBarQty: json['enableBottomBarQty'] as bool?,
      enableBuyNow: json['enableBuyNow'] as bool?,
      enableChat: json['enableChat'] as bool?,
    );

Map<String, dynamic> _$ASProductConfigsToJson(ASProductConfigs instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rows': instance.rows?.map((e) => e.toJson()).toList(),
      'enableAppbar': instance.enableAppbar,
      'cartIconType': instance.cartIconType,
      'enableBottomBar': instance.enableBottomBar,
      'enableCartIcon': instance.enableCartIcon,
      'enableBottomBarAddToCart': instance.enableBottomBarAddToCart,
      'enableBottomBarSearch': instance.enableBottomBarSearch,
      'enableBottomBarHome': instance.enableBottomBarHome,
      'enableBottomBarCart': instance.enableBottomBarCart,
      'enableBottomBarWishList': instance.enableBottomBarWishList,
      'enableAppbarWishList': instance.enableAppbarWishList,
      'enableAppbarCart': instance.enableAppbarCart,
      'enableAppbarShare': instance.enableAppbarShare,
      'appBarType': instance.appBarType,
      'extendBodyBehindAppBar': instance.extendBodyBehindAppBar,
      'floatingActionButtonLocation': instance.floatingActionButtonLocation,
      'enableAppbarSearch': instance.enableAppbarSearch,
      'enableAppbarHome': instance.enableAppbarHome,
      'enableBottomBarShare': instance.enableBottomBarShare,
      'enableBottomBarQty': instance.enableBottomBarQty,
      'enableBuyNow': instance.enableBuyNow,
      'enableChat': instance.enableChat,
    };

ASProductDetailStyles _$ASProductDetailStylesFromJson(
        Map<String, dynamic> json) =>
    ASProductDetailStyles(
      padding: json['padding'] == null
          ? null
          : AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      marrgin: json['marrgin'] == null
          ? null
          : AbdSpacing.fromJson(json['marrgin'] as Map<String, dynamic>),
      indicatorMargin: json['indicatorMargin'] == null
          ? null
          : AbdSpacing.fromJson(
              json['indicatorMargin'] as Map<String, dynamic>),
      indicatorAlignment: json['indicatorAlignment'] as String?,
      productGalleryIndicator: json['productGalleryIndicator'] as String?,
      indicatorColor: json['indicatorColor'] == null
          ? null
          : AbdColor.fromJson(json['indicatorColor'] as Map<String, dynamic>),
      indicatorActiveColor: json['indicatorActiveColor'] == null
          ? null
          : AbdColor.fromJson(
              json['indicatorActiveColor'] as Map<String, dynamic>),
      indicatorSize: json['indicatorSize'] == null
          ? 6
          : ConvertData.stringToDouble(json['indicatorSize']),
      indicatorSpace: json['indicatorSpace'] == null
          ? 4
          : ConvertData.stringToDouble(json['indicatorSpace']),
      indicatorActiveSize: json['indicatorActiveSize'] == null
          ? 10
          : ConvertData.stringToDouble(json['indicatorActiveSize']),
      indicatorBorderRadius: json['indicatorBorderRadius'] == null
          ? 8
          : ConvertData.stringToDouble(json['indicatorBorderRadius']),
      background: json['background'] == null
          ? null
          : AbdColor.fromJson(json['background'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ASProductDetailStylesToJson(
        ASProductDetailStyles instance) =>
    <String, dynamic>{
      'padding': instance.padding?.toJson(),
      'marrgin': instance.marrgin?.toJson(),
      'indicatorMargin': instance.indicatorMargin?.toJson(),
      'indicatorAlignment': instance.indicatorAlignment,
      'productGalleryIndicator': instance.productGalleryIndicator,
      'indicatorColor': instance.indicatorColor?.toJson(),
      'indicatorActiveColor': instance.indicatorActiveColor?.toJson(),
      'indicatorSize': instance.indicatorSize,
      'indicatorSpace': instance.indicatorSpace,
      'indicatorActiveSize': instance.indicatorActiveSize,
      'indicatorBorderRadius': instance.indicatorBorderRadius,
      'background': instance.background?.toJson(),
    };
