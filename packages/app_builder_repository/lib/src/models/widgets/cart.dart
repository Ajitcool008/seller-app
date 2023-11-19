import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart.g.dart';

@JsonSerializable(explicitToJson: true)
class AWCart {
  @JsonKey(fromJson: fromJsonField)
  final AWCartFields fields;

  const AWCart({
    required this.fields,
  });

  /// Connect the generated [_$AWCartFromJson] function to the `fromJson`
  /// factory.
  factory AWCart.fromJson(Map<String, dynamic> json) => _$AWCartFromJson(json);

  /// Connect the generated [_$AWCartToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWCartToJson(this);

  static AWCartFields fromJsonField(dynamic value) {
    Map<String, dynamic> data = ConvertData.toMapStringDynamic(value) ?? {};
    return AWCartFields.fromJson(data);
  }
}

@JsonSerializable(explicitToJson: true)
class AWCartFields {
  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableShipping;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableCoupon;

  AWCartFields({
    required this.enableShipping,
    required this.enableCoupon,
  });

  /// Connect the generated [_$AWCartFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWCartFields.fromJson(Map<String, dynamic> json) => _$AWCartFieldsFromJson(json);

  /// Connect the generated [_$AWCartFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWCartFieldsToJson(this);

  static bool fromJsonBoolTrue(dynamic value) {
    return ConvertData.toBoolValue(value) ?? true;
  }
}
