import 'dart:ui';

import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'category.g.dart';

@JsonEnum()
enum ASCategoryLayout {
  @JsonValue('default')
  defaultLayout,
  @JsonValue('vertical')
  vertical,
  @JsonValue('horizontal')
  horizontal,
}

@JsonEnum()
enum ASCategoryTypeAppbar {
  @JsonValue('floating')
  floating,
  @JsonValue('fixed')
  fixed,
  @JsonValue('scroll')
  scroll,
}

@JsonEnum()
enum ASCategoryViewLayout {
  @JsonValue('grid')
  grid,
  @JsonValue('list')
  list,
}

@JsonEnum()
enum ASCategoryPositionShowAll {
  @JsonValue('start')
  start,
  @JsonValue('end')
  end,
}

@JsonEnum()
enum ASCategoryTemplateType {
  @JsonValue('horizontal')
  horizontal,
  @JsonValue('horizontal-over')
  horizontalOver,
  @JsonValue('card')
  card,
  @JsonValue('overlay')
  overlay,
  @JsonValue('contained')
  contained,
  @JsonValue('grid')
  grid,
  @JsonValue('basic')
  basic,
}

@JsonSerializable(createToJson: false)
class ASCategory {
  final ASCategoryConfigs configs;

  final ASCategoryFields fields;

  final ASCategoryStyle styles;

  @JsonKey(defaultValue: ASCategoryLayout.defaultLayout)
  final ASCategoryLayout layout;

  const ASCategory({
    required this.configs,
    required this.fields,
    required this.styles,
    required this.layout,
  });

  /// Connect the generated [_$ASCategoryFromJson] function to the `fromJson`
  /// factory.
  factory ASCategory.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = {};

    Map<String, dynamic> configs =
        Map.castFrom<dynamic, dynamic, String, dynamic>(json['configs'] is Map ? json['configs'] : {});

    newJson.putIfAbsent('configs', () => configs);

    Map<String, dynamic> fields = {};
    Map<String, dynamic> styles = {};
    String layout = 'default';

    if (json['widgets']?['categoryPage'] is Map) {
      Map widgets = json['widgets']['categoryPage'];

      if (widgets['layout'] is String) {
        layout = widgets['layout'];
      }

      if (widgets['fields'] is Map) {
        fields = Map.castFrom<dynamic, dynamic, String, dynamic>(widgets['fields']);
      }

      if (widgets['styles'] is Map) {
        styles = Map.castFrom<dynamic, dynamic, String, dynamic>(widgets['styles']);
      }
    }

    newJson.putIfAbsent('layout', () => layout);
    newJson.putIfAbsent('fields', () => fields);
    newJson.putIfAbsent('styles', () => styles);

    return _$ASCategoryFromJson(newJson);
  }

  /// Connect the generated [_$ASCategoryToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> newJson = {
      'configs': configs.toJson(),
      "widgets": {
        "categoryPage": {
          "id": "categoryPage",
          "type": "categoryPage",
          "fields": fields.toJson(),
          "styles": styles.toJson(),
          "layout": _$ASCategoryLayoutEnumMap[layout]!,
        }
      },
    };
    return newJson;
  }
}

/// Category configs
@JsonSerializable(explicitToJson: true)
class ASCategoryConfigs {
  @JsonKey(defaultValue: ASCategoryTypeAppbar.floating)
  final ASCategoryTypeAppbar appBarType;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? appbarColorOnTop;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? iconAppbarColorOnTop;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableSearch;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableCart;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableBanner;

  @JsonKey(fromJson: fromJsonWidthBanner)
  final double widthBanner;

  @JsonKey(fromJson: fromJsonHeightBanner)
  final double heightBanner;

  @JsonKey(fromJson: fromJsonRadiusBanner)
  final double radiusBanner;

  @JsonKey(fromJson: fromJsonImage, includeIfNull: false)
  final AbdImage? imageBanner;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableScaleWidthBanner;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? backgroundBanner;

  const ASCategoryConfigs({
    required this.appBarType,
    required this.enableSearch,
    required this.enableCart,
    required this.enableBanner,
    required this.widthBanner,
    required this.heightBanner,
    required this.radiusBanner,
    required this.enableScaleWidthBanner,
    this.appbarColorOnTop,
    this.iconAppbarColorOnTop,
    this.imageBanner,
    this.backgroundBanner,
  });

  /// Connect the generated [_$ASCategoryConfigsFromJson] function to the `fromJson`
  /// factory.
  factory ASCategoryConfigs.fromJson(Map<String, dynamic> json) => _$ASCategoryConfigsFromJson(json);

