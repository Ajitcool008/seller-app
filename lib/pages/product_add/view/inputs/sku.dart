import 'package:flutter/material.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';
import '../../bloc/product_add_bloc.dart';

// Themes
import 'package:flutter_store_manager/themes.dart';

class ProductSku extends StatelessWidget {
  const ProductSku({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductAddBloc, ProductAddState>(
      builder: (context, state) {
        return InputTextField(
          label: AppLocalizations.of(context)!.translate('inputs:text_sku'),
          initialValue: state.sku.value,
          onChanged: (sku) => context.read<ProductAddBloc>().add(SkuChanged(sku)),
        );
      },
    );
  }
}
