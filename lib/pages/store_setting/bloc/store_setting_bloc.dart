// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Packages & Dependencies or Helper function
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_store_manager/common/bloc/state_base.dart';
import 'package:flutter_store_manager/common/widgets/image/image.dart';
import 'package:formz/formz.dart';

// Repository packages
import 'package:store_setting_repository/store_setting_repository.dart';
import 'package:google_place_repository/google_place_repository.dart';

//Models
import 'package:flutter_store_manager/pages/product_add/models/image.dart';

part 'store_setting_event.dart';
part 'store_setting_state.dart';

//enum
enum PickerKeyStoreSetting { storeLogo, storeBanner, storeMobileBanner, facebookImg, twitterImg }

class StoreSettingBloc extends Bloc<StoreSettingEvent, StoreSettingState> {
  final StoreSettingRepository storeSettingRepository;
  final String token;
  Map multiStepData = <String, dynamic>{};
  final RequestCancel _cancelToken = RequestCancel();
  final void Function(BaseState store)? onChanged;
  final GooglePlaceRepository googlePlaceRepository;
  final String? storeNameInit;
  final String? storeEmailInit;

  StoreSettingBloc({
    required this.storeSettingRepository,
    required this.googlePlaceRepository,
    required this.token,
    this.onChanged,
    this.storeNameInit,
    this.storeEmailInit,
    Equatable? value,
  }) : super(value != null ? value as StoreSettingState : const StoreSettingState()) {
    on<GetStoreSettingEvent>(_onGetStoreSetting);
    on<SubmitMultiStepEvent>(_onSubmitMultiStep);

    //general setting
    on<StoreNameChanged>(_onStoreNameChanged);
    on<StoreEmailChanged>(_onStoreEmailChanged);
    on<StoreDescriptionChanged>(_onStoreDescriptionChanged);
    on<StorePhoneChanged>(_onStorePhoneChanged);

    //image
    on<StoreLogoChangedEvent>(_onStoreLogoChanged);
    on<StoreLogoDeletedEvent>(_onStoreLogoDeleted);
    on<StoreBannerChangedEvent>(_onStoreBannerChanged);
    on<StoreBannerDeletedEvent>(_onStoreBannerDeleted);
    on<StoreMobileBannerChangedEvent>(_onStoreMobileBannerChanged);
    on<StoreMobileBannerDeletedEvent>(_onStoreMobileBannerDeleted);
    on<FacebookImgChangedEvent>(_onFacebookImgChanged);
    on<FacebookImgDeletedEvent>(_onFacebookImgDeleted);
    on<TwitterImgChangedEvent>(_onTwitterImgChanged);
    on<TwitterImgDeletedEvent>(_onTwitterImgDeleted);

    //update payment
    on<PaymentMethodChanged>(_onMethodChanged);
    on<PaymentEmailPaypalChanged>(_onEmailPaypalChanged);
    on<PaymentBankAcNameChanged>(_onBankAcNameChanged);
    on<PaymentBankAcNumChanged>(_onBankAcNumChanged);
    on<PaymentBankNameChanged>(_onBankNameChanged);
    on<PaymentStateChanged>(_onBankStateChanged);
    on<PaymentBankRoutingNumChanged>(_onBankRoutingNumChanged);
    on<PaymentBankIbanChanged>(_onBankIbanChanged);
    on<PaymentBankSwiftCodeChanged>(_onBankSwiftCodeChanged);
    on<PaymentBankIfscCodeChanged>(_onBankIfscCodeChanged);
    on<UpdatePaymentMethod>(_onUpdatePaymentSubmit);

    //1.setup store
    on<SearchLocationChangedEvent>(_onSearchLocationChanged);
    on<GetPlaceFromIdEvent>(_onGetPlaceFromId);
    on<UpdateUserLocationEvent>(_updateUserLocation);
    on<SubmitStep1Event>(_onSubmitStep1);

    //2.Setup Payment
    on<SubmitStep2Event>(_onSubmitStep2);

    //3.Policy
    on<TabPolicyChanged>(_onTabPolicyChanged);
    on<ShippingPolicyChanged>(_onShippingPolicyChanged);
    on<RefundPolicyChanged>(_onRefundPolicyChanged);
    on<CancelPolicyChanged>(_onCancelPolicyChanged);
    on<SubmitStep3Event>(_onSubmitStep3);

    //4.Support
    on<SupportPhoneChanged>(_onSupportPhoneChanged);
    on<SupportEmailChanged>(_onSupportEmailChanged);
    on<SubmitStep4Event>(_onSubmitStep4);

    //5.Seo
    on<SeoTitleChanged>(_onSeoTitleChange);
    on<SeoDesChanged>(_onMetaDesChange);
    on<MetaKeyChanged>(_onMetaKeyChange);
    on<FacebookTitleChanged>(_onFacebookTitleChange);
    on<FacebookDesChanged>(_onFacebookDesChange);
    on<TwitterTitleChanged>(_onTwitterTitleChange);
    on<TwitterDesChanged>(_onTwitterDesChange);
    on<SubmitStep5Event>(_onSubmitStep5);

    //6.Social
    on<TwitterLinkChanged>(_onTwitterLinkChange);
    on<FacebookLinkChanged>(_onFacebookLinkChange);
    on<InstaLinkChanged>(_onInstaLinkChange);
    on<YoutubeLinkChanged>(_onYoutubeLinkChange);
    on<LikedinLinkChanged>(_onLikedinLinkChange);
    on<GoogleLinkChanged>(_onGoogleLinkChange);
    on<SnapLinkChanged>(_onSnapLinkChange);
    on<PinterLinkChanged>(_onPinterLinkChange);
    on<SubmitStep6Event>(_onSubmitStep6);
  }

