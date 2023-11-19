// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APPostDetail _$APPostDetailFromJson(Map<String, dynamic> json) => APPostDetail(
      id: json['id'] as String,
      type: json['type'] as String,
      fields:
          APPostDetailFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles:
          APPostDetailStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout:
          $enumDecodeNullable(_$APPostDetailLayoutEnumMap, json['layout']) ??
              APPostDetailLayout.defaultLayout,
    );

Map<String, dynamic> _$APPostDetailToJson(APPostDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'layout': _$APPostDetailLayoutEnumMap[instance.layout]!,
    };

const _$APPostDetailLayoutEnumMap = {
  APPostDetailLayout.defaultLayout: 'default',
  APPostDetailLayout.curveTop: 'curve_top',
  APPostDetailLayout.curveBottom: 'curve_bottom',
  APPostDetailLayout.overlay: 'overlay',
  APPostDetailLayout.gradient: 'gradient',
  APPostDetailLayout.stack: 'stack',
  APPostDetailLayout.layer: 'layer',
};

APPostDetailFields _$APPostDetailFieldsFromJson(Map<String, dynamic> json) =>
    APPostDetailFields(
      enableBlock: json['enableBlock'] as bool?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => APPostDetailFieldRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$APPostDetailFieldsToJson(APPostDetailFields instance) =>
    <String, dynamic>{
      'enableBlock': instance.enableBlock,
      'rows': instance.rows?.map((e) => e.toJson()).toList(),
    };

APPostDetailStyle _$APPostDetailStyleFromJson(Map<String, dynamic> json) =>
    APPostDetailStyle(
      padding: json['padding'] == null
          ? null
          : AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: json['margin'] == null
          ? null
          : AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: json['background'] == null
          ? null
          : AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : AbdColor.fromJson(json['color'] as Map<String, dynamic>),
      thumbSizes: json['thumbSizes'] as String?,
      imageSize: $enumDecodeNullable(_$BoxFitEnumMap, json['imageSize']) ??
          BoxFit.cover,
      backgroundCategory: json['backgroundCategory'] == null
          ? null
          : AbdColor.fromJson(
              json['backgroundCategory'] as Map<String, dynamic>),
      colorCategory: json['colorCategory'] == null
          ? null
          : AbdColor.fromJson(json['colorCategory'] as Map<String, dynamic>),
      radiusCategory: (json['radiusCategory'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$APPostDetailStyleToJson(APPostDetailStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding?.toJson(),
      'margin': instance.margin?.toJson(),
      'background': instance.background?.toJson(),
      'color': instance.color?.toJson(),
      'thumbSizes': instance.thumbSizes,
      'backgroundCategory': instance.backgroundCategory?.toJson(),
      'colorCategory': instance.colorCategory?.toJson(),
      'radiusCategory': instance.radiusCategory,
      'imageSize': _$BoxFitEnumMap[instance.imageSize]!,
    };

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
};

APPostDetailFieldRow _$APPostDetailFieldRowFromJson(
        Map<String, dynamic> json) =>
    APPostDetailFieldRow(
      data: APPostDetailFieldRowData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APPostDetailFieldRowToJson(
        APPostDetailFieldRow instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

APPostDetailFieldRowData _$APPostDetailFieldRowDataFromJson(
        Map<String, dynamic> json) =>
    APPostDetailFieldRowData(
      mainAxisAlignment:
          $enumDecodeNullable(_$AbdAlignmentEnumMap, json['mainAxisAlignment']),
      crossAxisAlignment: $enumDecodeNullable(
          _$AbdAlignmentEnumMap, json['crossAxisAlignment']),
      divider: json['divider'] as bool? ?? false,
      columns: (json['columns'] as List<dynamic>?)
          ?.map((e) =>
              APPostDetailFieldColumn.fromJson(e as Map<String, dynamic>))
          .toList(),
      visit: json['visit'] as String?,
    );

Map<String, dynamic> _$APPostDetailFieldRowDataToJson(
        APPostDetailFieldRowData instance) =>
    <String, dynamic>{
      'mainAxisAlignment': _$AbdAlignmentEnumMap[instance.mainAxisAlignment],
      'crossAxisAlignment': _$AbdAlignmentEnumMap[instance.crossAxisAlignment],
      'divider': instance.divider,
      'columns': instance.columns?.map((e) => e.toJson()).toList(),
      'visit': instance.visit,
    };

const _$AbdAlignmentEnumMap = {
  AbdAlignment.center: 'center',
  AbdAlignment.left: 'left',
  AbdAlignment.right: 'right',
  AbdAlignment.justify: 'justify',
  AbdAlignment.end: 'end',
  AbdAlignment.start: 'start',
};

APPostDetailFieldColumn _$APPostDetailFieldColumnFromJson(
        Map<String, dynamic> json) =>
    APPostDetailFieldColumn(
      value: APPostDetailFieldColumnValue.fromJson(
          json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APPostDetailFieldColumnToJson(
        APPostDetailFieldColumn instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
    };

APPostDetailFieldColumnValue _$APPostDetailFieldColumnValueFromJson(
        Map<String, dynamic> json) =>
    APPostDetailFieldColumnValue(
      type: json['type'] as String?,
      enableFlex: json['enableFlex'] as bool?,
      flex: json['flex'] as String?,
      queryBy: json['queryBy'] as String?,
      margin: json['margin'] == null
          ? null
          : AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      padding: json['padding'] == null
          ? null
          : AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      foreground: json['foreground'] == null
          ? null
          : AbdColor.fromJson(json['foreground'] as Map<String, dynamic>),
      textHtml: json['textHtml'] == null
          ? null
          : AbdText.fromJson(json['textHtml'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APPostDetailFieldColumnValueToJson(
        APPostDetailFieldColumnValue instance) =>
    <String, dynamic>{
      'type': instance.type,
      'enableFlex': instance.enableFlex,
      'flex': instance.flex,
      'queryBy': instance.queryBy,
      'margin': instance.margin?.toJson(),
      'padding': instance.padding?.toJson(),
      'foreground': instance.foreground?.toJson(),
      'textHtml': instance.textHtml?.toJson(),
    };

APPostDetailConfig _$APPostDetailConfigFromJson(Map<String, dynamic> json) =>
    APPostDetailConfig(
      enableAppbarComment: json['enableAppbarComment'] as bool?,
      enableAppbarWishList: json['enableAppbarWishList'] as bool?,
      enableAppbarShare: json['enableAppbarShare'] as bool?,
    );

Map<String, dynamic> _$APPostDetailConfigToJson(APPostDetailConfig instance) =>
    <String, dynamic>{
      'enableAppbarComment': instance.enableAppbarComment,
      'enableAppbarWishList': instance.enableAppbarWishList,
      'enableAppbarShare': instance.enableAppbarShare,
    };
