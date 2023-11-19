import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import 'types/types.dart';

part 'contact.g.dart';

@JsonSerializable(explicitToJson: true)
class AWContact {
  String? fieldId;

  AWWidgets widgets;

  @JsonKey(includeIfNull: false)
  AbdAction? action;
  AWContact({
    required this.widgets,
    this.action,
    this.fieldId,
  });

  factory AWContact.fromJson(Map<String, dynamic> json) => _$AWContactFromJson(json);
  Map<String, dynamic> toJson() => _$AWContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWWidgets {
  AWContactPage? contactPage;
  AWWidgets({
    this.contactPage,
  });

  factory AWWidgets.fromJson(Map<String, dynamic> json) => _$AWWidgetsFromJson(json);
  Map<String, dynamic> toJson() => _$AWWidgetsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWContactPage {
  AWContactFields fields;
  String? id;
  String? type;
  String? layout;

  AWContactPage({
    required this.fields,
    this.id,
    this.type,
    this.layout,
  });

  factory AWContactPage.fromJson(Map<String, dynamic> json) => _$AWContactPageFromJson(json);
  Map<String, dynamic> toJson() => _$AWContactPageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWContactFields {
  @JsonKey(fromJson: fromJsonBoolTrue)
  bool enablePinMap;

  @JsonKey(fromJson: fromJsonBoolTrue)
  bool enableFeedback;

  @JsonKey(fromJson: fromJsonBoolTrue)
  bool enableDirectMap;

  @JsonKey(defaultValue: [])
  List<AWContactItemsCustomize>? itemsCustomize;

  @JsonKey(fromJson: fromJsonImage)
  AbdImage image;

  String? mapType;

  String? formId;
  AWContactFields({
    required this.enablePinMap,
    required this.enableFeedback,
    required this.enableDirectMap,
    required this.image,
    this.formId,
    this.itemsCustomize,
    this.mapType,
  });

  factory AWContactFields.fromJson(Map<String, dynamic> json) => _$AWContactFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$AWContactFieldsToJson(this);

  static bool fromJsonBoolTrue(dynamic value) {
    return ConvertData.toBoolValue(value) ?? true;
  }

  static AbdImage fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return AbdImage.fromJson({});
  }
}

@JsonSerializable(explicitToJson: true)
class AWContactItemsCustomize {
  String template;

  AWContactDataTemplate data;

  AWContactItemsCustomize({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWContactItemsCustomizeFromJson] function to the `fromJson`
  /// factory.
  factory AWContactItemsCustomize.fromJson(Map<String, dynamic> json) => _$AWContactItemsCustomizeFromJson(json);

  /// Connect the generated [_$AWContactItemsCustomizeToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWContactItemsCustomizeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWContactDataTemplate {
  @JsonKey(includeIfNull: false)
  AbdText? titleHeading;

  @JsonKey(includeIfNull: false)
  AbdIcon? iconPhone;

  @JsonKey(includeIfNull: false)
  AbdText? titlePhone;

  @JsonKey(includeIfNull: false)
  AbdIcon? iconMail;

  @JsonKey(includeIfNull: false)
  AbdText? titleEmail;

  @JsonKey(includeIfNull: false)
  AbdText? titleAddress;

  @JsonKey(includeIfNull: false)
  AbdIcon? iconAddress;

  String? lat;

  String? lng;

  String? bearing;

  String? titl;

  String? zoom;

  AWContactDataTemplate({
    this.titleHeading,
    this.iconPhone,
    this.titlePhone,
    this.iconMail,
    this.titleEmail,
    this.iconAddress,
    this.titleAddress,
    this.lat,
    this.lng,
    this.bearing,
    this.titl,
    this.zoom,
  });

  /// Connect the generated [_$AWContactDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWContactDataTemplate.fromJson(Map<String, dynamic> json) => _$AWContactDataTemplateFromJson(json);

  /// Connect the generated [_$AWContactDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWContactDataTemplateToJson(this);
}
