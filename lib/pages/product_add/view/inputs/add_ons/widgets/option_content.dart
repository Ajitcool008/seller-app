import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/common/widgets/image/model/image_data.dart';
import 'package:flutter_store_manager/common/widgets/image/view/image_picker_input.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/cubit/add_ons_cubit.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/helper/helper.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/models/models.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/widgets/add_ons_container.dart';
import 'package:flutter_store_manager/themes.dart';
import 'package:flutter_store_manager/types/types.dart';

class AddOnsOptionContent extends StatelessWidget {
  const AddOnsOptionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TranslateType translate = AppLocalizations.of(context)!.translate;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelInput(
          title: translate('inputs:text_option'),
        ),
        BlocBuilder<AddOnsCubit, AddOnsState>(
          buildWhen: (previous, current) => previous.optionAddOns.length != current.optionAddOns.length,
          builder: (context, state) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.optionAddOns.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OptionAddOnItem(
                      key: ObjectKey(state.optionAddOns.elementAt(index)),
                      index: index,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
            );
          },
        ),
        const ButtonAddOption(),
      ],
    );
  }
}

final List<Option> optionsPriceType = [
  Option(key: AdjustPriceType.flatFee.getKey(), name: AdjustPriceType.flatFee.getName()),
  Option(key: AdjustPriceType.quantityBased.getKey(), name: AdjustPriceType.quantityBased.getName()),
  Option(key: AdjustPriceType.percentageBased.getKey(), name: AdjustPriceType.percentageBased.getName()),
];

