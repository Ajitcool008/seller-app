// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heading.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWHeading _$AWHeadingFromJson(Map<String, dynamic> json) => AWHeading(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWHeadingFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWHeadingStyle.fromJson(json['styles'] as Map<String, dynamic>),
      layout: $enumDecodeNullable(_$AWHeadingLayoutEnumMap, json['layout']) ??
          AWHeadingLayout.rowDefault,
      disable: json['disable'] == null
          ? false
          : AWHeading.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWHeadingToJson(AWHeading instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'layout': _$AWHeadingLayoutEnumMap[instance.layout]!,
      'disable': instance.disable,
    };

const _$AWHeadingLayoutEnumMap = {
  AWHeadingLayout.rowDefault: 'default',
  AWHeadingLayout.rowDivider: 'divider',
  AWHeadingLayout.rowCorner: 'corner',
  AWHeadingLayout.vertical: 'vertical',
};

AWHeadingFields _$AWHeadingFieldsFromJson(Map<String, dynamic> json) =>
    AWHeadingFields(
      title: AbdText.fromJson(json['title'] as Map<String, dynamic>),
      centerTitle: AWHeadingFields.fromJsonCenterTitle(json['centerTitle']),
      enableIcon: AWHeadingFields.fromJsonEnableIcon(json['enableIcon']),
      icon: AbdIcon.fromJson(json['icon'] as Map<String, dynamic>),
      actionTitle:
          AbdText.fromJson(json['actionTitle'] as Map<String, dynamic>),
      enableIconAction:
          AWHeadingFields.fromJsonEnableIconAction(json['enableIconAction']),
      iconAction: AbdIcon.fromJson(json['iconAction'] as Map<String, dynamic>),
      action: AbdAction.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWHeadingFieldsToJson(AWHeadingFields instance) =>
    <String, dynamic>{
      'title': instance.title.toJson(),
      'centerTitle': instance.centerTitle,
      'enableIcon': instance.enableIcon,
      'icon': instance.icon.toJson(),
      'actionTitle': instance.actionTitle.toJson(),
      'enableIconAction': instance.enableIconAction,
      'iconAction': instance.iconAction.toJson(),
      'action': instance.action.toJson(),
    };

AWHeadingStyle _$AWHeadingStyleFromJson(Map<String, dynamic> json) =>
    AWHeadingStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      secondBackground:
          AbdColor.fromJson(json['secondBackground'] as Map<String, dynamic>),
      dividerColor:
          AbdColor.fromJson(json['dividerColor'] as Map<String, dynamic>),
      iconColor: json['iconColor'] == null
          ? null
          : AbdColor.fromJson(json['iconColor'] as Map<String, dynamic>),
      dividerHeight: AWHeadingStyle.fromJsonDouble(json['dividerHeight']),
      borderRadiusTopLeft:
          AWHeadingStyle.fromJsonDouble(json['borderRadiusTopLeft']),
      borderRadiusTopRight:
          AWHeadingStyle.fromJsonDouble(json['borderRadiusTopRight']),
      borderRadiusBottomLeft:
          AWHeadingStyle.fromJsonDouble(json['borderRadiusBottomLeft']),
      borderRadiusBottomRight:
          AWHeadingStyle.fromJsonDouble(json['borderRadiusBottomRight']),
    );

Map<String, dynamic> _$AWHeadingStyleToJson(AWHeadingStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'background': instance.background.toJson(),
      'secondBackground': instance.secondBackground.toJson(),
      'dividerColor': instance.dividerColor.toJson(),
      'iconColor': instance.iconColor?.toJson(),
      'dividerHeight': instance.dividerHeight,
      'borderRadiusTopLeft': instance.borderRadiusTopLeft,
      'borderRadiusTopRight': instance.borderRadiusTopRight,
      'borderRadiusBottomLeft': instance.borderRadiusBottomLeft,
      'borderRadiusBottomRight': instance.borderRadiusBottomRight,
    };