  void _initStoreSetting({required Emitter<StoreSettingState> emit, required StoreModel storeModel}) {
    emit(state.copyWith(
      storeSetting: storeModel,
      storeName: StoreName.pure(storeModel.storeName ?? (storeNameInit ?? "")),
      storeEmail: StoreEmail.pure(storeModel.storeEmail ?? (storeEmailInit ?? "")),
      storePhone: storeModel.phone ?? "",
      storeDescription: storeModel.shopDescription ?? "",
      paymentMethod: storeModel.payment?.method ?? "paypal",
      emailPaypal: storeModel.payment?.paypal?.email ?? "",
      bankAccountName: storeModel.payment?.bank?.acName ?? "",
      bankAccountNumber: storeModel.payment?.bank?.acNumber ?? "",
      bankName: storeModel.payment?.bank?.bankName ?? "",
      bankState: storeModel.payment?.bank?.bankAddr ?? "",
      routingNum: storeModel.payment?.bank?.routingNumber ?? "",
      iBAN: storeModel.payment?.bank?.iban ?? "",
      swiftCode: storeModel.payment?.bank?.swift ?? "",
      ifscCode: storeModel.payment?.bank?.ifsc ?? "",
      storeLogoImage: (storeModel.gravatarSrc != null)
          ? Image.dirty(ImageData(
              type: ImageDataType.image,
              image: ImageLink(id: ConvertData.stringToInt(storeModel.gravatar), src: storeModel.gravatarSrc)))
          : const Image.pure(),
      storeBannerImage: (storeModel.bannerSrc != null)
          ? Image.dirty(ImageData(
              type: ImageDataType.image,
              image: ImageLink(id: ConvertData.stringToInt(storeModel.banner), src: storeModel.bannerSrc)))
          : const Image.pure(),
      storeMobileBannerImage: (storeModel.mobileBannerSrc != null)
          ? Image.dirty(ImageData(
              type: ImageDataType.image,
              image: ImageLink(id: ConvertData.stringToInt(storeModel.mobileBanner), src: storeModel.mobileBannerSrc)))
          : const Image.pure(),
      facebookImage: (storeModel.storeSeo?.wcfmmpSeoOgImageSrc != null)
          ? Image.dirty(ImageData(
              type: ImageDataType.image,
              image: ImageLink(
                  id: ConvertData.stringToInt(storeModel.storeSeo?.wcfmmpSeoOgImage),
                  src: storeModel.storeSeo?.wcfmmpSeoOgImageSrc)))
          : const Image.pure(),
      twitterImage: (storeModel.storeSeo?.wcfmmpSeoTwitterImageSrc != null)
          ? Image.dirty(ImageData(
              type: ImageDataType.image,
              image: ImageLink(
                  id: ConvertData.stringToInt(storeModel.storeSeo?.wcfmmpSeoTwitterImage),
                  src: storeModel.storeSeo?.wcfmmpSeoTwitterImageSrc)))
          : const Image.pure(),
      storeAddress1: storeModel.address?.street1 ?? "",
      storeAddress2: storeModel.address?.street2 ?? "",
      storeCityTown: storeModel.address?.city ?? "",
      postZipCode: storeModel.address?.zip ?? "",
      storeCountry: storeModel.address?.country ?? "",
      userLocationFromId: UserLocation(
        address: storeModel.geolocation?.storeLocation,
        lng: ConvertData.stringToDouble(storeModel.geolocation?.storeLng),
        lat: ConvertData.stringToDouble(storeModel.geolocation?.storeLat),
      ),
      policyTab: storeModel.wcfmPolicyTabTitle ?? "",
      shippingPolicy: storeModel.wcfmShippingPolicy ?? "",
      refundPolicy: storeModel.wcfmRefundPolicy ?? "",
      cancelPolicy: storeModel.wcfmCancellationPolicy ?? "",
      supportPhone: storeModel.customerSupport?.phone ?? "",
      supportEmail: storeModel.customerSupport?.email ?? "",
      seoTitle: storeModel.storeSeo?.wcfmmpSeoMetaTitle ?? "",
      metaDes: storeModel.storeSeo?.wcfmmpSeoMetaDesc ?? "",
      metaKey: storeModel.storeSeo?.wcfmmpSeoMetaKeywords ?? "",
      facebookTitle: storeModel.storeSeo?.wcfmmpSeoOgTitle ?? "",
      facebookDes: storeModel.storeSeo?.wcfmmpSeoOgDesc ?? "",
      twitterTitle: storeModel.storeSeo?.wcfmmpSeoTwitterTitle ?? "",
      twitterDes: storeModel.storeSeo?.wcfmmpSeoTwitterDesc ?? "",
      twitterLink: storeModel.social?.twitter ?? "",
      facebookLink: storeModel.social?.fb ?? "",
      instaLink: storeModel.social?.instagram ?? "",
      youtubeLink: storeModel.social?.youtube ?? "",
      likedinLink: storeModel.social?.linkedin ?? "",
      googleLink: storeModel.social?.gplus ?? "",
      snapLink: storeModel.social?.snapchat ?? "",
      pinterLink: storeModel.social?.pinterest ?? "",
    ));
  }

