import 'package:flutter/material.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/cubit/add_ons_cubit.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/helper/helper.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/models/models.dart';
import 'package:flutter_store_manager/types/types.dart';
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';
// Themes
import 'package:flutter_store_manager/themes.dart';

final List<Option> options = [
  Option(key: AddOnsType.multiChoice.getKey(), name: AddOnsType.multiChoice.getName()),
  Option(key: AddOnsType.checkBox.getKey(), name: AddOnsType.checkBox.getName()),
  Option(key: AddOnsType.shortText.getKey(), name: AddOnsType.shortText.getName()),
  Option(key: AddOnsType.longText.getKey(), name: AddOnsType.longText.getName()),
  Option(key: AddOnsType.fileUpload.getKey(), name: AddOnsType.fileUpload.getName()),
  Option(key: AddOnsType.quantity.getKey(), name: AddOnsType.quantity.getName()),
  Option(key: AddOnsType.heading.getKey(), name: AddOnsType.heading.getName()),
  Option(key: AddOnsType.customerDefinePrice.getKey(), name: AddOnsType.customerDefinePrice.getName()),
];

class AddOnsTypeField extends StatelessWidget {
  const AddOnsTypeField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;
    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) => previous.addOnsType != current.addOnsType,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelInput(title: translate('inputs:text_type')),
            InputDropdown2(
              value: AddOnsHelper.getOptionFromKey(
                key: state.addOnsType.getKey(),
                options: options,
              ),
              onChanged: (value) {
                addOnsCubit.changeAddOnsType(value.key);
              },
              options: options,
            ),
          ],
        );
      },
    );
  }
}
