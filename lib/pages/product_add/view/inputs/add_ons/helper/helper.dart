import 'package:flutter_store_manager/common/widgets/image/image.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/cubit/add_ons_cubit.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/models/models.dart';
import 'package:flutter_store_manager/themes.dart';
import 'package:products_repository/products_repository.dart';

class AddOnsHelper{
  static Option getOptionFromKey({required String key,required List<Option> options,}){
    Option select = options.firstWhere((o) => key == o.key);
    return select;
  }

  static AddOnsState toAddOnsState(ProductAddOnModel addOns) {
    return AddOnsState(
        addOnsType: AddOnsConverter.fromString(addOns.type ?? ''),
        title: addOns.name ?? '',
        formatTitle: FormatTitleConverter.fromString(addOns.titleFormat ?? ''),
        multiChoiceDisplayType: DisplayTypeConverter.fromString(addOns.display ?? ''),
        description: addOns.description ?? '',
        requiredField: (addOns.required != null) ? ((addOns.required == 0) ? false : true) : false,
        enableLimitValue: (addOns.restrictions != null) ? ((addOns.restrictions == 0) ? false : true) : false,
        minValue: (addOns.min != null) ? addOns.min!.toString() : '',
        maxValue: (addOns.max != null) ? addOns.max!.toString() : '',
        enableAdjustPrice: (addOns.adjustPrice != null) ? ((addOns.adjustPrice == 0) ? false : true) : false,
        adjustPriceType: AdjustPriceTypeConverter.fromString(addOns.priceType ?? ''),
        adjustPriceValue: addOns.price ?? '',
        restrictionTextType: RestrictionConverter.fromString(addOns.restrictionsType ?? ''),
        optionAddOns: (addOns.options != null)
            ? addOns.options!
            .map(
              (e) => OptionAddOns(
            image: (e.image != null)
                ? ImageData(type: ImageDataType.image, image: ImageLink(
              id: int.tryParse(e.image ?? ''),
            ))
                : null,
            name: e.label ?? '',
            priceType: AdjustPriceTypeConverter.fromString(e.priceType ?? ''),
            priceValue: e.price ?? '',
          ),
        )
            .toList()
            : [const OptionAddOns()]);
  }
}