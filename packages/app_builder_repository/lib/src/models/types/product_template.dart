import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'color.dart';

part 'product_template.g.dart';

enum AbdProductTemplateLayout {
  @JsonValue('card')
  card,
  @JsonValue('vertical')
  vertical,
  @JsonValue('overlay')
  overlay,
  @JsonValue('grid')
  grid,
  @JsonValue('contained')
  contained,
  @JsonValue('horizontal')
  horizontal,
  @JsonValue('emerge')
  emerge,
  @JsonValue('vertical-center')
  verticalCenter,
  @JsonValue('card-horizontal')
  cardHorizontal,
  @JsonValue('card-vertical')
  cardVertical,
  @JsonValue('curve')
  curve;
}

@JsonSerializable(explicitToJson: true)
class AbdProductTemplate {
  @JsonKey(defaultValue: AbdProductTemplateLayout.contained)
  final AbdProductTemplateLayout template;

  final AbdProductTemplateData data;

  const AbdProductTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AbdProductTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AbdProductTemplate.fromJson(Map<String, dynamic> json) => _$AbdProductTemplateFromJson(json);

  /// Connect the generated [_$AbdProductTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdProductTemplateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AbdProductTemplateData {
  final AbdProductTemplateDataSize size;

  @JsonKey(disallowNullValue: true)
  final bool? enableLabelNew;

  @JsonKey(disallowNullValue: true)
  final bool? enableLabelSale;

  @JsonKey(disallowNullValue: true)
  final bool? enableCategory;

  @JsonKey(disallowNullValue: true)
  final bool? enableRating;

  @JsonKey(disallowNullValue: true)
  final bool? enableQuantity;

  @JsonKey(disallowNullValue: true)
  final bool? enableAddCart;

  @JsonKey(disallowNullValue: true)
  final String? thumbSizes;

  @JsonKey(disallowNullValue: true)
  final String? imageSize;

  @JsonKey(disallowNullValue: true)
  final bool? enablePrice;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, disallowNullValue: true)
  final double? opacity;

  @JsonKey(disallowNullValue: true)
  final AbdColor? opacityColor;

  @JsonKey(includeIfNull: false)
  final bool? enableProgressSale;

  const AbdProductTemplateData({
    required this.size,
    this.enableLabelNew,
    this.enableCategory,
    this.enableAddCart,
    this.enableLabelSale,
    this.enablePrice,
    this.enableQuantity,
    this.enableRating,
    this.opacity,
    this.thumbSizes,
    this.imageSize,
    this.opacityColor,
    this.enableProgressSale,
  });

  /// Connect the generated [_$AbdProductTemplateDataFromJson] function to the `fromJson`
  /// factory.
  factory AbdProductTemplateData.fromJson(Map<String, dynamic> json) => _$AbdProductTemplateDataFromJson(json);

  /// Connect the generated [_$AbdProductTemplateDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdProductTemplateDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AbdProductTemplateDataSize {
  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double width;

  @JsonKey(fromJson: ConvertData.stringToDouble)
  final double height;

  const AbdProductTemplateDataSize({
    required this.width,
    required this.height,
  });

  /// Connect the generated [_$AbdProductTemplateDataSizeFromJson] function to the `fromJson`
  /// factory.
  factory AbdProductTemplateDataSize.fromJson(Map<String, dynamic> json) => _$AbdProductTemplateDataSizeFromJson(json);

  /// Connect the generated [_$AbdProductTemplateDataSizeToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdProductTemplateDataSizeToJson(this);
}
