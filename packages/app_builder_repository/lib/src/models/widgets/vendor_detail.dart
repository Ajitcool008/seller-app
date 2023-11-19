import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vendor_detail.g.dart';

@JsonEnum()
enum ASVendorDetailTypeAppbar {
  @JsonValue('emerge')
  emerge,
  @JsonValue('opacity')
  opacity,
}

@JsonSerializable(createToJson: false)
class ASVendorDetail {
  final ASVendorDetailConfigs configs;

  final ASVendorDetailFields fields;

  const ASVendorDetail({
    required this.configs,
    required this.fields,
  });

  /// Connect the generated [_$ASVendorDetailFromJson] function to the `fromJson`
  /// factory.
  factory ASVendorDetail.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = {};

    Map<String, dynamic> configs =
        Map.castFrom<dynamic, dynamic, String, dynamic>(json['configs'] is Map ? json['configs'] : {});

    newJson.putIfAbsent('configs', () => configs);

    Map<String, dynamic> fields = {};

    if (json['widgets']?['vendorDetailPage'] is Map) {
      Map widgets = json['widgets']['vendorDetailPage'];

      if (widgets['fields'] is Map) {
        fields = Map.castFrom<dynamic, dynamic, String, dynamic>(widgets['fields']);
      }
    }

    newJson.putIfAbsent('fields', () => fields);

    return _$ASVendorDetailFromJson(newJson);
  }

  /// Connect the generated [_$ASVendorDetailToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> newJson = {
      'configs': configs.toJson(),
      "widgets": {
        "vendorDetailPage": {
          "id": "vendorDetailPage",
          "type": "vendorDetailPage",
          "fields": fields.toJson(),
        }
      },
    };
    return newJson;
  }
}

/// Vendor detail configs
@JsonSerializable(explicitToJson: true)
class ASVendorDetailConfigs {
  @JsonKey(fromJson: fromJsonTrue)
  final bool enableCenterTitle;

  const ASVendorDetailConfigs({
    required this.enableCenterTitle,
  });

  /// Connect the generated [_$ASVendorDetailConfigsFromJson] function to the `fromJson`
  /// factory.
  factory ASVendorDetailConfigs.fromJson(Map<String, dynamic> json) => _$ASVendorDetailConfigsFromJson(json);

  /// Connect the generated [_$ASVendorDetailFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASVendorDetailConfigsToJson(this);

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }
}

/// Vendor detail fields config
@JsonSerializable(explicitToJson: true)
class ASVendorDetailFields {
  @JsonKey(fromJson: fromJsonTrue)
  final bool enableRating;

  @JsonKey(defaultValue: ASVendorDetailTypeAppbar.emerge)
  final ASVendorDetailTypeAppbar typeAppBar;

  const ASVendorDetailFields({
    required this.enableRating,
    required this.typeAppBar,
  });

  /// Connect the generated [_$ASVendorDetailFieldsFromJson] function to the `fromJson`
  /// factory.
  factory ASVendorDetailFields.fromJson(Map<String, dynamic> json) => _$ASVendorDetailFieldsFromJson(json);

  /// Connect the generated [_$ASVendorDetailFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASVendorDetailFieldsToJson(this);

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }
}
