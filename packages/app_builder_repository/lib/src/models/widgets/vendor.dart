import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'vendor.g.dart';

enum AWVendorLayout {
  @JsonValue('list')
  list,
  @JsonValue('carousel')
  carousel,
  @JsonValue('grid')
  grid,
}

enum AWVendorTemplateType {
  @JsonValue('contained')
  contained,
  @JsonValue('horizontal')
  horizontal,
  @JsonValue('emerge')
  emerge,
  @JsonValue('gradient')
  gradient,
}

@JsonSerializable(explicitToJson: true)
class AWVendor {
  final String id;

  final String type;

  @JsonKey(defaultValue: AWVendorLayout.list)
  final AWVendorLayout layout;

  final AWVendorFields fields;

  final AWVendorStyle styles;

  @JsonKey(fromJson: fromJsonDisable, defaultValue: false)
  final bool disable;

  const AWVendor({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
    required this.disable,
  });

  /// Connect the generated [_$AWVendorFromJson] function to the `fromJson`
  /// factory.
  factory AWVendor.fromJson(Map<String, dynamic> json) => _$AWVendorFromJson(json);

  /// Connect the generated [_$AWVendorToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVendorToJson(this);

  static bool fromJsonDisable(dynamic value) {
    bool? newValue = ConvertData.toBoolValue(value);
    return newValue ?? false;
  }
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class AWVendorFields {
  @JsonKey(defaultValue: [])
  final List<AbdOption> categories;

  @JsonKey(fromJson: fromJsonText)
  final AbdText search;

  @JsonKey(fromJson: fromJsonLimit)
  final int limit;

  @JsonKey(fromJson: fromJsonBool)
  final bool enableRating;

  @JsonKey(fromJson: fromJsonTemplate)
  final AWVendorTemplate template;

  const AWVendorFields({
    required this.categories,
    required this.search,
    required this.limit,
    required this.enableRating,
    required this.template,
  });

  /// Connect the generated [_$AWVendorFieldsFromJson] function to the `fromJson`
  /// factory.
  factory AWVendorFields.fromJson(Map<String, dynamic> json) => _$AWVendorFieldsFromJson(json);

  /// Connect the generated [_$AWVendorFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVendorFieldsToJson(this);

  static int fromJsonLimit(dynamic value) {
    return ConvertData.stringToInt(value, 4);
  }

  static bool fromJsonBool(dynamic value) {
    return ConvertData.toBoolValue(value) ?? true;
  }

  static AbdText fromJsonText(dynamic value) {
    Map<String, dynamic>? data = ConvertData.toMapStringDynamic(value);
    return AbdText.fromJson(data ?? {});
  }

  static AWVendorTemplate fromJsonTemplate(dynamic value) {
    return AWVendorTemplate.fromJson(value is Map ? Map.castFrom<dynamic, dynamic, String, dynamic>(value) : {});
  }
}

/// Banner style
@JsonSerializable(explicitToJson: true)
class AWVendorStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: fromJsonPad)
  final double pad;

  @JsonKey(fromJson: fromJsonHeight)
  final double height;

  @JsonKey(fromJson: fromJsonColumn)
  final int col;

  @JsonKey(fromJson: fromJsonRatio)
  final double ratio;

  @JsonKey(fromJson: fromJsonWidthItem)
  final double widthItem;

  final AbdColor backgroundColorItem;

  final AbdColor textColor;

  final AbdColor subTextColor;

  @JsonKey(fromJson: fromJsonRadiusItem)
  final double radius;

  final AbdColor shadowColor;

  @JsonKey(fromJson: fromJsonOffsetX)
  final double offsetX;

  @JsonKey(fromJson: fromJsonOffsetY)
  final double offsetY;

  @JsonKey(fromJson: fromJsonBlurRadius)
  final double blurRadius;

  @JsonKey(fromJson: fromJsonSpreadRadius)
  final double spreadRadius;

  const AWVendorStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.pad,
    required this.height,
    required this.col,
    required this.ratio,
    required this.widthItem,
    required this.backgroundColorItem,
    required this.textColor,
    required this.subTextColor,
    required this.radius,
    required this.shadowColor,
    required this.offsetX,
    required this.offsetY,
    required this.blurRadius,
    required this.spreadRadius,
  });

  /// Connect the generated [_$AWVendorStyleFromJson] function to the `fromJson`
  /// factory.
  factory AWVendorStyle.fromJson(Map<String, dynamic> json) => _$AWVendorStyleFromJson(json);

  /// Connect the generated [_$AWVendorStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVendorStyleToJson(this);

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value, 12);
  }

  static double fromJsonHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 300);
  }

  static int fromJsonColumn(dynamic value) {
    return ConvertData.stringToInt(value, 2);
  }

  static double fromJsonRatio(dynamic value) {
    return ConvertData.stringToDouble(value, 1);
  }

  static double fromJsonWidthItem(dynamic value) {
    return ConvertData.stringToDouble(value, 250);
  }

  static double fromJsonRadiusItem(dynamic value) {
    return ConvertData.stringToDouble(value, 8);
  }

  static double fromJsonOffsetX(dynamic value) {
    return ConvertData.stringToDouble(value, 0);
  }

  static double fromJsonOffsetY(dynamic value) {
    return ConvertData.stringToDouble(value, 4);
  }

  static double fromJsonBlurRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 24);
  }

  static double fromJsonSpreadRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 0);
  }
}

