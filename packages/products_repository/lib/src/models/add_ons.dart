

class ProductAddOnModel {
  final String? name;
  final String? titleFormat;
  final String? description;
  final String? type;
  final String? display;
  final int? position;
  final int? required;
  final int? restrictions;
  final String? restrictionsType;
  final int? adjustPrice;
  final String? priceType;
  final String? price;
  final int? min;
  final int? max;
  final List<Options>? options;
  final int? wcAppointmentHideDurationLabel;
  final int? wcAppointmentHidePriceLabel;
  final int? wcAppointmentShowOnTop;
  final int? adjustDuration;
  final String? durationType;
  final String? duration;

  const ProductAddOnModel(
      {this.name,
      this.titleFormat,
      this.description,
      this.type,
      this.display,
      this.position,
      this.required,
      this.restrictions,
      this.restrictionsType,
      this.adjustPrice,
      this.priceType,
      this.price,
      this.min,
      this.max,
      this.options,
      this.wcAppointmentHideDurationLabel,
      this.wcAppointmentHidePriceLabel,
      this.wcAppointmentShowOnTop,
      this.adjustDuration,
      this.durationType,
      this.duration});

  factory ProductAddOnModel.fromJson(Map<String, dynamic> json) {
    List<Options> ops = <Options>[];
    if (json['options'] != null) {
      json['options'].forEach((v) {
        ops.add(Options.fromJson(v));
      });
    }
    return ProductAddOnModel(
      name: json['name'],
      titleFormat: json['title_format'],
      description: json['description'],
      type: json['type'],
      display: json['display'],
      position: json['position'],
      required: json['required'],
      restrictions: json['restrictions'],
      restrictionsType: json['restrictions_type'],
      adjustPrice: json['adjust_price'],
      options: ops,
      priceType: json['price_type'],
      price: json['price'],
      min: json['min'],
      max: json['max'],
      wcAppointmentHideDurationLabel: json['wc_appointment_hide_duration_label'],
      wcAppointmentHidePriceLabel: json['wc_appointment_hide_price_label'],
      wcAppointmentShowOnTop: json['wc_appointment_show_on_top'],
      adjustDuration: json['adjust_duration'],
      durationType: json['duration_type'],
      duration: json['duration'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['title_format'] = titleFormat;
    data['description'] = description;
    data['type'] = type;
    data['display'] = display;
    data['position'] = position;
    data['required'] = required;
    data['restrictions'] = restrictions;
    data['restrictions_type'] = restrictionsType;
    data['adjust_price'] = adjustPrice;
    data['price_type'] = priceType;
    data['price'] = price;
    data['min'] = min;
    data['max'] = max;
    if (options != null) {
      data['options'] = options!.map((v) => v.toJson()).toList();
    }
    data['wc_appointment_hide_duration_label'] = wcAppointmentHideDurationLabel;
    data['wc_appointment_hide_price_label'] = wcAppointmentHidePriceLabel;
    data['wc_appointment_show_on_top'] = wcAppointmentShowOnTop;
    data['adjust_duration'] = adjustDuration;
    data['duration_type'] = durationType;
    data['duration'] = duration;
    return data;
  }


}

class Options {
  String? label;
  String? price;
  String? image;
  String? priceType;
  String? durationType;
  String? duration;

  Options({this.label, this.price, this.image, this.priceType, this.durationType, this.duration});

  Options.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    price = json['price'];
    image = json['image'];
    priceType = json['price_type'];
    durationType = json['duration_type'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['price'] = price;
    data['image'] = image;
    data['price_type'] = priceType;
    data['duration_type'] = durationType;
    data['duration'] = duration;
    return data;
  }
}
