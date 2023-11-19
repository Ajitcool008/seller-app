import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'webview.g.dart';

enum AWWebViewCondition {
  @JsonValue('no_condition')
  noCondition,
  @JsonValue('url_start')
  urlStart,
  @JsonValue('url_end')
  urlEnd,
  @JsonValue('equal_to')
  equalTo,
  @JsonValue('url_contain')
  urlContain;
}

@JsonSerializable(explicitToJson: true)
class AWWebView {
  final String id;

  final String type;

  final AWWebViewFields fields;

  final AWWebViewStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWWebView({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.disable,
  });

  /// Connect the generated [_$AWWebViewFromJson] function to the `fromJson`
  /// factory.
  factory AWWebView.fromJson(Map<String, dynamic> json) => _$AWWebViewFromJson(json);

  /// Connect the generated [_$AWWebViewToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWWebViewToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWWebViewFields {
  @JsonKey(fromJson: ConvertData.stringToDouble, defaultValue: 200)
  final double height;

  final AbdText url;

  @JsonKey(defaultValue: false)
  final bool syncAuth;

  @JsonKey(defaultValue: false)
  final bool syncAuthWebToApp;

  @JsonKey(defaultValue: [])
  final List<AWWebViewItem> items;

  const AWWebViewFields({
    required this.height,
    required this.url,
    required this.syncAuth,
    required this.syncAuthWebToApp,
    required this.items,
  });

  /// Connect the generated [_$AWWebViewFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWWebViewFields.fromJson(Map<String, dynamic> json) => _$AWWebViewFieldsFromJson(json);

  /// Connect the generated [_$AWWebViewFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWWebViewFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class AWWebViewStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  const AWWebViewStyle({
    required this.padding,
    required this.margin,
    required this.background,
  });

  /// Connect the generated [_$AWWebViewStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWWebViewStyle.fromJson(Map<String, dynamic> json) => _$AWWebViewStyleFromJson(json);

  /// Connect the generated [_$AWWebViewStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWWebViewStyleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWWebViewItem {
  @JsonKey(defaultValue: 'default')
  final String template;

  final AWWebViewItemData? data;

  const AWWebViewItem({
    required this.template,
    this.data,
  });

  /// Connect the generated [_$AWWebViewItemFromJson] function to the `fromJson`
  /// factory.
  factory AWWebViewItem.fromJson(Map<String, dynamic> json) => _$AWWebViewItemFromJson(json);

  /// Connect the generated [_$AWWebViewItemToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWWebViewItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AWWebViewItemData {
  @JsonKey(defaultValue: AWWebViewCondition.noCondition)
  final AWWebViewCondition condition;

  final String? value;

  final AbdAction? action;

  const AWWebViewItemData({
    required this.condition,
    this.value,
    this.action,
  });

  /// Connect the generated [_$AWWebViewItemDataFromJson] function to the `fromJson`
  /// factory.
  factory AWWebViewItemData.fromJson(Map<String, dynamic> json) => _$AWWebViewItemDataFromJson(json);

  /// Connect the generated [_$AWWebViewItemDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWWebViewItemDataToJson(this);
}
