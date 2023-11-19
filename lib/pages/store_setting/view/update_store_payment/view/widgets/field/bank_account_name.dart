// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Flutter library
import 'package:flutter/material.dart';

// Packages & Dependencies or Helper function
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/types/types.dart';

// Bloc
import '../../../../../bloc/store_setting_bloc.dart';

// Themes
import 'package:flutter_store_manager/themes.dart';

class PaymentBankAcNameWidget extends StatelessWidget {
  PaymentBankAcNameWidget({Key? key}) : super(key: key);
  final _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    TranslateType translate = AppLocalizations.of(context)!.translate;
    return BlocBuilder<StoreSettingBloc, StoreSettingState>(
      buildWhen: (previous, current) => previous.bankAccountName != current.bankAccountName,
      builder: (context, state) {
        return InputTextField(
          focusNode: _focusNode,
          controller: TextEditingController(text: state.bankAccountName ?? "")
            ..selection = TextSelection.collapsed(offset: state.bankAccountName?.length ?? 0),
          label: translate('inputs:text_bank_account_name'),
          onChanged: (String value) {
            _focusNode.addListener(() {
              if (!_focusNode.hasFocus) {
                context.read<StoreSettingBloc>().add(PaymentBankAcNameChanged(value));
              }
            });
          },
        );
      },
    );
  }
}
