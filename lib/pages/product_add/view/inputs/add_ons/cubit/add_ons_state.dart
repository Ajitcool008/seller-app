part of 'add_ons_cubit.dart';

class AddOnsState extends BaseState {
  final AddOnsType addOnsType;
  final MultiChoiceDisplayType multiChoiceDisplayType;
  final String title;
  final RestrictionTextType restrictionTextType;
  final FormatTitleType formatTitle;
  final String description;
  final bool requiredField;
  final bool enableLimitValue;
  final String minValue;
  final String maxValue;
  final bool enableAdjustPrice;
  final String adjustPriceValue;
  final AdjustPriceType adjustPriceType;
  final List<OptionAddOns> optionAddOns;

  const AddOnsState({
    this.addOnsType = AddOnsType.multiChoice,
    this.multiChoiceDisplayType = MultiChoiceDisplayType.dropdown,
    this.title = '',
    this.restrictionTextType = RestrictionTextType.anyText,
    this.formatTitle = FormatTitleType.label,
    this.description = '',
    this.requiredField = false,
    this.enableLimitValue = false,
    this.minValue = '',
    this.maxValue = '',
    this.enableAdjustPrice = false,
    this.adjustPriceValue = '',
    this.adjustPriceType = AdjustPriceType.flatFee,
    this.optionAddOns = const [OptionAddOns()],
  });

  @override
  List<Object?> get props => [
        addOnsType,
        multiChoiceDisplayType,
        title,
        restrictionTextType,
        formatTitle,
        description,
        requiredField,
        enableLimitValue,
        minValue,
        maxValue,
        enableAdjustPrice,
        adjustPriceValue,
        adjustPriceType,
        optionAddOns,
      ];

  AddOnsState copyWith(
      {AddOnsType? addOnsType,
      MultiChoiceDisplayType? multiChoiceDisplayType,
      String? title,
      RestrictionTextType? restrictionTextType,
      FormatTitleType? formatTitle,
      String? description,
      bool? requiredField,
      bool? enableLimitValue,
      String? minValue,
      String? maxValue,
      bool? enableAdjustPrice,
      String? adjustPriceValue,
      AdjustPriceType? adjustPriceType,
      List<OptionAddOns>? optionAddOns}) {
    return AddOnsState(
      addOnsType: addOnsType ?? this.addOnsType,
      multiChoiceDisplayType: multiChoiceDisplayType ?? this.multiChoiceDisplayType,
      title: title ?? this.title,
      restrictionTextType: restrictionTextType ?? this.restrictionTextType,
      formatTitle: formatTitle ?? this.formatTitle,
      description: description ?? this.description,
      requiredField: requiredField ?? this.requiredField,
      enableLimitValue: enableLimitValue ?? this.enableLimitValue,
      minValue: minValue ?? this.minValue,
      maxValue: maxValue ?? this.maxValue,
      enableAdjustPrice: enableAdjustPrice ?? this.enableAdjustPrice,
      adjustPriceValue: adjustPriceValue ?? this.adjustPriceValue,
      adjustPriceType: adjustPriceType ?? this.adjustPriceType,
      optionAddOns: optionAddOns ?? this.optionAddOns,
    );
  }

  factory AddOnsState.fromJson(Map<String, dynamic> json) => _$AddOnsStateFromJson(json);

  Map<String, dynamic> toJson() => _$AddOnsStateToJson(this);

  ProductAddOnModel toProductAddOnsModel({int? position}) {
    return ProductAddOnModel(
      priceType: adjustPriceType.getKey(),
      name: title,
      type: addOnsType.getKey(),
      description: description,
      duration: '',
      min: int.tryParse(minValue),
      max: int.tryParse(maxValue),
      adjustDuration: 0,
      adjustPrice: enableAdjustPrice ? 1 : 0,
      display: multiChoiceDisplayType.getKey(),
      durationType: 'flat_time',
      position: position,
      price: adjustPriceValue,
      required: requiredField ? 1 : 0,
      restrictions: enableLimitValue ? 1 : 0,
      restrictionsType: restrictionTextType.getKey(),
      titleFormat: formatTitle.getKey(),
      wcAppointmentHideDurationLabel: 0,
      wcAppointmentHidePriceLabel: 0,
      wcAppointmentShowOnTop: 0,
      options: optionAddOns
          .map(
            (e) => Options(
                price: e.priceValue,
                durationType: 'flat_time',
                priceType: e.priceType.getKey(),
                duration: '',
                label: e.name,
                image: (e.image != null) ? e.image!.image?.id.toString() : null),
          )
          .toList(),
    );
  }
}

AddOnsState _$AddOnsStateFromJson(Map<String, dynamic> json) => const AddOnsState();

Map<String, dynamic> _$AddOnsStateToJson(AddOnsState instance) => <String, dynamic>{};
