// Themes & UI
import 'package:ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

// Localization

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:example/screens/register/bloc/register_bloc.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return InputTextField(
          label: "Email",
          onChanged: (email) => context.read<RegisterBloc>().add(EmailChanged(email)),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            errorText: state.email.invalid ? "Invalid Email" : null,
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