/// Banner template item
@JsonSerializable(explicitToJson: true)
class AWVendorTemplate {
  final AWVendorTemplateType template;

  @JsonKey(fromJson: fromJsonData)
  final AWVendorDataTemplate data;

  const AWVendorTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AWVendorTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWVendorTemplate.fromJson(Map<String, dynamic> json) => _$AWVendorTemplateFromJson(json);

  /// Connect the generated [_$AWVendorTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVendorTemplateToJson(this);

  static AWVendorDataTemplate fromJsonData(dynamic value) {
    return AWVendorDataTemplate.fromJson(value is Map ? Map.castFrom<dynamic, dynamic, String, dynamic>(value) : {});
  }
}

/// Banner data template item
@JsonSerializable(explicitToJson: true)
class AWVendorDataTemplate {
  @JsonKey(fromJson: fromJsonSize, toJson: fromJsonSize, includeIfNull: false)
  final Size? sizeBanner;

  @JsonKey(fromJson: fromJsonAbdColor, toJson: toJsonAbdColor, includeIfNull: false)
  final AbdColor? colorBegin;

  @JsonKey(fromJson: fromJsonAbdColor, toJson: toJsonAbdColor, includeIfNull: false)
  final AbdColor? colorEnd;

  @JsonKey(fromJson: fromJsonAlignmentDirectional, toJson: toJsonAlignmentDirectional, includeIfNull: false)
  final AlignmentDirectional? begin;

  @JsonKey(fromJson: fromJsonAlignmentDirectional, toJson: toJsonAlignmentDirectional, includeIfNull: false)
  final AlignmentDirectional? end;

  const AWVendorDataTemplate({
    this.sizeBanner,
    this.colorBegin,
    this.colorEnd,
    this.begin,
    this.end,
  });

  /// Connect the generated [_$AWVendorDataTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AWVendorDataTemplate.fromJson(Map<String, dynamic> json) => _$AWVendorDataTemplateFromJson(json);

  /// Connect the generated [_$AWVendorDataTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AWVendorDataTemplateToJson(this);

  static AbdImage fromJsonImage(dynamic value) {
    if (value is Map) {
      return AbdImage.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return AbdImage.fromJson({});
  }

  static Size? fromJsonSize(dynamic value) {
    if (value is Size) {
      return value;
    }
    if (value is Map) {
      return ConvertData.toSizeValue(value);
    }
    return null;
  }

  static dynamic toJsonSize(Size? value) {
    if (value is Size) {
      return ConvertData.toMapSize(value);
    }
    return null;
  }

  static AbdColor? fromJsonAbdColor(dynamic value) {
    if (value is AbdColor) {
      return value;
    }
    if (value is Map) {
      return AbdColor.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }

    return null;
  }

  static dynamic toJsonAbdColor(AbdColor? value) {
    if (value is AbdColor) {
      return value.toJson();
    }

    return null;
  }

  static AlignmentDirectional? fromJsonAlignmentDirectional(dynamic value) {
    if (value is AlignmentDirectional) {
      return value;
    }
    if (value is String && value.isNotEmpty) {
      return ConvertData.toAlignmentDirectional(value);
    }

    return null;
  }

  static dynamic toJsonAlignmentDirectional(dynamic value) {
    if (value is AlignmentDirectional) {
      return ConvertData.toStringAlignmentDirectional(value);
    }
    return null;
  }
}
