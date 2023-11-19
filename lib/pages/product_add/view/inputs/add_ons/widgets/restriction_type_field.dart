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

final List<Option> optionsRestriction = [
  Option(key: RestrictionTextType.anyText.getKey(), name: RestrictionTextType.anyText.getName()),
  Option(key: RestrictionTextType.onlyLetters.getKey(), name: RestrictionTextType.onlyLetters.getName()),
  Option(key: RestrictionTextType.onlyNumbers.getKey(), name: RestrictionTextType.onlyNumbers.getName()),
  Option(
    key: RestrictionTextType.onlyLettersAndNumbers.getKey(),
    name: RestrictionTextType.onlyLettersAndNumbers.getName(),
  ),
  Option(key: RestrictionTextType.onlyEmailAddress.getKey(), name: RestrictionTextType.onlyEmailAddress.getName()),
];

class RestrictionTypeField extends StatelessWidget {
  const RestrictionTypeField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;
    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) => previous.restrictionTextType != current.restrictionTextType,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelInput(title: translate('inputs:text_restriction')),
            InputDropdown2(
              value: AddOnsHelper.getOptionFromKey(
                key: state.restrictionTextType.getKey(),
                options: optionsRestriction,
              ),
              onChanged: (value) {
                addOnsCubit.changeRestrictType(value.key);
              },
              options: optionsRestriction,
            ),
          ],
        );
      },
    );
  }
}
