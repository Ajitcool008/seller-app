import 'package:appcheap_flutter_core/utils/app_localization.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/pages/product_add/bloc/product_add_bloc.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/cubit/add_ons_cubit.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/models/models.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/widgets/widgets.dart';
import 'package:flutter_store_manager/themes.dart';
import 'package:flutter_store_manager/types/types.dart';

import 'option_content.dart';

class AddOnsFieldItem extends StatelessWidget {
  /// Add-on field widget.
  const AddOnsFieldItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    TranslateType translate = AppLocalizations.of(context)!.translate;
    ThemeData theme = Theme.of(context);
    ProductAddBloc productAddBloc = context.read<ProductAddBloc>();

    return BlocBuilder<AddOnsCubit, AddOnsState>(
      buildWhen: (previous, current) => previous.addOnsType != current.addOnsType,
      builder: (context, state) {
        return Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: ExpansionView(
              title: BlocBuilder<AddOnsCubit, AddOnsState>(
                buildWhen: (previous, current) =>
                    previous.title != current.title || previous.addOnsType != current.addOnsType,
                builder: (context, state) {
                  return RichText(
                    text: TextSpan(
                      text: '${state.title}    ',
                      style: theme.textTheme.bodyMedium,
                      children: [
                        TextSpan(
                          text: '[${state.addOnsType.getName()}]',
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  );
                },
              ),
              expandedAlignment: AlignmentDirectional.topStart,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              childrenPadding: const EdgeInsets.only(top: 16, bottom: 8),
              isSecondary: true,
              initiallyExpanded: state.title.isEmpty,
              children: [
                AddOnsContainer(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: LabelInput(
                              title: translate(state.addOnsType.getName()),
                              isLarge: true,
                              padding: const EdgeInsets.only(top: 2),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _onDelete(context, translate, () {
                                productAddBloc.add(RemoveFieldAddOnsAt(index));
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: theme.textTheme.titleMedium?.color,
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
                          )
                        ],
                      ),
                    ),
                    const AddOnsTypeField(),
                    const SizedBox(
                      height: 15,
                    ),
                    _defineFieldFirst(state.addOnsType),
                    const AddOnsTitleField(),
                    const SizedBox(
                      height: 15,
                    ),
                    if (state.addOnsType != AddOnsType.heading)
                      const Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: FormatTitleField(),
                      ),
                    const AddOnsDescriptionField(),
                    const SizedBox(
                      height: 15,
                    ),
                    if (state.addOnsType != AddOnsType.heading)
                      const Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: RequiredField(),
                      ),
                    _defineLimitField(state.addOnsType),
                    _defineAdjustPriceField(state.addOnsType),
                    _defineAddOption(state.addOnsType),
                  ],
                )
              ],
            ));
      },
    );
  }

  Future<void> _onDelete(
    BuildContext context,
    TranslateType translate,
    Function() remove,
  ) async {
    String? value = await showDialog<String>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(translate('common:text_delete')),
          content: Text(translate('message:text_confirm_delete_add_on')),
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

  Widget _defineFieldFirst(AddOnsType type) {
    switch (type) {
      case AddOnsType.multiChoice:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: DisplayAsField(),
        );
      case AddOnsType.shortText:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: RestrictionTypeField(),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _defineLimitField(AddOnsType type) {
    switch (type) {
      case AddOnsType.shortText:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: LimitValueContent(),
        );
      case AddOnsType.longText:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: LimitValueContent(),
        );
      case AddOnsType.customerDefinePrice:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: LimitValueContent(),
        );
      case AddOnsType.quantity:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: LimitValueContent(),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _defineAdjustPriceField(AddOnsType type) {
    switch (type) {
      case AddOnsType.shortText:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: AdjustPriceContent(),
        );
      case AddOnsType.longText:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: AdjustPriceContent(),
        );
      case AddOnsType.fileUpload:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: AdjustPriceContent(),
        );
      case AddOnsType.quantity:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: AdjustPriceContent(),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _defineAddOption(AddOnsType type) {
    switch (type) {
      case AddOnsType.multiChoice:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: AddOnsOptionContent(),
        );
      case AddOnsType.checkBox:
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: AddOnsOptionContent(),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
