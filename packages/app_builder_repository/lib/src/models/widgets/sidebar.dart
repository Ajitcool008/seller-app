import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'sidebar.g.dart';

enum AWSidebarLayout {
  @JsonValue('default')
  defaultSidebar,
  @JsonValue('style1')
  style1,
  @JsonValue('style2')
  style2,
  @JsonValue('style3')
  style3,
  @JsonValue('style4')
  style4,
  @JsonValue('style5')
  style5,
  @JsonValue('style6')
  style6,
  @JsonValue('style7')
  style7,
  @JsonValue('style8')
  style8,
  @JsonValue('style9')
  style9,
}

@JsonSerializable(explicitToJson: true)
class AWSidebar {
  final String id;

  final String type;

  final AWSidebarFields fields;

  @JsonKey(defaultValue: AWSidebarLayout.defaultSidebar)
  final AWSidebarLayout layout;

  final AWSidebarStyle styles;

  const AWSidebar({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
  });

  /// Connect the generated [_$AWSidebarFromJson] function to the `fromJson`
  /// factory.
  factory AWSidebar.fromJson(Map<String, dynamic> json) => _$AWSidebarFromJson(json);

  /// Connect the generated [_$AWSidebarToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSidebarToJson(this);
}

/// Bottom tab fields config
@JsonSerializable(explicitToJson: true)
class AWSidebarFields {
  /// Header Sidebar
  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableHeaderSidebar;

  final String alignHeader;

  /// Categories
  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableCategory;

  final String alignCategory;

  final AbdText titleCategory;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool showHierarchy;

  @JsonKey(fromJson: fromJsonDepth)
  final int depth;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool enableCount;

  @JsonKey(fromJson: fromJsonBoolFalse)
  final bool enableImageCategory;

  @JsonKey(defaultValue: [])
  final List<AbdOption> includeCategory;

  @JsonKey(defaultValue: [])
  final List<AbdOption> excludeCategory;

  /// Link Customize
  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableCustomize;

  final String alignCustomize;

  @JsonKey(fromJson: fromJsonBoolTrue)
  final bool enableIconCustomize;

  final AbdText titleCustomize;

  @JsonKey(defaultValue: [])
  final List<AWSidebarTemplateCustomize> itemsCustomize;

  const AWSidebarFields({
    required this.enableHeaderSidebar,
    required this.alignHeader,
    required this.enableCategory,
    required this.alignCategory,
    required this.titleCategory,
    required this.showHierarchy,
    required this.depth,
    required this.enableCount,
    required this.enableImageCategory,
    required this.includeCategory,
    required this.excludeCategory,
    required this.enableCustomize,
    required this.alignCustomize,
    required this.enableIconCustomize,
    required this.titleCustomize,
    required this.itemsCustomize,
  });

  /// Connect the generated [_$AWSidebarFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWSidebarFields.fromJson(Map<String, dynamic> json) => _$AWSidebarFieldsFromJson(json);

  /// Connect the generated [_$AWSidebarFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSidebarFieldsToJson(this);

  static bool fromJsonBoolTrue(dynamic value) {
    return ConvertData.toBoolValue(value) ?? true;
  }

  static bool fromJsonBoolFalse(dynamic value) {
    return ConvertData.toBoolValue(value) ?? false;
  }

  static int fromJsonDepth(dynamic value) {
    return ConvertData.stringToInt(value, 3);
  }
}

/// Bottom Tab style
@JsonSerializable(explicitToJson: true)
class AWSidebarStyle {
  final AbdColor background;

  final AbdColor color;

  final AbdColor borderColor;

  @JsonKey(fromJson: fromJsonEnableImageBg)
  final bool enableImageBg;

  final String imageBg;

  const AWSidebarStyle({
    required this.background,
    required this.color,
    required this.borderColor,
    required this.enableImageBg,
    required this.imageBg,
  });

  /// Connect the generated [_$AWSidebarStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWSidebarStyle.fromJson(Map<String, dynamic> json) => _$AWSidebarStyleFromJson(json);

  /// Connect the generated [_$AWSidebarStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSidebarStyleToJson(this);

  static bool fromJsonEnableImageBg(dynamic value) {
    return ConvertData.toBoolValue(value) ?? false;
  }
}

/// Bottom Tab template item
@JsonSerializable(explicitToJson: true)
class AWSidebarTemplateCustomize {
  final String template;

  final AWSidebarDataTemplate data;

  const AWSidebarTemplateCustomize({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWSidebarTemplateCustomizeFromJson] function to the `fromJson`
  /// factory.
  factory AWSidebarTemplateCustomize.fromJson(Map<String, dynamic> json) => _$AWSidebarTemplateCustomizeFromJson(json);

  /// Connect the generated [_$AWSidebarTemplateCustomizeToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSidebarTemplateCustomizeToJson(this);
}

/// Banner data template item
@JsonSerializable(explicitToJson: true)
class AWSidebarDataTemplate {
  @JsonKey(includeIfNull: false)
  final AbdIcon? icon;

  @JsonKey(includeIfNull: false)
  final AbdText? title;

  @JsonKey(includeIfNull: false)
  final AbdAction? action;

  const AWSidebarDataTemplate({
    this.icon,
    this.title,
    this.action,
  });

  /// Connect the generated [_$AWSidebarDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWSidebarDataTemplate.fromJson(Map<String, dynamic> json) => _$AWSidebarDataTemplateFromJson(json);

  /// Connect the generated [_$AWSidebarDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWSidebarDataTemplateToJson(this);
}
