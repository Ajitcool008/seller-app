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

final List<Option> optionsDisplayAs = [
  Option(key: MultiChoiceDisplayType.dropdown.getKey(), name: MultiChoiceDisplayType.dropdown.getName()),
  Option(key: MultiChoiceDisplayType.radioButton.getKey(), name: MultiChoiceDisplayType.radioButton.getName()),
  Option(key: MultiChoiceDisplayType.image.getKey(), name: MultiChoiceDisplayType.image.getName()),
];

class DisplayAsField extends StatelessWidget {
  const DisplayAsField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;
    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) => previous.multiChoiceDisplayType != current.multiChoiceDisplayType,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelInput(title: translate('inputs:text_display_as')),
            InputDropdown2(
              value: AddOnsHelper.getOptionFromKey(
                key: state.multiChoiceDisplayType.getKey(),
                options: optionsDisplayAs,
              ),
              onChanged: (value) {
                addOnsCubit.changeDisplayType(value.key);
              },
              options: optionsDisplayAs,
            ),
          ],
        );
      },
    );
  }
}
