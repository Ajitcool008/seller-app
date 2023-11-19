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

final List<Option> optionsFormatTitle = [
  Option(key: FormatTitleType.label.getKey(), name: FormatTitleType.label.getName()),
  Option(key: FormatTitleType.heading.getKey(), name: FormatTitleType.heading.getName()),
  Option(key: FormatTitleType.hide.getKey(), name: FormatTitleType.hide.getName()),
];

class FormatTitleField extends StatelessWidget {
  const FormatTitleField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;
    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) => previous.formatTitle != current.formatTitle,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelInput(title: translate('inputs:text_format_title')),
            InputDropdown2(
              value: AddOnsHelper.getOptionFromKey(
                key: state.formatTitle.getKey(),
                options: optionsFormatTitle,
              ),
              onChanged: (value) {
                addOnsCubit.changeFormatTitleType(value.key);
              },
              options: optionsFormatTitle,
            ),
          ],
        );
      },
    );
  }
}
