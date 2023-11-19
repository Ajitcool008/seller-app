import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/authentication/bloc/authentication_bloc.dart';
import 'package:flutter_store_manager/common/bloc/state_base.dart';
import 'package:flutter_store_manager/pages/product_add/bloc/product_add_bloc.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/cubit/add_ons_cubit.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/helper/helper.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/widgets/widgets.dart';
import 'package:flutter_store_manager/themes.dart';
import 'package:flutter_store_manager/types/types.dart';
import 'package:media_repository/media_repository.dart';
import 'package:provider/provider.dart';

class ProductAddOnsBody extends StatelessWidget {
  const ProductAddOnsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TranslateType translate = AppLocalizations.of(context)!.translate;
    ProductAddBloc productAddBloc = context.read<ProductAddBloc>();

    return ExpansionView(
      title: Text(translate('Add-Ons')),
      expandedAlignment: AlignmentDirectional.topStart,
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      childrenPadding: const EdgeInsets.only(top: 16, bottom: 8),
      isSecondary: true,
      children: [
        AddOnsContainer(
          children: [
            BlocBuilder<ProductAddBloc, ProductAddState>(
              buildWhen: (previous, current) => previous.productAddOns.length != current.productAddOns.length,
              builder: (context, state) {
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                    state.productAddOns.length,
                    (index) => Provider(
                      key: UniqueKey(),
                      create: (context) => AddOnsCubit(
                        mediaRepository: MediaRepository(context.read<HttpClient>()),
                        value: AddOnsHelper.toAddOnsState(state.productAddOns[index]),
                        token: context.read<AuthenticationBloc>().state.token,
                        onChanged: (store) {
                          productAddBloc.add(
                            UpdateAddOnsStorage(
                              index: index,
                              productAddOnModel: (store as AddOnsState).toProductAddOnsModel(),
                            ),
                          );
                        },
                      ),
                      child: AddOnsFieldItem(
                        index: index,
                      ),
                    ),
                  ).toList(),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15, top: 30),
              child: ButtonAddAddOns(),
            ),
          ],
        )
      ],
    );
  }
}

class ButtonAddAddOns extends StatelessWidget with SnackMixin, LoadingMixin {
  const ButtonAddAddOns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TranslateType translate = AppLocalizations.of(context)!.translate;
    ProductAddBloc productAddBloc = context.read<ProductAddBloc>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              productAddBloc.add(const AddFieldAddOns());
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: theme.textTheme.titleMedium?.color,
              backgroundColor: theme.colorScheme.surface,
              minimumSize: const Size(0, 41),
              textStyle: theme.textTheme.labelLarge?.copyWith(fontSize: 14),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Text(translate('inputs:text_add_field')),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: BlocConsumer<ProductAddBloc, ProductAddState>(
            listenWhen: (previous, current) => previous.saveAddOnsState != current.saveAddOnsState,
            listener: (context, state) {
              if (state.saveAddOnsState is ErrorState) {
                showError(
                  context,
                  AppLocalizations.of(context)!.translate((state.saveAddOnsState as ErrorState).data),
                );
              } else if (state.saveAddOnsState is LoadedState) {
                showSuccess(context, AppLocalizations.of(context)!.translate('message:text_save_add_on_success'));
              }
            },
            buildWhen: (previous, current) => previous.saveAddOnsState != current.saveAddOnsState,
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () {
                  productAddBloc.add(const SaveAddOns());
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(0, 41),
                  textStyle: theme.textTheme.labelLarge?.copyWith(fontSize: 14),
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child:
                    (state.saveAddOnsState is LoadingState) ? buildLoadingElevated() : Text(translate('Save Add-ons')),
              );
            },
          ),
        ),
      ],
    );
  }
}
