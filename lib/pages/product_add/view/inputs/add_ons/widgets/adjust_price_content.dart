import 'package:appcheap_flutter_core/utils/app_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Utils
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/models/models.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/widgets/add_ons_container.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/cubit/add_ons_cubit.dart';
import 'package:flutter_store_manager/themes.dart';
import 'package:flutter_store_manager/types/types.dart';

import '../helper/helper.dart';

// Themes

class AdjustPriceContent extends StatelessWidget {
  const AdjustPriceContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;

    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) => previous.enableAdjustPrice != current.enableAdjustPrice,
      builder: (context, state) {
        return Column(
          children: [
            ListTile(
              title: Text(translate('inputs:text_adjust_price'), style: theme.textTheme.bodyMedium),
              contentPadding: EdgeInsets.zero,
              leading: CupertinoSwitch(
                value: state.enableAdjustPrice,
                onChanged: (bool value) => addOnsCubit.changeAdjustPriceStatus(),
              ),
              horizontalTitleGap: 11,
              minLeadingWidth: 0,
            ),
            if (state.enableAdjustPrice)
              const AddOnsContainer(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        child: FeeTypeField(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(flex: 2, child: FeeValueField()),
                    ],
                  )
                ],
              ),
          ],
        );
      },
    );
  }
}

final List<Option> optionsAdjustPrice = [
  Option(key: AdjustPriceType.flatFee.getKey(), name: AdjustPriceType.flatFee.getName()),
  Option(key: AdjustPriceType.quantityBased.getKey(), name: AdjustPriceType.quantityBased.getName()),
  Option(key: AdjustPriceType.percentageBased.getKey(), name: AdjustPriceType.percentageBased.getName()),
];

class FeeTypeField extends StatelessWidget {
  const FeeTypeField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;
    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) => previous.adjustPriceType != current.adjustPriceType,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelInput(title: translate('inputs:text_type')),
            InputDropdown2(
              value: AddOnsHelper.getOptionFromKey(
                key: state.adjustPriceType.getKey(),
                options: optionsAdjustPrice,
              ),
              onChanged: (value) {
                addOnsCubit.changeAdjustPriceType(value.key);
              },
              options: optionsAdjustPrice,
            ),
          ],
        );
      },
    );
  }
}

class FeeValueField extends StatelessWidget {
  const FeeValueField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    return BlocConsumer<AddOnsCubit, AddOnsState>(
      listenWhen: (previous, current) => previous.adjustPriceType != current.adjustPriceType,
      listener: (context, state) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      buildWhen: (previous, current) => previous.adjustPriceValue != current.adjustPriceValue,
      builder: (context, state) {
        return InputTextField(
          keyboardType: TextInputType.number,
          initialValue: state.adjustPriceValue.isNotEmpty ? state.adjustPriceValue : '0.00',
          label: 'Value',
          onChanged: (fee) => addOnsCubit.changeAdjustPriceValue(fee),
          decoration: InputDecoration(
            errorText: (state.adjustPriceValue.isNotEmpty && double.tryParse(state.adjustPriceValue) == null)
                ? 'Value must be a number'
                : null,
          ),
        );
      },
    );
  }
}
