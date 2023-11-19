// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSubscribe _$AWSubscribeFromJson(Map<String, dynamic> json) => AWSubscribe(
      id: json['id'] as String,
      type: json['type'] as String,
      fields:
          AWSubscribeFields.fromJson(json['fields'] as Map<String, dynamic>),
      styles: AWSubscribeStyle.fromJson(json['styles'] as Map<String, dynamic>),
      disable: json['disable'] == null
          ? false
          : AWSubscribe.fromJsonDisable(json['disable']),
      layout: json['layout'] as String? ?? 'default',
    );

Map<String, dynamic> _$AWSubscribeToJson(AWSubscribe instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fields': instance.fields.toJson(),
      'styles': instance.styles.toJson(),
      'layout': instance.layout,
      'disable': instance.disable,
    };

AWSubscribeFields _$AWSubscribeFieldsFromJson(Map<String, dynamic> json) =>
    AWSubscribeFields(
      title: AbdText.fromJson(json['title'] as Map<String, dynamic>),
      description:
          AbdText.fromJson(json['description'] as Map<String, dynamic>),
      placeholder:
          AbdText.fromJson(json['placeholder'] as Map<String, dynamic>),
      txtButton: AbdText.fromJson(json['txtButton'] as Map<String, dynamic>),
      formId: json['formId'] as String? ?? '',
      name: json['name'] as String,
    );

Map<String, dynamic> _$AWSubscribeFieldsToJson(AWSubscribeFields instance) =>
    <String, dynamic>{
      'title': instance.title.toJson(),
      'description': instance.description.toJson(),
      'placeholder': instance.placeholder.toJson(),
      'txtButton': instance.txtButton.toJson(),
      'formId': instance.formId,
      'name': instance.name,
    };

AWSubscribeStyle _$AWSubscribeStyleFromJson(Map<String, dynamic> json) =>
    AWSubscribeStyle(
      padding: AWSubscribeStyle._fromJsonSpacing(json['padding']),
      margin: AWSubscribeStyle._fromJsonSpacing(json['margin']),
      background: AWSubscribeStyle._fromJsonColor(json['background']),
      image: AWSubscribeStyle._fromJsonImage(json['image']),
      sizeIcon: json['sizeIcon'] == null
          ? 20
          : ConvertData.stringToDouble(json['sizeIcon']),
      colorIcon: AWSubscribeStyle._fromJsonColor(json['colorIcon']),
      backgroundButton:
          AWSubscribeStyle._fromJsonColor(json['backgroundButton']),
      colorButton: AWSubscribeStyle._fromJsonColor(json['colorButton']),
      backgroundInput: AWSubscribeStyle._fromJsonColor(json['backgroundInput']),
      colorInput: AWSubscribeStyle._fromJsonColor(json['colorInput']),
      colorPlaceholder:
          AWSubscribeStyle._fromJsonColor(json['colorPlaceholder']),
      borderInput: AWSubscribeStyle._fromJsonColor(json['borderInput']),
    );

Map<String, dynamic> _$AWSubscribeStyleToJson(AWSubscribeStyle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', instance.padding?.toJson());
  writeNotNull('margin', instance.margin?.toJson());
  writeNotNull('background', instance.background?.toJson());
  writeNotNull('image', instance.image?.toJson());
  val['sizeIcon'] = instance.sizeIcon;
  writeNotNull('colorIcon', instance.colorIcon?.toJson());
  writeNotNull('backgroundButton', instance.backgroundButton?.toJson());
  writeNotNull('colorButton', instance.colorButton?.toJson());
  writeNotNull('backgroundInput', instance.backgroundInput?.toJson());
  writeNotNull('colorInput', instance.colorInput?.toJson());
  writeNotNull('colorPlaceholder', instance.colorPlaceholder?.toJson());
  writeNotNull('borderInput', instance.borderInput?.toJson());
  return val;
}
