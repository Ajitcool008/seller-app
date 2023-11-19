// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Flutter library
import 'package:flutter/material.dart';

// Packages & Dependencies or Helper function
import 'package:flutter_bloc/flutter_bloc.dart';

// Repository packages
import 'package:google_place_repository/google_place_repository.dart';

// Bloc
import '../../../../bloc/store_setting_bloc.dart';

// View
import 'item_location.dart';

class PredictLocationResults extends StatelessWidget {
  const PredictLocationResults({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreSettingBloc, StoreSettingState>(
      builder: (context, state) {
        if (state.listPredictionLocation != null) {
          if (state.listPredictionLocation!.isNotEmpty) {
            return ListView.builder(
              itemBuilder: (context, index) {
                Prediction item = state.listPredictionLocation![index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ItemLocation(
                    title: item.structuredFormatting.mainText,
                    subTitle: item.structuredFormatting.secondaryText,
                    search: state.keywordLocation ?? '',
                    onTap: () {
                      context.read<StoreSettingBloc>().add(GetPlaceFromIdEvent(placeId: item.placeId));
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                  ),
                );
              },
              itemCount: state.listPredictionLocation!.length,
            );
          }
        }
        return Text(AppLocalizations.of(context)!.translate('setup:text_enter_your_address'));
      },
    );
  }
}