  void _onGetStoreSetting(GetStoreSettingEvent event, Emitter<StoreSettingState> emit) async {
    if (state.storeSetting == null) {
      emit(state.copyWith(getStoreSettingStatus: const LoadingState()));
    }
    try {
      StoreModel storeSetting = await storeSettingRepository.getStoreSetting(
        requestData: RequestData(
          token: token,
          cancelToken: _cancelToken,
          query: {'app-builder-decode': true},
        ),
      );
      emit(state.copyWith(
        getStoreSettingStatus: const LoadedState(),
      ));
      _initStoreSetting(emit: emit, storeModel: storeSetting);
    } on RequestError catch (e) {
      if (e.type != RequestErrorType.cancel) {
        emit(state.copyWith(
          getStoreSettingStatus: const ErrorState(),
        ));
      }
    }
  }

//------------------------General Setting-----------------
  ///field
  void _onStoreNameChanged(StoreNameChanged event, Emitter<StoreSettingState> emit) {
    final name = StoreName.dirty(event.name);
    emit(state.copyWith(
      storeName: name,
      statusSaveSetting: Formz.validate([state.storeName, name]),
    ));
  }

  void _onStoreEmailChanged(StoreEmailChanged event, Emitter<StoreSettingState> emit) {
    final email = StoreEmail.dirty(event.email);
    emit(state.copyWith(
      storeEmail: email,
      statusSaveSetting: Formz.validate([state.storeEmail, email]),
    ));
  }

  void _onStorePhoneChanged(StorePhoneChanged event, Emitter<StoreSettingState> emit) {
    final phone = event.phone;
    emit(state.copyWith(
      storePhone: phone,
    ));
  }

  void _onStoreDescriptionChanged(StoreDescriptionChanged event, Emitter<StoreSettingState> emit) {
    final description = event.description;
    emit(state.copyWith(
      storeDescription: description,
    ));
  }

  ///image
  //banner
  void _onStoreLogoChanged(StoreLogoChangedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(storeLogoImage: Image.dirty(event.image)));
  }

  void _onStoreLogoDeleted(StoreLogoDeletedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(storeLogoImage: const Image.pure()));
  }

  void _onStoreBannerChanged(StoreBannerChangedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(storeBannerImage: Image.dirty(event.image)));
  }

  void _onStoreBannerDeleted(StoreBannerDeletedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(storeBannerImage: const Image.pure()));
  }

  void _onStoreMobileBannerChanged(StoreMobileBannerChangedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(storeMobileBannerImage: Image.dirty(event.image)));
  }

  void _onStoreMobileBannerDeleted(StoreMobileBannerDeletedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(storeMobileBannerImage: const Image.pure()));
  }

  void _onFacebookImgChanged(FacebookImgChangedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(facebookImage: Image.dirty(event.image)));
  }

  void _onFacebookImgDeleted(FacebookImgDeletedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(facebookImage: const Image.pure()));
  }

  void _onTwitterImgChanged(TwitterImgChangedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(twitterImage: Image.dirty(event.image)));
  }

  void _onTwitterImgDeleted(TwitterImgDeletedEvent event, Emitter<StoreSettingState> emit) {
    emit(state.copyWith(twitterImage: const Image.pure()));
  }

  /// post Image
  Future<int?> _postImage({required Image image}) async {
    if (image.value?.file != null && image.value?.file?.path != null) {
      try {
        FormData formData = FormData.fromMap({
          'file': await MultipartFile.fromFile(
            image.value!.file!.path,
            filename: image.value!.file!.path.split('/').last,
          ),
        });
        Map<String, dynamic> res = await storeSettingRepository.postImage(
          requestData: RequestData(
            query: {'app-builder-decode': true},
            token: token,
            data: formData,
            cancelToken: _cancelToken,
          ),
        );
        return res['id'];
      } catch (_) {}
    }
    return null;
  }

