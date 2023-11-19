import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'products.g.dart';

@JsonSerializable(createToJson: false)
class ASProducts {
  final ASProductsFields fields;

  final ASProductsStyles styles;

  const ASProducts({
    required this.fields,
    required this.styles,
  });

  /// Connect the generated [_$ASProductsFromJson] function to the `fromJson`
  /// factory.
  factory ASProducts.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = {};

    Map<String, dynamic> fields = {};
    Map<String, dynamic> styles = {};

    if (json['widgets']?['productListPage'] is Map) {
      Map widgets = json['widgets']['productListPage'];

      if (widgets['fields'] is Map) {
        fields = Map.castFrom<dynamic, dynamic, String, dynamic>(widgets['fields']);
      }
      if (widgets['styles'] is Map) {
        styles = Map.castFrom<dynamic, dynamic, String, dynamic>(widgets['styles']);
      }
    }
    newJson.putIfAbsent('fields', () => fields);
    newJson.putIfAbsent('styles', () => styles);

    return _$ASProductsFromJson(newJson);
  }

  /// Connect the generated [_$ASProductsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> newJson = {
      "widgets": {
        "productListPage": {
          "id": "productListPage",
          "type": "productListPage",
          "fields": fields.toJson(),
          "styles": styles.toJson(),
        }
      },
    };
    return newJson;
  }
}

@JsonSerializable(explicitToJson: true)
class ASProductsFields {
  final String? refinePosition;

  final String? refineItemStyle;

  final int? itemPerPage;

  final String? thumbSizes;

  const ASProductsFields({
    this.refineItemStyle,
    this.refinePosition,
    this.itemPerPage,
    this.thumbSizes,
  });

  /// Connect the generated [_$ASProductsFieldsFromJson] function to the `fromJson`
  /// factory.
  factory ASProductsFields.fromJson(Map<String, dynamic> json) => _$ASProductsFieldsFromJson(json);

  /// Connect the generated [_$ASProductsFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASProductsFieldsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ASProductsStyles {
  final AbdSpacing? padding;
  final AbdSpacing? marrgin;
  final AbdColor? textColor;

  final AbdColor? subTextColor;

  final AbdColor? priceColor;

  final AbdColor? salePriceColor;

  final AbdColor? regularPriceColor;

  final AbdColor? wishlistColor;

  final AbdColor? labelNewColor;

  final AbdColor? labelNewTextColor;

  final AbdColor? labelSaleColor;

  final AbdColor? labelSaleTextColor;

  final String? sizeImage;

  final String? typeCart;

  final AbdIcon? iconCart;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 8)
  final double radiusImage;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 8)
  final double radiusLabelNew;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 8)
  final double radiusLabelSale;

  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 8)
  final double radiusCart;
  const ASProductsStyles({
    required this.padding,
    required this.marrgin,
    required this.radiusImage,
    required this.radiusLabelNew,
    required this.radiusLabelSale,
    required this.radiusCart,
    this.textColor,
    this.subTextColor,
    this.priceColor,
    this.salePriceColor,
    this.regularPriceColor,
    this.wishlistColor,
    this.labelNewColor,
    this.labelNewTextColor,
    this.labelSaleColor,
    this.labelSaleTextColor,
    this.sizeImage,
    this.typeCart,
    this.iconCart,
  });

  /// Connect the generated [_$ASProductsStylesFromJson] function to the `fromJson`
  /// factory.
  factory ASProductsStyles.fromJson(Map<String, dynamic> json) => _$ASProductsStylesFromJson(json);

  /// Connect the generated [_$ASProductsStylesToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASProductsStylesToJson(this);
}