class OptionAddOnItem extends StatelessWidget {
  final int index;
  const OptionAddOnItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  Future<void> _onDelete(BuildContext context, TranslateType translate, Function() remove) async {
    String? value = await showDialog<String>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(translate('common:text_delete')),
          content: Text(translate('message:text_confirm_delete_option')),
          actions: <Widget>[
            TextButton(onPressed: () => Navigator.pop(context), child: Text(translate('common:text_cancel'))),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: Text(translate('common:text_ok')),
            ),
          ],
        );
      },
    );
    if (value == 'OK') {
      remove();
    }
  }

  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();
    TranslateType translate = AppLocalizations.of(context)!.translate;
    ThemeData theme = Theme.of(context);

    return AddOnsContainer(
      children: [
        BlocBuilder<AddOnsCubit, AddOnsState>(
          buildWhen: (previous, current) => previous.optionAddOns.length != current.optionAddOns.length,
          builder: (context, state) {
            return Align(
              alignment: AlignmentDirectional.centerEnd,
              child: ElevatedButton(
                onPressed: () {
                  if (state.optionAddOns.length > 1) {
                    _onDelete(context, translate, () {
                      addOnsCubit.deleteOptionAddOns(index);
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: (state.optionAddOns.length <= 1)
                      ? theme.textTheme.titleMedium?.color?.withOpacity(0.5)
                      : theme.textTheme.titleMedium?.color,
                  backgroundColor: theme.colorScheme.surface,
                  textStyle: theme.textTheme.labelSmall,
                  minimumSize: const Size(0, 29),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(CommunityMaterialIcons.trash_can_outline, size: 16),
                    const SizedBox(width: 8),
                    Text(translate('common:text_delete')),
                  ],
                ),
              ),
            );
          },
        ),
        OptionAddOnImage(index: index),
        BlocBuilder<AddOnsCubit, AddOnsState>(
          buildWhen: (previous, current) {
            if (index < current.optionAddOns.length) {
              return previous.optionAddOns[index].name != current.optionAddOns[index].name;
            }
            return false;
          },
          builder: (context, state) {
            return InputTextField(
              initialValue: state.optionAddOns[index].name,
              label: AppLocalizations.of(context)!.translate('inputs:text_enter_an_option'),
              onChanged: (name) {
                addOnsCubit.updateAddOnOptionAt(
                  name: name,
                  index: index,
                );
              },
            );
          },
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            Expanded(
              child: BlocBuilder<AddOnsCubit, AddOnsState>(
                buildWhen: (previous, current) {
                  if (index < current.optionAddOns.length) {
                    return previous.optionAddOns[index].priceType != current.optionAddOns[index].priceType;
                  }
                  return false;
                },
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelInput(title: translate('inputs:text_type')),
                      InputDropdown2(
                        value: AddOnsHelper.getOptionFromKey(
                          key: state.optionAddOns[index].priceType.getKey(),
                          options: optionsPriceType,
                        ),
                        onChanged: (value) {
                          addOnsCubit.updateAddOnOptionAt(
                            priceType: AdjustPriceTypeConverter.fromString(value.key),
                            index: index,
                          );
                        },
                        options: optionsPriceType,
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: BlocBuilder<AddOnsCubit, AddOnsState>(
                buildWhen: (previous, current) {
                  if (index < current.optionAddOns.length) {
                    return previous.optionAddOns[index].priceValue != current.optionAddOns[index].priceValue;
                  }
                  return false;
                },
                builder: (context, state) {
                  return InputTextField(
                    keyboardType: TextInputType.number,
                    initialValue:
                        state.optionAddOns[index].priceValue.isNotEmpty ? state.optionAddOns[index].priceValue : '0.00',
                    label: 'Value',
                    onChanged: (fee) => addOnsCubit.updateAddOnOptionAt(
                      priceValue: fee,
                      index: index,
                    ),
                    decoration: InputDecoration(
                      errorText: (state.optionAddOns[index].priceValue.isNotEmpty &&
                              double.tryParse(state.optionAddOns[index].priceValue) == null)
                          ? 'Value must be a number'
                          : null,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class OptionAddOnImage extends StatefulWidget {
  const OptionAddOnImage({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  State<OptionAddOnImage> createState() => _OptionAddOnImageState();
}

class _OptionAddOnImageState extends State<OptionAddOnImage> {
  late AddOnsCubit _addOnsCubit;

  @override
  void initState() {
    _addOnsCubit = context.read<AddOnsCubit>();
    _addOnsCubit.getImageOption(widget.index);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();

    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) {
        if(widget.index < current.optionAddOns.length){
          return previous.optionAddOns[widget.index].image != current.optionAddOns[widget.index].image ||
              previous.addOnsType != current.addOnsType ||
              previous.multiChoiceDisplayType != current.multiChoiceDisplayType;
        }
        return false;
      },
      builder: (context, state) {
        if (state.addOnsType != AddOnsType.multiChoice ||
            state.multiChoiceDisplayType != MultiChoiceDisplayType.image) {
          return const SizedBox.shrink();
        }
        // Just show when type is multi choice and display value is image
        return Column(
          children: [
            ImagePickerInput(
              label: AppLocalizations.of(context)!.translate('inputs:text_image_variation'),
              onChanged: (ImageData i) {
                addOnsCubit.imageOptionChanged(widget.index, i);
              },
              onDeleted: () {
                addOnsCubit.updateAddOnOptionAt(
                  index: widget.index,
                  deleteImage: true,
                );
              },
              value: (state.optionAddOns[widget.index].image?.image?.src != null) ?
              state.optionAddOns[widget.index].image : null,
            ),
            const SizedBox(height: 15,)
          ],
        );
      },
    );
  }
}

class ButtonAddOption extends StatelessWidget {
  const ButtonAddOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TranslateType translate = AppLocalizations.of(context)!.translate;
    AddOnsCubit addOnsCubit = context.read<AddOnsCubit>();

    return ElevatedButton(
      onPressed: () {
        addOnsCubit.addOptionAddOns(const OptionAddOns());
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: theme.textTheme.titleMedium?.color,
        backgroundColor: theme.colorScheme.surface,
        minimumSize: const Size(100, 41),
        textStyle: theme.textTheme.labelLarge?.copyWith(fontSize: 14),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(translate('inputs:text_add_option')),
    );
  }
}