//------------------------Update Payment-----------------
  ///field
  void _onMethodChanged(PaymentMethodChanged event, Emitter<StoreSettingState> emit) {
    final method = event.method;
    emit(state.copyWith(
      paymentMethod: method,
    ));
  }

  void _onEmailPaypalChanged(PaymentEmailPaypalChanged event, Emitter<StoreSettingState> emit) {
    final emailPaypal = event.emailPaypal;
    emit(state.copyWith(
      emailPaypal: emailPaypal,
    ));
  }

  void _onBankAcNameChanged(PaymentBankAcNameChanged event, Emitter<StoreSettingState> emit) {
    final bankAcName = event.bankAcName;
    emit(state.copyWith(bankAccountName: bankAcName));
  }

  void _onBankAcNumChanged(PaymentBankAcNumChanged event, Emitter<StoreSettingState> emit) {
    final bankAcNum = event.bankAcNum;
    emit(state.copyWith(bankAccountNumber: bankAcNum));
  }

  void _onBankNameChanged(PaymentBankNameChanged event, Emitter<StoreSettingState> emit) {
    final bankName = event.bankName;
    emit(state.copyWith(bankName: bankName));
  }

  void _onBankStateChanged(PaymentStateChanged event, Emitter<StoreSettingState> emit) {
    final bankState = event.bankState;
    emit(state.copyWith(bankState: bankState));
  }

  void _onBankRoutingNumChanged(PaymentBankRoutingNumChanged event, Emitter<StoreSettingState> emit) {
    final bankRoutingNum = event.bankRoutingNum;
    emit(state.copyWith(routingNum: bankRoutingNum));
  }

  void _onBankIbanChanged(PaymentBankIbanChanged event, Emitter<StoreSettingState> emit) {
    final bankIban = event.bankIban;
    emit(state.copyWith(iBAN: bankIban));
  }

  void _onBankSwiftCodeChanged(PaymentBankSwiftCodeChanged event, Emitter<StoreSettingState> emit) {
    final bankSwiftCode = event.bankSwiftCode;
    emit(state.copyWith(swiftCode: bankSwiftCode));
  }

  void _onBankIfscCodeChanged(PaymentBankIfscCodeChanged event, Emitter<StoreSettingState> emit) {
    final ifscCode = event.bankIfscCode;
    emit(state.copyWith(ifscCode: ifscCode));
  }

  ///submit
  void _onUpdatePaymentSubmit(UpdatePaymentMethod event, Emitter<StoreSettingState> emit) async {
    await Future.delayed(const Duration(milliseconds: 100));
    emit(state.copyWith(
      statusUpdatePayment: FormzStatus.submissionInProgress,
    ));
    await Future.delayed(const Duration(milliseconds: 800));
    try {
      Payment payment = Payment(
          bank: Bank(
            acName: state.bankAccountName ?? "",
            acNumber: state.bankAccountNumber ?? "",
            bankName: state.bankName ?? "",
            bankAddr: state.bankState ?? "",
            routingNumber: state.routingNum ?? "",
            iban: state.iBAN ?? "",
            swift: state.swiftCode ?? "",
            ifsc: state.ifscCode ?? "",
          ),
          method: state.paymentMethod,
          paypal: Paypal(
            email: state.emailPaypal,
          ));
      Map<String, dynamic> data = {"payment": payment.toJson()};
      await storeSettingRepository.updateStoreSetting(
        requestData:
            RequestData(cancelToken: _cancelToken, token: token, query: {'app-builder-decode': true}, data: data),
      );
      emit(state.copyWith(
        statusUpdatePayment: FormzStatus.submissionSuccess,
      ));
    } on RequestError catch (e) {
      if (e.type != RequestErrorType.cancel) {
        emit(state.copyWith(
          statusUpdatePayment: FormzStatus.submissionFailure,
        ));
      }
    }
  }

