import 'package:flutter_store_manager/common/widgets/image/model/image_data.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/models/models.dart';

class OptionAddOns {
  final String name;
  final AdjustPriceType priceType;
  final String priceValue;
  final ImageData? image;

  const OptionAddOns({
    this.name = '',
    this.priceType = AdjustPriceType.flatFee,
    this.priceValue = '',
    this.image
  });
}
