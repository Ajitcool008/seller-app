// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWIconBox _$AWIconBoxFromJson(Map<String, dynamic> json) => AWIconBox(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWIconBoxFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWIconBoxStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWIconBoxLayoutEnumMap, json['layout']) ??
          AWIconBoxLayout.list,
      disable: json['disable'] == null
          ? false
          : AWIconBox.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWIconBoxToJson(AWIconBox instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'layout': _$AWIconBoxLayoutEnumMap[instance.layout]!,
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

const _$AWIconBoxLayoutEnumMap = {
  AWIconBoxLayout.list: 'list',
  AWIconBoxLayout.carousel: 'carousel',
  AWIconBoxLayout.masonry: 'masonry',
  AWIconBoxLayout.slideshow: 'slideshow',
  AWIconBoxLayout.grid: 'grid',
};

AWIconBoxFields _$AWIconBoxFieldsFromJson(Map<String, dynamic> json) =>
    AWIconBoxFields(
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => AWIconBoxTemplate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AWIconBoxFieldsToJson(AWIconBoxFields instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

AWIconBoxStyle _$AWIconBoxStyleFromJson(Map<String, dynamic> json) =>
    AWIconBoxStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: json['background'] == null ? null : AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      pad: AWIconBoxStyle.fromJsonPad(json['pad']),
      height: AWIconBoxStyle.fromJsonHeight(json['height']),
      width: AWIconBoxStyle.fromJsonWidth(json['width']),
      col: AWIconBoxStyle.fromJsonColumn(json['col']),
      ratio: AWIconBoxStyle.fromJsonRatio(json['ratio']),
      indicatorColor:
          json['indicatorColor'] == null ? null :
          AbdColor.fromJson(json['indicatorColor'] as Map<String, dynamic>),
      indicatorActiveColor: json['indicatorActiveColor'] == null
          ? null
          : AbdColor.fromJson(
          json['indicatorActiveColor'] as Map<String, dynamic>),
      backgroundColorItem: json['backgroundColorItem'] == null
          ? null
          : AbdColor.fromJson(
          json['backgroundColorItem'] as Map<String, dynamic>),
      borderColor: json['borderColor'] == null ? null :
          AbdColor.fromJson(json['borderColor'] as Map<String, dynamic>),
      radius: AWIconBoxStyle.fromJsonRadius(json['radius']),
      enableBoxIcon: AWIconBoxStyle.fromJsonEnableIconBox(json['enableBoxIcon']),
      iconColor: json['iconColor'] == null ? null : AbdColor.fromJson(json['iconColor'] as Map<String, dynamic>),
      sizeIcon: AWIconBoxStyle.fromJsonSizeIcon(json['sizeIcon']),
      sizeBoxIcon: AWIconBoxStyle.fromJsonSizeBoxIcon(json['sizeBoxIcon']),
      iconBoxColor:
          json['iconBoxColor'] == null ? null : 
          AbdColor.fromJson(json['iconBoxColor'] as Map<String, dynamic>),
      iconBorder: json['iconBorder'] == null ? null : AbdColor.fromJson(json['iconBorder'] as Map<String, dynamic>),
      shadowColor: json['shadowColor'] == null ? null :
          AbdColor.fromJson(json['shadowColor'] as Map<String, dynamic>),
      offsetX: AWIconBoxStyle.fromJsonOffsetX(json['offsetX']),
      offsetY: AWIconBoxStyle.fromJsonOffsetY(json['offsetY']),
      blurRadius: AWIconBoxStyle.fromJsonBlurRadius(json['blurRadius']),
      spreadRadius: AWIconBoxStyle.fromJsonSpreadRadius(json['spreadRadius']),
      maxWidth: AWIconBoxStyle.fromJsonMaxWidth(json['maxWidth']),
    );

Map<String, dynamic> _$AWIconBoxStyleToJson(AWIconBoxStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background?.toJson(),
      'pad': instance.pad,
      'height': instance.height,
      'width': instance.width,
      'col': instance.col,
      'ratio': instance.ratio,
      'indicatorColor': instance.indicatorColor?.toJson(),
      'indicatorActiveColor': instance.indicatorActiveColor?.toJson(),
      'backgroundColorItem': instance.backgroundColorItem?.toJson(),
      'borderColor': instance.borderColor?.toJson(),
      'radius': instance.radius,
      'enableBoxIcon': instance.enableBoxIcon,
      'iconColor': instance.iconColor?.toJson(),
      'sizeIcon': instance.sizeIcon,
      'sizeBoxIcon': instance.sizeBoxIcon,
      'iconBoxColor': instance.iconBoxColor?.toJson(),
      'iconBorder': instance.iconBorder?.toJson(),
      'shadowColor': instance.shadowColor?.toJson(),
      'offsetX': instance.offsetX,
      'offsetY': instance.offsetY,
      'blurRadius': instance.blurRadius,
      'spreadRadius': instance.spreadRadius,
      'maxWidth': instance.maxWidth,
    };

AWIconBoxTemplate _$AWIconBoxTemplateFromJson(Map<String, dynamic> json) =>
    AWIconBoxTemplate(
      template: $enumDecode(_$AWIconBoxTemplateTypeEnumMap, json['template']),
      data:
          AWIconBoxDataTemplate.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWIconBoxTemplateToJson(AWIconBoxTemplate instance) =>
    <String, dynamic>{
      'template': _$AWIconBoxTemplateTypeEnumMap[instance.template]!,
      'data': instance.data.toJson(),
    };

const _$AWIconBoxTemplateTypeEnumMap = {
  AWIconBoxTemplateType.defaultBox: 'default',
  AWIconBoxTemplateType.containedBox: 'contained',
  AWIconBoxTemplateType.groupBox: 'group',
};

AWIconBoxDataTemplate _$AWIconBoxDataTemplateFromJson(
        Map<String, dynamic> json) =>
    AWIconBoxDataTemplate(
      icon: AbdIcon.fromJson(json['icon'] as Map<String, dynamic>),
      title: AbdText.fromJson(json['title'] as Map<String, dynamic>),
      description:
          AbdText.fromJson(json['description'] as Map<String, dynamic>),
      action: json['action'] == null
          ? null
          : AbdAction.fromJson(json['action'] as Map<String, dynamic>),
      alignment: AWIconBoxDataTemplate.fromJsonAlignment(json['alignment']),
    );

Map<String, dynamic> _$AWIconBoxDataTemplateToJson(
    AWIconBoxDataTemplate instance) {
  final val = <String, dynamic>{
    'icon': instance.icon.toJson(),
    'title': instance.title.toJson(),
    'description': instance.description.toJson(),
    'action': instance.action?.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('alignment', _$TextAlignEnumMap[instance.alignment]);
  return val;
}

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};
