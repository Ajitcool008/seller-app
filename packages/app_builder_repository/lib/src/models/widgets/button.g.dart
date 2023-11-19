// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWButton _$AWButtonFromJson(Map<String, dynamic> json) => AWButton(
      id: json['id'] as String,
      type: json['type'] as String,
      fields: AWButtonFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWButtonStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWButton.fromJsonDisable(json['disable']),
    );

Map<String, dynamic> _$AWButtonToJson(AWButton instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'disable': instance.disable,
    };

AWButtonFields _$AWButtonFieldsFromJson(Map<String, dynamic> json) =>
    AWButtonFields(
      title: AbdText.fromJson(json['title'] as Map<String, dynamic>),
      icon: AbdIcon.fromJson(json['icon'] as Map<String, dynamic>),
      action: AbdAction.fromJson(json['action'] as Map<String, dynamic>),
      enableFullWidth: json['enableFullWidth'] == null
          ? true
          : AWButtonFields.fromJsonFullWidth(json['enableFullWidth']),
      enableIcon: json['enableIcon'] == null
          ? false
          : AWButtonFields.fromJsonIcon(json['enableIcon']),
      enableIconLeft: json['enableIconLeft'] == null
          ? false
          : AWButtonFields.fromJsonIconLeft(json['enableIconLeft']),
    );

Map<String, dynamic> _$AWButtonFieldsToJson(AWButtonFields instance) =>
    <String, dynamic>{
      'title': instance.title.toJson(),
      'icon': instance.icon.toJson(),
      'action': instance.action.toJson(),
      'enableFullWidth': instance.enableFullWidth,
      'enableIcon': instance.enableIcon,
      'enableIconLeft': instance.enableIconLeft,
    };

AWButtonStyle _$AWButtonStyleFromJson(Map<String, dynamic> json) =>
    AWButtonStyle(
      padding: AbdSpacing.fromJson(json['padding'] as Map<String, dynamic>),
      margin: AbdSpacing.fromJson(json['margin'] as Map<String, dynamic>),
      height: AWButtonStyle.fromJsonHeight(json['height']),
      background: AbdColor.fromJson(json['background'] as Map<String, dynamic>),
      backgroundButton: json['backgroundItem'] == null
          ? null
          : AbdColor.fromJson(json['backgroundItem'] as Map<String, dynamic>),
      widthBorderButton:
          AWButtonStyle.fromJsonWidthBorder(json['borderWidgetItem']),
      colorBorderButton: json['borderColorItem'] == null
          ? null
          : AbdColor.fromJson(json['borderColorItem'] as Map<String, dynamic>),
      radiusButton: AWButtonStyle.fromJsonRadius(json['radiusItem']),
      enableChangeIcon: AWButtonStyle.fromJsonChangeIcon(json['autoIconItem']),
      sizeIcon: AWButtonStyle.fromJsonSizeIcon(json['iconSizeItem']),
      colorIcon: json['iconColorItem'] == null
          ? null
          : AbdColor.fromJson(json['iconColorItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AWButtonStyleToJson(AWButtonStyle instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'margin': instance.margin.toJson(),
      'height': instance.height,
      'background': instance.background.toJson(),
      'backgroundItem': instance.backgroundButton?.toJson(),
      'borderWidgetItem': instance.widthBorderButton,
      'borderColorItem': instance.colorBorderButton?.toJson(),
      'radiusItem': instance.radiusButton,
      'autoIconItem': instance.enableChangeIcon,
      'iconSizeItem': instance.sizeIcon,
      'iconColorItem': instance.colorIcon?.toJson(),
    };
