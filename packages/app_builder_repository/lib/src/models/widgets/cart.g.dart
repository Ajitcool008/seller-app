// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWCart _$AWCartFromJson(Map<String, dynamic> json) => AWCart(
      fields: AWCart.fromJsonField(json['fields']),
    );

Map<String, dynamic> _$AWCartToJson(AWCart instance) => <String, dynamic>{
      'fields': instance.fields.toJson(),
    };

AWCartFields _$AWCartFieldsFromJson(Map<String, dynamic> json) => AWCartFields(
      enableShipping: AWCartFields.fromJsonBoolTrue(json['enableShipping']),
      enableCoupon: AWCartFields.fromJsonBoolTrue(json['enableCoupon']),
    );

Map<String, dynamic> _$AWCartFieldsToJson(AWCartFields instance) => <String, dynamic>{
      'enableShipping': instance.enableShipping,
      'enableCoupon': instance.enableCoupon,
    };
