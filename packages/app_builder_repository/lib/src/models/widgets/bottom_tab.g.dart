// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWBottomTab _$AWBottomTabFromJson(Map<String, dynamic> json) => AWBottomTab(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWBottomTabFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWBottomTabStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWBottomTabLayoutEnumMap, json['layout']) ?? AWBottomTabLayout.defaultBT,
    );

Map<String, dynamic> _$AWBottomTabToJson(AWBottomTab instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'layout': _$AWBottomTabLayoutEnumMap[instance.layout]!,
      'styles': instance.styles.toJson(),
    };

const _$AWBottomTabLayoutEnumMap = {
  AWBottomTabLayout.defaultBT: 'default',
  AWBottomTabLayout.defaultBg: 'default_bg',
  AWBottomTabLayout.borderTop: 'border_top',
  AWBottomTabLayout.borderBottom: 'border_bottom',
  AWBottomTabLayout.salomon: 'salomon',
  AWBottomTabLayout.inspiredInside: 'inspired_inside',
  AWBottomTabLayout.inspiredInsideHexagon: 'inspired_inside_hexagon',
  AWBottomTabLayout.inspiredOutside: 'inspired_outside',
  AWBottomTabLayout.inspiredOutsideHexagon: 'inspired_outside_hexagon',
  AWBottomTabLayout.inspiredOutsideDeep: 'inspired_outside_deep',
  AWBottomTabLayout.inspiredOutsideRadius: 'inspired_outside_radius',
  AWBottomTabLayout.inspiredCurve: 'inspired_curve',
  AWBottomTabLayout.inspiredCurveHexagon: 'inspired_curve_hexagon',
  AWBottomTabLayout.creative: 'creative',
  AWBottomTabLayout.creativeHexagon: 'creative_hexagon',
  AWBottomTabLayout.fancy: 'fancy',
  AWBottomTabLayout.fancyBorder: 'fancy_border',
  AWBottomTabLayout.floating: 'floating',
};

AWBottomTabFields _$AWBottomTabFieldsFromJson(Map<String, dynamic> json) => AWBottomTabFields(
      hidden: AWBottomTabFields.fromJsonHidden(json['hidden']),
      animated: AWBottomTabFields.fromJsonAnimated(json['animated']),
      fixedActive: AWBottomTabFields.fromJsonFixedActive(json['fixedActive']),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => AWBottomTabTemplate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AWBottomTabFieldsToJson(AWBottomTabFields instance) => <String, dynamic>{
      'hidden': instance.hidden,
      'animated': instance.animated,
      'fixedActive': instance.fixedActive,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

AWBottomTabStyle _$AWBottomTabStyleFromJson(Map<String, dynamic> json) => AWBottomTabStyle(
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      color: AbdColor.fromJson(json['color'] as Map<String, dynamic>),
      colorActive: AbdColor.fromJson(json['colorActive'] as Map<String, dynamic>),
      colorOnActive:
          json['colorOnActive'] == null ? null : AbdColor.fromJson(json['colorOnActive'] as Map<String, dynamic>),
      enableShadow: AWBottomTabStyle.fromJsonEnableShadow(json['enableShadow']),
      padTop: AWBottomTabStyle.fromJsonPadTop(json['padTop']),
      pad: AWBottomTabStyle.fromJsonPad(json['pad']),
      padBottom: AWBottomTabStyle.fromJsonPadBottom(json['padBottom']),
      radius: AWBottomTabStyle.fromJsonRadius(json['radius']),
      activeBorderRadius: AWBottomTabStyle.fromJsonActiveBorderRadius(json['activeBorderRadius']),
    );

Map<String, dynamic> _$AWBottomTabStyleToJson(AWBottomTabStyle instance) => <String, dynamic>{
      'background': instance.background.toJson(),
      'color': instance.color.toJson(),
      'colorActive': instance.colorActive.toJson(),
      'colorOnActive': instance.colorOnActive?.toJson(),
      'enableShadow': instance.enableShadow,
      'padTop': instance.padTop,
      'pad': instance.pad,
      'padBottom': instance.padBottom,
      'radius': instance.radius,
      'activeBorderRadius': instance.activeBorderRadius,
    };

AWBottomTabTemplate _$AWBottomTabTemplateFromJson(Map<String, dynamic> json) => AWBottomTabTemplate(
      template: json['template'] as String,
      active: json['active'] as bool? ?? true,
      data: AWBottomTabDataTemplate.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWBottomTabTemplateToJson(AWBottomTabTemplate instance) => <String, dynamic>{
      'template': instance.template,
      'active': instance.active,
      'data': instance.data.toJson(),
    };

AWBottomTabDataTemplate _$AWBottomTabDataTemplateFromJson(Map<String, dynamic> json) => AWBottomTabDataTemplate(
      icon: json['icon'] == null ? null : AbdIcon.fromJson(json['icon'] as Map<String, dynamic>),
      title: json['title'] == null ? null : AbdText.fromJson(json['title'] as Map<String, dynamic>),
      action: json['action'] == null ? null : AbdAction.fromJson(json['action'] as Map<String, dynamic>),
      enableCount: ConvertData.toBoolValue(json['enableCount']),
      countType: $enumDecodeNullable(_$AWBottomTabCountTypeEnumMap, json['countType']),
      enableCustomize: ConvertData.toBoolValue(json['enableCustomize']),
      background: json['background'] == null ? null : AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      color: json['color'] == null ? null : AbdColor.fromJson(json['color'] as Map<String, dynamic>),
      colorActive: json['colorActive'] == null ? null : AbdColor.fromJson(json['colorActive'] as Map<String, dynamic>),
      colorOnActive:
          json['colorOnActive'] == null ? null : AbdColor.fromJson(json['colorOnActive'] as Map<String, dynamic>),
      enableShadow: ConvertData.toBoolValue(json['enableShadow']),
      padTop: ConvertData.stringToDoubleCanBeNull(json['padTop']),
      pad: ConvertData.stringToDoubleCanBeNull(json['pad']),
      padBottom: ConvertData.stringToDoubleCanBeNull(json['padBottom']),
      radius: ConvertData.stringToDoubleCanBeNull(json['radius']),
      activeBorderRadius: ConvertData.stringToDoubleCanBeNull(json['activeBorderRadius']),
    );

Map<String, dynamic> _$AWBottomTabDataTemplateToJson(AWBottomTabDataTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('icon', instance.icon?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('action', instance.action?.toJson());
  writeNotNull('enableCount', instance.enableCount);
  writeNotNull('countType', _$AWBottomTabCountTypeEnumMap[instance.countType]);
  writeNotNull('enableCustomize', instance.enableCustomize);
  writeNotNull('background', instance.background?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('colorActive', instance.colorActive?.toJson());
  writeNotNull('colorOnActive', instance.colorOnActive?.toJson());
  writeNotNull('enableShadow', instance.enableShadow);
  writeNotNull('padTop', instance.padTop);
  writeNotNull('pad', instance.pad);
  writeNotNull('padBottom', instance.padBottom);
  writeNotNull('radius', instance.radius);
  writeNotNull('activeBorderRadius', instance.activeBorderRadius);
  return val;
}

const _$AWBottomTabCountTypeEnumMap = {
  AWBottomTabCountType.cart: 'cart',
  AWBottomTabCountType.wishlist: 'wishlist',
  AWBottomTabCountType.favorite: 'favorite',
};
