import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vendor_list.g.dart';

@JsonEnum()
enum ASVendorListLayout {
  @JsonValue('default')
  defaultLayout,
  @JsonValue('map')
  map,
}

@JsonSerializable(createToJson: false)
class ASVendorList {
  final ASVendorListConfigs configs;

  final ASVendorListFields fields;

  @JsonKey(defaultValue: ASVendorListLayout.defaultLayout)
  final ASVendorListLayout layout;

  const ASVendorList({
    required this.configs,
    required this.fields,
    required this.layout,
  });

  /// Connect the generated [_$ASVendorListFromJson] function to the `fromJson`
  /// factory.
  factory ASVendorList.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = {};

    Map<String, dynamic> configs =
        Map.castFrom<dynamic, dynamic, String, dynamic>(json['configs'] is Map ? json['configs'] : {});

    newJson.putIfAbsent('configs', () => configs);

    Map<String, dynamic> fields = {};
    String layout = 'default';

    if (json['widgets']?['vendorListPage'] is Map) {
      Map widgets = json['widgets']['vendorListPage'];

      if (widgets['layout'] is String) {
        layout = widgets['layout'];
      }

      if (widgets['fields'] is Map) {
        fields = Map.castFrom<dynamic, dynamic, String, dynamic>(widgets['fields']);
      }
    }

    newJson.putIfAbsent('fields', () => fields);
    newJson.putIfAbsent('layout', () => layout);

    return _$ASVendorListFromJson(newJson);
  }

  /// Connect the generated [_$ASVendorListToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> newJson = {
      'configs': configs.toJson(),
      "widgets": {
        "vendorListPage": {
          "id": "vendorListPage",
          "type": "vendorListPage",
          "fields": fields.toJson(),
          "layout": _$ASVendorListLayoutEnumMap[layout]!
        }
      },
    };
    return newJson;
  }
}

/// Vendor list configs
@JsonSerializable(explicitToJson: true)
class ASVendorListConfigs {
  @JsonKey(fromJson: fromJsonTrue)
  final bool enableCenterTitle;

  const ASVendorListConfigs({
    required this.enableCenterTitle,
  });

  /// Connect the generated [_$ASVendorListConfigsFromJson] function to the `fromJson`
  /// factory.
  factory ASVendorListConfigs.fromJson(Map<String, dynamic> json) => _$ASVendorListConfigsFromJson(json);

  /// Connect the generated [_$ASVendorListFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASVendorListConfigsToJson(this);

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }
}

/// Vendor list fields config
@JsonSerializable(explicitToJson: true)
class ASVendorListFields {
  @JsonKey(fromJson: fromJsonPerPage)
  final int itemPerPage;

  @JsonKey(fromJson: fromJsonFalse)
  final bool enableRangeFilter;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableRating;

  const ASVendorListFields({
    required this.itemPerPage,
    required this.enableRangeFilter,
    required this.enableRating,
  });

  /// Connect the generated [_$ASVendorListFieldsFromJson] function to the `fromJson`
  /// factory.
  factory ASVendorListFields.fromJson(Map<String, dynamic> json) => _$ASVendorListFieldsFromJson(json);

  /// Connect the generated [_$ASVendorListFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASVendorListFieldsToJson(this);

  static int fromJsonPerPage(dynamic value) {
    return ConvertData.stringToInt(value, 10);
  }

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static bool fromJsonFalse(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}