  /// Connect the generated [_$ASCategoryFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASCategoryConfigsToJson(this);

  static bool fromJsonFalse(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static AbdColor? fromJsonColor(dynamic value) {
    if (value is Map) {
      return AbdColor.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }

    return null;
  }

  static AbdImage? fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }

    return null;
  }

  static double fromJsonWidthBanner(dynamic value) {
    return ConvertData.stringToDouble(value, 335);
  }

  static double fromJsonHeightBanner(dynamic value) {
    return ConvertData.stringToDouble(value, 80);
  }

  static double fromJsonRadiusBanner(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }
}

/// Category fields config
@JsonSerializable(explicitToJson: true)
class ASCategoryFields {
  @JsonKey(fromJson: fromJsonCategory)
  final List<AbdOption> excludeCategory;

  @JsonKey(defaultValue: ASCategoryViewLayout.list)
  final ASCategoryViewLayout styleView;

  @JsonKey(fromJson: fromJsonColumn)
  final int columnGrid;

  @JsonKey(fromJson: fromJsonRatio)
  final double childAspectRatio;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableShowAll;

  @JsonKey(fromJson: fromJsonTrue)
  final bool enableChangeNameShowAll;

  @JsonKey(defaultValue: ASCategoryPositionShowAll.start)
  final ASCategoryPositionShowAll positionShowAll;

  @JsonKey(fromJson: fromJsonText)
  final AbdText? textShowAll;

  @JsonKey(fromJson: fromJsonPad)
  final double padItem;

  @JsonKey(fromJson: fromJsonTemplate)
  final ASCategoryTemplate template;

  const ASCategoryFields({
    required this.excludeCategory,
    required this.styleView,
    required this.columnGrid,
    required this.childAspectRatio,
    required this.enableShowAll,
    required this.enableChangeNameShowAll,
    required this.positionShowAll,
    required this.padItem,
    required this.template,
    this.textShowAll,
  });

  /// Connect the generated [_$ASCategoryFieldsFromJson] function to the `fromJson`
  /// factory.
  factory ASCategoryFields.fromJson(Map<String, dynamic> json) => _$ASCategoryFieldsFromJson(json);

  /// Connect the generated [_$ASCategoryFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASCategoryFieldsToJson(this);

  static List<AbdOption> fromJsonCategory(dynamic value) {
    List<AbdOption> data = [];
    if (value is List && value.isNotEmpty) {
      for (dynamic item in value) {
        if (item is Map) {
          data.add(AbdOption.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(item)));
        }
      }
    }
    return data;
  }

  static int fromJsonColumn(dynamic value) {
    return ConvertData.stringToInt(value, 2);
  }

  static double fromJsonRatio(dynamic value) {
    return ConvertData.stringToDouble(value, 1);
  }

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value, 16);
  }

  static bool fromJsonTrue(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? true;
  }

  static AbdText? fromJsonText(dynamic value) {
    if (value is Map) {
      return AbdText.fromJson(
          Map.castFrom<dynamic, dynamic, String, dynamic>(Map.castFrom<dynamic, dynamic, String, dynamic>(value)));
    }
    return null;
  }

  static ASCategoryTemplate fromJsonTemplate(dynamic value) {
    return ASCategoryTemplate.fromJson(value is Map ? Map.castFrom<dynamic, dynamic, String, dynamic>(value) : {});
  }
}

/// Category style
@JsonSerializable(explicitToJson: true)
class ASCategoryStyle {
  @JsonKey(fromJson: fromJsonSpacing, includeIfNull: false)
  final AbdSpacing? padding;

  @JsonKey(fromJson: fromJsonSpacing, includeIfNull: false)
  final AbdSpacing? margin;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? backgroundItems;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? backgroundItem;

  @JsonKey(fromJson: fromJsonRadius)
  final double radiusItem;

  @JsonKey(fromJson: fromJsonRadiusImage)
  final double radiusImage;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? textColor;

  @JsonKey(fromJson: fromJsonSizeText)
  final double sizeText;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? subtextColor;

  @JsonKey(fromJson: fromJsonSizeSubtext)
  final double sizeSubtext;

  const ASCategoryStyle({
    required this.radiusItem,
    required this.radiusImage,
    required this.sizeText,
    required this.sizeSubtext,
    this.padding,
    this.margin,
    this.backgroundItems,
    this.backgroundItem,
    this.textColor,
    this.subtextColor,
  });

