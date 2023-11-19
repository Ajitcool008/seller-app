import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Utils
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';
import 'package:flutter_store_manager/types/types.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/cubit/add_ons_cubit.dart';

// Themes

class RequiredField extends StatelessWidget {
  const RequiredField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TranslateType translate = AppLocalizations.of(context)!.translate;
    ThemeData theme = Theme.of(context);
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) => previous.requiredField != current.requiredField,
      builder: (context, state) {
        return ListTile(
          title: Text(translate('inputs:text_required_field'), style: theme.textTheme.bodyMedium),
          contentPadding: EdgeInsets.zero,
          leading: CupertinoSwitch(
            value: state.requiredField,
            onChanged: (bool value) => addOnsCubit.changeRequiredValue(),
          ),
          horizontalTitleGap: 11,
          minLeadingWidth: 0,
        );
      },
    );
  }
}
