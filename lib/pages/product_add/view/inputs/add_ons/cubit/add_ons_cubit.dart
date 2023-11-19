// App core

import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';
import 'package:dio/dio.dart' as dio;

// Packages & Dependencies or Helper function
import 'package:equatable/equatable.dart';
import 'package:flutter_store_manager/common/bloc/state_base.dart';
import 'package:flutter_store_manager/common/widgets/image/image.dart';
import 'package:flutter_store_manager/pages/product_add/view/inputs/add_ons/models/models.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:media_repository/media_repository.dart';
import 'package:products_repository/products_repository.dart';

//Repository packages

part 'add_ons_state.dart';

class AddOnsCubit extends Cubit<AddOnsState> {
  final RequestCancel _cancelToken = RequestCancel();
  final MediaRepository mediaRepository;
  final String token;
  final void Function(BaseState store)? onChanged;
  AddOnsCubit({
    this.onChanged,
    required this.mediaRepository,
    required this.token,
    Equatable? value,
  }) : super(value != null ? value as AddOnsState : const AddOnsState());

  /// Change add-ons type value
  void changeAddOnsType(dynamic addOnsType) {
    if (addOnsType is String) {
      emit(state.copyWith(addOnsType: AddOnsConverter.fromString(addOnsType)));
    }
    if (addOnsType is AddOnsType) {
      emit(state.copyWith(addOnsType: addOnsType));
    }
  }

  /// Change display type value when add-ons type is Multi Choice
  void changeDisplayType(dynamic displayType) {
    if (displayType is String) {
      emit(state.copyWith(multiChoiceDisplayType: DisplayTypeConverter.fromString(displayType)));
    }
    if (displayType is MultiChoiceDisplayType) {
      emit(state.copyWith(multiChoiceDisplayType: displayType));
    }
  }

  /// Change restriction type value when add-ons type is Short Text
  void changeRestrictType(dynamic restrictionType) {
    if (restrictionType is String) {
      emit(state.copyWith(restrictionTextType: RestrictionConverter.fromString(restrictionType)));
    }
    if (restrictionType is RestrictionTextType) {
      emit(state.copyWith(restrictionTextType: restrictionType));
    }
  }

  /// Change format title type value
  void changeFormatTitleType(dynamic formatTitle) {
    if (formatTitle is String) {
      emit(state.copyWith(formatTitle: FormatTitleConverter.fromString(formatTitle)));
    }
    if (formatTitle is FormatTitleType) {
      emit(state.copyWith(formatTitle: formatTitle));
    }
  }

  /// Change adjust price type value
  void changeAdjustPriceType(dynamic adjustPriceType) {
    if (adjustPriceType is String) {
      emit(state.copyWith(adjustPriceType: AdjustPriceTypeConverter.fromString(adjustPriceType)));
    }
    if (adjustPriceType is AdjustPriceType) {
      emit(state.copyWith(adjustPriceType: adjustPriceType));
    }
  }

  /// Change title add-ons.
  void changeTitle(String title) {
    emit(state.copyWith(title: title));
  }

  /// Change description add-ons.
  void changeDescription(String description) {
    emit(state.copyWith(description: description));
  }

  /// Change required field.
  void changeRequiredValue() {
    emit(state.copyWith(requiredField: !state.requiredField));
  }

  /// Change limit status.
  void changeLimitStatus() {
    emit(state.copyWith(enableLimitValue: !state.enableLimitValue));
  }

  /// Change min limit field.
  void changeMinLimit(String min) {
    emit(state.copyWith(minValue: min));
  }

  /// Change max limit field.
  void changeMaxLimit(String max) {
    emit(state.copyWith(maxValue: max));
  }

  /// Change adjust price status.
  void changeAdjustPriceStatus() {
    emit(state.copyWith(enableAdjustPrice: !state.enableAdjustPrice));
  }

  /// Change adjust price value field.
  void changeAdjustPriceValue(String adjustPrice) {
    emit(state.copyWith(adjustPriceValue: adjustPrice));
  }

  /// Add option Add-on.
  void addOptionAddOns(OptionAddOns optionAddOns) {
    List<OptionAddOns> options = [...state.optionAddOns];
    options.add(optionAddOns);
    emit(state.copyWith(optionAddOns: options));
  }

  /// Update option Add-on.
  void updateAddOnOptionAt({
    String? name,
    AdjustPriceType? priceType,
    String? priceValue,
    ImageData? image,
    required int index,
    bool deleteImage = false,
  }) {
    List<OptionAddOns> options = [...state.optionAddOns];
    OptionAddOns oldOption = state.optionAddOns.elementAt(index);
    OptionAddOns newOption = OptionAddOns(
      name: name ?? oldOption.name,
      priceType: priceType ?? oldOption.priceType,
      priceValue: priceValue ?? oldOption.priceValue,
      image: (deleteImage) ? null : ((image != null) ? image : oldOption.image),
    );
    options.replaceRange(index, index + 1, [newOption]);
    emit(state.copyWith(optionAddOns: options));
  }

  /// Delete option Add-on.
  void deleteOptionAddOns(int index) {
    List<OptionAddOns> options = [...state.optionAddOns];
    options.removeAt(index);
    emit(state.copyWith(optionAddOns: options));
  }

  /// Get Image Option.
  Future<void> getImageOption(int index) async {
    if (state.optionAddOns[index].image?.image?.id != null) {
      if (state.optionAddOns[index].image?.image?.src == null) {
        Media media = await mediaRepository.getMediaById(
          id: state.optionAddOns[index].image!.image!.id.toString(),
        );
        updateAddOnOptionAt(
          index: index,
          image: ImageData(
            type: ImageDataType.image,
            image: ImageLink(
              id: media.id,
              src: media.url,
            ),
          ),
        );
      }
    }
  }

  Future<void> imageOptionChanged(int index, ImageData? imageData) async {
    if (imageData?.file != null && imageData?.file?.path != null) {
      String path = imageData!.file!.path;
      dio.FormData formData = dio.FormData.fromMap({
        'file': await dio.MultipartFile.fromFile(
          path,
          filename: path.split('/').last,
        ),
      });

      Media image = await mediaRepository.postMedia(
          requestData: RequestData(
            data: formData,
            token: token,
            query: {'app-builder-decode': true},
          ),);
      updateAddOnOptionAt(
        index: index,
        image: ImageData(
          type: ImageDataType.image,
          image: ImageLink(
            id: image.id,
            src: image.url,
          ),
        ),
      );
    }else if(imageData != null){
      updateAddOnOptionAt(
        index: index,
        image: imageData,
      );
    }
  }

  @override
  void onChange(Change<AddOnsState> change) {
    super.onChange(change);
    if (onChanged != null) {
      onChanged!(change.nextState);
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
