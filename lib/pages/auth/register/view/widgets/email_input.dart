// Themes & UI
import 'package:flutter/material.dart';

import 'package:flutter_store_manager/themes.dart';
import 'package:community_material_icon/community_material_icon.dart';

// Localization
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/pages/auth/register/bloc/register_bloc.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return InputTextField(
          label: AppLocalizations.of(context)!.translate('inputs:text_email'),
          onChanged: (email) => context.read<RegisterBloc>().add(EmailChanged(email)),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            errorText: state.email.invalid ? AppLocalizations.of(context)!.translate('validate:text_email') : null,
            prefixIcon: Icon(
              CommunityMaterialIcons.email,
              size: 20,
              color: Theme.of(context).textTheme.labelSmall?.color,
            ),
          ),
        );
      },
    );
  }
}
