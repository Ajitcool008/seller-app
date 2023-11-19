import 'package:flutter/material.dart';

// Utils
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/cubit/add_ons_cubit.dart';

// Themes
import 'package:flutter_store_manager/themes.dart';

class AddOnsTitleField extends StatelessWidget {
  const AddOnsTitleField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) => previous.title != current.title,
      builder: (context, state) {
        return InputTextField(
          initialValue: state.title,
          label: AppLocalizations.of(context)!.translate('inputs:text_title_field'),
          onChanged: (name) => addOnsCubit.changeTitle(name),
        );
      },
    );
  }
}