//------------------------1.Setup Store-----------------
  ///location
  void _onSearchLocationChanged(SearchLocationChangedEvent event, Emitter<StoreSettingState> emit) async {
    String? keyword = event.keyword;
    if (keyword != null) {
      if (keyword.trim().isNotEmpty) {
        emit(state.copyWith(showPredictLocation: true, keywordLocation: keyword));
        try {
          List<Prediction> listPrediction =
              await googlePlaceRepository.getPlaceAutocomplete(keyword: keyword, requestCancel: _cancelToken);
          emit(state.copyWith(listPredictionLocation: listPrediction));
        } catch (e) {
          /// error
        }
      } else {
        emit(state.copyWith(showPredictLocation: false));
      }
    }
  }

  ///get place from id
  void _onGetPlaceFromId(GetPlaceFromIdEvent event, Emitter<StoreSettingState> emit) async {
    String? placeId = event.placeId;
    if (placeId != null) {
      try {
        Place userLocation = await googlePlaceRepository.getPlaceDetailFromId(
          placeId: placeId,
          requestCancel: _cancelToken,
        );
        emit(state.copyWith(userLocationFromId: userLocation.toUserLocation(), showPredictLocation: false));
      } catch (_) {}
    }
  }

  void _updateUserLocation(UpdateUserLocationEvent event, Emitter<StoreSettingState> emit) {
    UserLocation? location = event.userLocation;
    if (location != null) {
      emit(state.copyWith(userLocationFromId: location));
    }
  }

  ///submit
  void _onSubmitStep1(SubmitStep1Event event, Emitter<StoreSettingState> emit) async {
    Address address = event.address;
    await Future.delayed(const Duration(milliseconds: 100));
    emit(state.copyWith(statusSaveSetting: FormzStatus.submissionInProgress));
    await Future.delayed(const Duration(milliseconds: 800));
    Map<String, dynamic> query = {
      "store_name": state.storeName.value,
      "store_email": state.storeEmail.value,
      "phone": state.storePhone ?? "",
      "shop_description": state.storeDescription ?? ""
    };
    if (state.storeLogoImage.value?.file != null) {
      int? logoId = await _postImage(image: state.storeLogoImage);
      query.addAll({"gravatar": logoId ?? 0});
    } else {
      query.addAll({"gravatar": (state.storeLogoImage.value?.image?.id ?? "").toString()});
    }
    if (state.storeBannerImage.value?.file != null) {
      int? bannerId = await _postImage(image: state.storeBannerImage);
      query.addAll({"banner": bannerId ?? 0});
    } else {
      query.addAll({"banner": (state.storeBannerImage.value?.image?.id ?? "").toString()});
    }
    if (state.storeMobileBannerImage.value?.file != null) {
      int? mobileBannerId = await _postImage(image: state.storeMobileBannerImage);
      query.addAll({"mobile_banner": mobileBannerId ?? 0});
    } else {
      query.addAll({"mobile_banner": (state.storeMobileBannerImage.value?.image?.id ?? "").toString()});
    }
    Map<String, dynamic> newAddress = {};
    newAddress.addAll({
      "street_1": address.street1 ?? "",
      "street_2": address.street2 ?? "",
      "city": address.city ?? "",
      "zip": address.zip ?? "",
      "country": address.country ?? "",
    });
    if (address.state != null) {
      if (address.state!.isNotEmpty) {
        newAddress.addAll({"state": address.state});
      }
    }
    Map<String, dynamic> geo = {
      "findaddress": state.userLocationFromId?.address ?? "",
      "store_location": state.userLocationFromId?.address ?? "",
      "store_lat": state.userLocationFromId?.lat.toString(),
      "store_lng": state.userLocationFromId?.lng.toString()
    };
    query.addAll({"address": address, "geolocation": geo});
    multiStepData.addAll(query);
    if (event.isSingle != null) {
      try {
        await storeSettingRepository.updateStoreSetting(
          requestData: RequestData(
            query: {'app-builder-decode': true},
            token: token,
            cancelToken: _cancelToken,
            data: multiStepData as Map<String, dynamic>,
          ),
        );
        emit(state.copyWith(
          statusSaveSetting: FormzStatus.submissionSuccess,
        ));
      } on RequestError catch (e) {
        if (e.type != RequestErrorType.cancel) {
          emit(state.copyWith(
            statusSaveSetting: FormzStatus.submissionFailure,
          ));
        }
      }
    } else {
      emit(state.copyWith(
        statusSaveSetting: FormzStatus.valid,
      ));
    }
  }