  /// Connect the generated [_$ASCategoryStyleFromJson] function to the `fromJson`
  /// factory.
  factory ASCategoryStyle.fromJson(Map<String, dynamic> json) => _$ASCategoryStyleFromJson(json);

  /// Connect the generated [_$ASCategoryStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASCategoryStyleToJson(this);

  static AbdColor? fromJsonColor(dynamic value) {
    if (value is Map) {
      return AbdColor.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static AbdSpacing? fromJsonSpacing(dynamic value) {
    if (value is Map) {
      return AbdSpacing.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static double fromJsonRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }

  static double fromJsonRadiusImage(dynamic value) {
    return ConvertData.stringToDouble(value);
  }

  static double fromJsonSizeText(dynamic value) {
    return ConvertData.stringToDouble(value, 16);
  }

  static double fromJsonSizeSubtext(dynamic value) {
    return ConvertData.stringToDouble(value, 12);
  }
}

@JsonSerializable(explicitToJson: true)
class ASCategoryTemplate {
  @JsonKey(defaultValue: ASCategoryTemplateType.horizontal)
  final ASCategoryTemplateType template;

  @JsonKey(fromJson: fromJsonData)
  final ASCategoryTemplateData data;

  const ASCategoryTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$ASCategoryTemplateFromJson] function to the `fromJson`
  /// factory.
  factory ASCategoryTemplate.fromJson(Map<String, dynamic> json) => _$ASCategoryTemplateFromJson(json);

  /// Connect the generated [_$ASCategoryTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASCategoryTemplateToJson(this);

  static ASCategoryTemplateData fromJsonData(dynamic value) {
    return ASCategoryTemplateData.fromJson(value is Map ? Map.castFrom<dynamic, dynamic, String, dynamic>(value) : {});
  }
}

@JsonSerializable(explicitToJson: true)
class ASCategoryTemplateData {
  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableSubcategories;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableImage;

  final String? thumbSizes;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableNumber;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableShadow;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableBorder;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? borderColor;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableRound;

  @JsonKey(fromJson: fromJsonTextAlign, toJson: toJsonTextAlign, includeIfNull: false)
  final TextAlign? alignment;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? opacityColor;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? opacity;

  @JsonKey(fromJson: ConvertData.stringToIntCanBeNull, includeIfNull: false)
  final int? maxCountSubcategory;

  @JsonKey(fromJson: ConvertData.stringToIntCanBeNull, includeIfNull: false)
  final int? columnSubcategory;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableRoundSubcategory;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableBorderSubcategory;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? radiusSubCategory;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? borderColorSubCategory;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? sizeSubcategory;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? textColorSubcategory;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableIcon;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? iconSize;

  @JsonKey(fromJson: fromJsonColor, includeIfNull: false)
  final AbdColor? iconColor;

  final String? alignmentView;

  const ASCategoryTemplateData({
    this.enableSubcategories,
    this.enableImage,
    this.thumbSizes,
    this.enableNumber,
    this.enableShadow,
    this.enableBorder,
    this.borderColor,
    this.enableRound,
    this.alignment,
    this.opacityColor,
    this.opacity,
    this.maxCountSubcategory,
    this.columnSubcategory,
    this.enableRoundSubcategory,
    this.enableBorderSubcategory,
    this.radiusSubCategory,
    this.borderColorSubCategory,
    this.sizeSubcategory,
    this.textColorSubcategory,
    this.enableIcon,
    this.iconSize,
    this.iconColor,
    this.alignmentView,
  });

  /// Connect the generated [_$ASCategoryTemplateDataFromJson] function to the `fromJson`
  /// factory.
  factory ASCategoryTemplateData.fromJson(Map<String, dynamic> json) => _$ASCategoryTemplateDataFromJson(json);

  /// Connect the generated [_$ASCategoryTemplateDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ASCategoryTemplateDataToJson(this);

  static AbdColor? fromJsonColor(dynamic value) {
    if (value is Map) {
      return AbdColor.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }

    return null;
  }

  static TextAlign? fromJsonTextAlign(dynamic value) {
    if (value is TextAlign) {
      return value;
    }
    if (value is String) {
      return ConvertData.toTextAlign(value);
    }

    return null;
  }

  static dynamic toJsonTextAlign(TextAlign? value) {
    switch (value) {
      case TextAlign.start:
      case TextAlign.left:
        return 'left';
      case TextAlign.center:
        return 'center';
      case TextAlign.end:
      case TextAlign.right:
        return 'right';
      default:
        return null;
    }
  }
}
