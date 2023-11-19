import 'package:appcheap_flutter_core/utils/app_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Utils
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/models/add_ons_type.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/widgets/add_ons_container.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/cubit/add_ons_cubit.dart';
import 'package:flutter_store_manager/types/types.dart';
import 'package:ui/widgets/input/input_text_field.dart';

// Themes

class LimitValueContent extends StatelessWidget {
  const LimitValueContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;

    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) =>
          previous.enableLimitValue != current.enableLimitValue || previous.addOnsType != current.addOnsType,
      builder: (context, state) {
        return Column(
          children: [
            ListTile(
              title: Text(_defineLabel(state.addOnsType, translate), style: theme.textTheme.bodyMedium),
              contentPadding: EdgeInsets.zero,
              leading: CupertinoSwitch(
                value: state.enableLimitValue,
                onChanged: (bool value) => addOnsCubit.changeLimitStatus(),
              ),
              horizontalTitleGap: 11,
              minLeadingWidth: 0,
            ),
            if (state.enableLimitValue)
              const AddOnsContainer(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: MinCharacterField()),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(child: MaxCharacterField()),
                    ],
                  )
                ],
              ),
          ],
        );
      },
    );
  }

  String _defineLabel(AddOnsType type, TranslateType translate) {
    switch (type) {
      case AddOnsType.quantity:
        return translate('inputs:text_limit_quantity_range');
      case AddOnsType.customerDefinePrice:
        return translate('inputs:text_limit_price');
      default:
        return translate('inputs:text_character_length');
    }
  }
}

class MinCharacterField extends StatelessWidget {
  const MinCharacterField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;

    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) =>
          previous.minValue != current.minValue || previous.addOnsType != current.addOnsType,
      builder: (context, state) {
        return InputTextField(
          keyboardType: TextInputType.number,
          initialValue: state.minValue.isNotEmpty ? state.minValue : '0',
          label: _defineLabel(state.addOnsType, translate),
          onChanged: (min) => addOnsCubit.changeMinLimit(min),
          decoration: InputDecoration(
            errorText: (state.minValue.isNotEmpty && int.tryParse(state.minValue) == null)
                ? translate('validate:text_num_must_integer')
                : null,
          ),
        );
      },
    );
  }

  String _defineLabel(AddOnsType type, TranslateType translate) {
    switch (type) {
      case AddOnsType.quantity:
        return translate('inputs:text_min_quantity');
      case AddOnsType.customerDefinePrice:
        return translate('inputs:text_min_price');
      default:
        return translate('inputs:text_min_length');
    }
  }
}

class MaxCharacterField extends StatelessWidget {
  const MaxCharacterField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;

    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) =>
          previous.maxValue != current.maxValue || previous.addOnsType != current.addOnsType,
      builder: (context, state) {
        return InputTextField(
          keyboardType: TextInputType.number,
          initialValue: state.maxValue,
          label: _defineLabel(state.addOnsType, translate),
          onChanged: (max) => addOnsCubit.changeMaxLimit(max),
          decoration: InputDecoration(
              errorText: (state.maxValue.isNotEmpty && int.tryParse(state.maxValue) == null)
                  ? translate('validate:text_num_must_integer')
                  : null,
              hintText: translate('inputs:text_unlimited')),
        );
      },
    );
  }

  String _defineLabel(AddOnsType type, TranslateType translate) {
    switch (type) {
      case AddOnsType.quantity:
        return translate('inputs:text_max_quantity');
      case AddOnsType.customerDefinePrice:
        return translate('inputs:text_max_price');
      default:
        return translate('inputs:text_max_length');
    }
  }
}