//------------------------2.Setup Pay-----------------
  ///submit
  void _onSubmitStep2(SubmitStep2Event event, Emitter<StoreSettingState> emit) async {
    await Future.delayed(const Duration(milliseconds: 800));
    Payment payment = Payment(
        bank: Bank(
          acName: state.bankAccountName ?? "",
          acNumber: state.bankAccountNumber ?? "",
          bankName: state.bankName ?? "",
          bankAddr: state.bankState ?? "",
          routingNumber: state.routingNum ?? "",
          iban: state.iBAN ?? "",
          swift: state.swiftCode ?? "",
          ifsc: state.ifscCode ?? "",
        ),
        method: state.paymentMethod,
        paypal: Paypal(
          email: state.emailPaypal ?? "",
        ));
    Map<String, dynamic> data = {"payment": payment.toJson()};
    multiStepData.addAll(data);
  }

//------------------------3.Setup Policy-----------------
  ///fields
  void _onTabPolicyChanged(TabPolicyChanged event, Emitter<StoreSettingState> emit) {
    final tabPolicy = event.tabPolicy;
    emit(state.copyWith(
      policyTab: tabPolicy,
    ));
  }

  void _onShippingPolicyChanged(ShippingPolicyChanged event, Emitter<StoreSettingState> emit) {
    final shippingPolicy = event.shippingPolicy;
    emit(state.copyWith(
      shippingPolicy: shippingPolicy,
    ));
  }

  void _onRefundPolicyChanged(RefundPolicyChanged event, Emitter<StoreSettingState> emit) {
    final refundPolicy = event.refundPolicy;
    emit(state.copyWith(
      refundPolicy: refundPolicy,
    ));
  }

  void _onCancelPolicyChanged(CancelPolicyChanged event, Emitter<StoreSettingState> emit) {
    final cancelPolicy = event.cancelPolicy;
    emit(state.copyWith(
      cancelPolicy: cancelPolicy,
    ));
  }

  ///submit
  void _onSubmitStep3(SubmitStep3Event event, Emitter<StoreSettingState> emit) async {
    await Future.delayed(const Duration(milliseconds: 100));
    emit(state.copyWith(
      submitPolicyStatus: const LoadingState(),
    ));
    await Future.delayed(const Duration(milliseconds: 800));
    Map<String, dynamic> query = {
      "policy_tab_title": state.policyTab ?? "",
      "shipping_policy": state.shippingPolicy ?? "",
      "refund_policy": state.refundPolicy ?? "",
      "cancellation_policy": state.cancelPolicy ?? "",
    };
    multiStepData.addAll(query);
    if (event.isSingle != null) {
      if (multiStepData.isNotEmpty) {
        try {
          await storeSettingRepository.updateStoreSetting(
            requestData: RequestData(
              query: {'app-builder-decode': true},
              token: token,
              cancelToken: _cancelToken,
              data: multiStepData as Map<String, dynamic>,
            ),
          );
          emit(state.copyWith(
            submitPolicyStatus: const LoadedState(),
          ));
        } on RequestError catch (e) {
          if (e.type != RequestErrorType.cancel) {
            emit(state.copyWith(
              submitPolicyStatus: const ErrorState(),
            ));
          }
        }
      }
    } else {
      emit(state.copyWith(
        submitPolicyStatus: const LoadedState(),
      ));
    }
  }

  //------------------------4.Support-----------------
  ///fields
  void _onSupportPhoneChanged(SupportPhoneChanged event, Emitter<StoreSettingState> emit) {
    final phone = event.phone;
    emit(state.copyWith(
      supportPhone: phone,
    ));
  }

  void _onSupportEmailChanged(SupportEmailChanged event, Emitter<StoreSettingState> emit) {
    final email = event.email;
    emit(state.copyWith(
      supportEmail: email,
    ));
  }

  ///submit
  void _onSubmitStep4(SubmitStep4Event event, Emitter<StoreSettingState> emit) async {
    await Future.delayed(const Duration(milliseconds: 100));
    emit(state.copyWith(
      submitSupportStatus: const LoadingState(),
    ));
    await Future.delayed(const Duration(milliseconds: 800));
    Address address = event.address;
    Map<String, dynamic> query = {};
    Map<String, dynamic> newAddress = {};
    newAddress.addAll({
      "phone": (state.supportPhone ?? "").toString(),
      "email": (state.supportEmail ?? "").toString(),
      "address1": (address.street1 ?? "").toString(),
      "address2": (address.street2 ?? "").toString(),
      "country": (address.country ?? "").toString(),
      "city": (address.city ?? "").toString(),
      "zip": (address.zip ?? "").toString(),
    });
    if (address.state != null) {
      if (address.state!.isNotEmpty) {
        newAddress.addAll({"state": address.state});
      }
    }
    query.addAll({"customer_support": address});
    multiStepData.addAll(query);
    if (event.isSingle != null) {
      if (multiStepData.isNotEmpty) {
        try {
          await storeSettingRepository.updateStoreSetting(
            requestData: RequestData(
                query: {'app-builder-decode': true},
                token: token,
                cancelToken: _cancelToken,
                data: multiStepData as Map<String, dynamic>),
          );
          emit(state.copyWith(
            submitSupportStatus: const LoadedState(),
          ));
        } on RequestError catch (e) {
          if (e.type != RequestErrorType.cancel) {
            emit(state.copyWith(
              submitSupportStatus: const ErrorState(),
            ));
          }
        }
      }
    } else {
      emit(state.copyWith(
        submitSupportStatus: const LoadedState(),
      ));
    }
  }

  //------------------------5.Seo-----------------
  ///fields
  void _onSeoTitleChange(SeoTitleChanged event, Emitter<StoreSettingState> emit) {
    final seoTitle = event.seoTitle;
    emit(state.copyWith(
      seoTitle: seoTitle,
    ));
  }

  void _onMetaDesChange(SeoDesChanged event, Emitter<StoreSettingState> emit) {
    final metaDes = event.seoDes;
    emit(state.copyWith(
      metaDes: metaDes,
    ));
  }

  void _onMetaKeyChange(MetaKeyChanged event, Emitter<StoreSettingState> emit) {
    final metaKey = event.metaKey;
    emit(state.copyWith(
      metaKey: metaKey,
    ));
  }

  void _onFacebookTitleChange(FacebookTitleChanged event, Emitter<StoreSettingState> emit) {
    final faceTitle = event.facebookTitle;
    emit(state.copyWith(
      facebookTitle: faceTitle,
    ));
  }

  void _onFacebookDesChange(FacebookDesChanged event, Emitter<StoreSettingState> emit) {
    final faceDes = event.facebookDes;
    emit(state.copyWith(
      facebookDes: faceDes,
    ));
  }

  void _onTwitterTitleChange(TwitterTitleChanged event, Emitter<StoreSettingState> emit) {
    final twitterTitle = event.twitterTitle;
    emit(state.copyWith(
      twitterTitle: twitterTitle,
    ));
  }

  void _onTwitterDesChange(TwitterDesChanged event, Emitter<StoreSettingState> emit) {
    final twitterDes = event.twitterDes;
    emit(state.copyWith(
      twitterDes: twitterDes,
    ));
  }

  ///submit
  void _onSubmitStep5(SubmitStep5Event event, Emitter<StoreSettingState> emit) async {
    await Future.delayed(const Duration(milliseconds: 100));
    emit(state.copyWith(
      submitSeoStatus: const LoadingState(),
    ));
    await Future.delayed(const Duration(milliseconds: 800));
    Map<String, dynamic> query = {};
    Map<String, dynamic> seo = {};
    seo.addAll({
      "wcfmmp-seo-meta-title": state.seoTitle,
      "wcfmmp-seo-meta-desc": state.metaDes,
      "wcfmmp-seo-meta-keywords": state.metaKey,
      "wcfmmp-seo-og-title": state.facebookTitle,
      "wcfmmp-seo-og-desc": state.facebookDes,
      "wcfmmp-seo-twitter-title": state.twitterTitle,
      "wcfmmp-seo-twitter-desc": state.twitterDes,
    });
    if (state.facebookImage.value?.file != null) {
      int? facebookImgId = await _postImage(image: state.facebookImage);
      seo.addAll({"wcfmmp-seo-og-image": facebookImgId ?? 0});
    } else {
      seo.addAll({"wcfmmp-seo-og-image": (state.facebookImage.value?.image?.id ?? "").toString()});
    }
    if (state.twitterImage.value?.file != null) {
      int? twitterImgId = await _postImage(image: state.twitterImage);
      seo.addAll({"wcfmmp-seo-twitter-image": twitterImgId ?? 0});
    } else {
      seo.addAll({"wcfmmp-seo-twitter-image": (state.twitterImage.value?.image?.id ?? "").toString()});
    }
    query.addAll({"store_seo": seo});
    multiStepData.addAll(query);
    if (event.isSingle != null) {
      if (multiStepData.isNotEmpty) {
        try {
          await storeSettingRepository.updateStoreSetting(
            requestData: RequestData(
              query: {'app-builder-decode': true},
              cancelToken: _cancelToken,
              token: token,
              data: multiStepData as Map<String, dynamic>,
            ),
          );
          emit(state.copyWith(
            submitSeoStatus: const LoadedState(),
          ));
        } on RequestError catch (e) {
          if (e.type != RequestErrorType.cancel) {
            emit(state.copyWith(
              submitSeoStatus: const ErrorState(),
            ));
          }
        }
      }
    } else {
      emit(state.copyWith(
        submitSeoStatus: const LoadedState(),
      ));
    }
  }

  //------------------------5.Social-----------------
  ///field
  void _onTwitterLinkChange(TwitterLinkChanged event, Emitter<StoreSettingState> emit) {
    final twitter = event.twitterLink;
    emit(state.copyWith(
      twitterLink: twitter,
    ));
  }

  void _onFacebookLinkChange(FacebookLinkChanged event, Emitter<StoreSettingState> emit) {
    final facebookLink = event.facebookLink;
    emit(state.copyWith(
      facebookLink: facebookLink,
    ));
  }

  void _onInstaLinkChange(InstaLinkChanged event, Emitter<StoreSettingState> emit) {
    final instaLink = event.instaLink;
    emit(state.copyWith(
      instaLink: instaLink,
    ));
  }

  void _onYoutubeLinkChange(YoutubeLinkChanged event, Emitter<StoreSettingState> emit) {
    final youtubeLink = event.youtubeLink;
    emit(state.copyWith(
      youtubeLink: youtubeLink,
    ));
  }

  void _onLikedinLinkChange(LikedinLinkChanged event, Emitter<StoreSettingState> emit) {
    final likedinLink = event.likedinLink;
    emit(state.copyWith(
      likedinLink: likedinLink,
    ));
  }

  void _onGoogleLinkChange(GoogleLinkChanged event, Emitter<StoreSettingState> emit) {
    final googleLink = event.googleLink;
    emit(state.copyWith(
      googleLink: googleLink,
    ));
  }

  void _onSnapLinkChange(SnapLinkChanged event, Emitter<StoreSettingState> emit) {
    final snapLink = event.snapLink;
    emit(state.copyWith(
      snapLink: snapLink,
    ));
  }

  void _onPinterLinkChange(PinterLinkChanged event, Emitter<StoreSettingState> emit) {
    final pinterLink = event.pinterLink;
    emit(state.copyWith(
      pinterLink: pinterLink,
    ));
  }

  ///submit
  void _onSubmitStep6(SubmitStep6Event event, Emitter<StoreSettingState> emit) async {
    await Future.delayed(const Duration(milliseconds: 100));
    emit(state.copyWith(
      submitSocialStatus: const LoadingState(),
    ));
    await Future.delayed(const Duration(milliseconds: 800));
    Map<String, dynamic> query = {};
    Map<String, dynamic> social = {};
    social.addAll({
      "twitter": state.twitterLink,
      "instagram": state.instaLink,
      "youtube": state.youtubeLink,
      "linkedin": state.likedinLink,
      "snapchat": state.snapLink,
      "pinterest": state.pinterLink,
      "googleplus": state.googleLink,
      "facebook": state.facebookLink,
      "gplus": state.googleLink,
      "fb": state.facebookLink,
    });
    query.addAll({"social": social});
    multiStepData.addAll(query);
    if (event.isSingle != null) {
      if (multiStepData.isNotEmpty) {
        try {
          await storeSettingRepository.updateStoreSetting(
            requestData: RequestData(
              query: {'app-builder-decode': true},
              cancelToken: _cancelToken,
              token: token,
              data: multiStepData as Map<String, dynamic>,
            ),
          );
          emit(state.copyWith(
            submitSocialStatus: const LoadedState(),
          ));
        } on RequestError catch (e) {
          if (e.type != RequestErrorType.cancel) {
            emit(state.copyWith(
              submitSocialStatus: const ErrorState(),
            ));
          }
        }
      }
    } else {
      emit(state.copyWith(
        submitSocialStatus: const LoadedState(),
      ));
    }
  }

  void _onSubmitMultiStep(SubmitMultiStepEvent event, Emitter<StoreSettingState> emit) async {
    if (multiStepData.isNotEmpty) {
      await Future.delayed(const Duration(milliseconds: 100));
      emit(state.copyWith(
        submitMultiStepStatus: const LoadingState(),
      ));
      await Future.delayed(const Duration(milliseconds: 800));
      try {
        await storeSettingRepository.updateStoreSetting(
          requestData: RequestData(
            query: {'app-builder-decode': true},
            cancelToken: _cancelToken,
            token: token,
            data: multiStepData as Map<String, dynamic>,
          ),
        );
        emit(state.copyWith(
          submitMultiStepStatus: const LoadedState(),
        ));
      } on RequestError catch (e) {
        if (e.type != RequestErrorType.cancel) {
          emit(state.copyWith(
            submitMultiStepStatus: const ErrorState(),
          ));
        }
      }
    }
  }

  @override
  void onChange(Change<StoreSettingState> change) {
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
