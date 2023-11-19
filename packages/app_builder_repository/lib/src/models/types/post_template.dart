import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:app_builder_repository/src/convert_data.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_template.g.dart';

enum AbdPostTemplateType {
  @JsonValue('default')
  defaultT,
  @JsonValue('vertical')
  vertical,
  @JsonValue('horizontal')
  horizontal,
  @JsonValue('number')
  number,
  @JsonValue('overlay')
  overlay,
  @JsonValue('timeLine')
  timeLine,
  @JsonValue('verticalCenter')
  verticalCenter,
  @JsonValue('topName')
  topName,
  @JsonValue('emerge')
  emerge,
  @JsonValue('gradient')
  gradient,
}

enum AbdPostLayout {
  @JsonValue('list')
  list,
  @JsonValue('carousel')
  carousel,
  @JsonValue('masonry')
  masonry,
  @JsonValue('big-first')
  bigFirst,
  @JsonValue('slideshow')
  slideshow,
}

@JsonSerializable(explicitToJson: true)
class AbdPostField {
  @JsonKey(fromJson: fromJsonName, toJson: toJsonName, includeIfNull: false)
  final AbdText? name;

  @JsonKey(includeIfNull: false)
  final AbdPostLayout? layoutItem;

  @JsonKey(defaultValue: 'posts')
  final String postType;

  final AbdText search;

  @JsonKey(fromJson: fromJsonListOption)
  final List<AbdOption> tags;

  @JsonKey(fromJson: fromJsonListOption)
  final List<AbdOption> categories;

  @JsonKey(fromJson: fromJsonListOption)
  final List<AbdOption> post;

  @JsonKey(fromJson: toJsonPage)
  final int page;

  @JsonKey(fromJson: toJsonPerPage)
  final int perPage;

  @JsonKey(fromJson: toJsonBoolFalse)
  final bool enableLoadMore;

  @JsonKey(fromJson: toJsonTemplate)
  final AbdPostTemplate template;

  const AbdPostField({
    this.name,
    this.layoutItem,
    required this.postType,
    required this.search,
    required this.tags,
    required this.categories,
    required this.post,
    required this.page,
    required this.perPage,
    required this.enableLoadMore,
    required this.template,
  });

  /// Connect the generated [_$AbdPostFieldFromJson] function to the `fromJson`
  /// factory.
  factory AbdPostField.fromJson(Map<String, dynamic> json) => _$AbdPostFieldFromJson(json);

  /// Connect the generated [_$AbdPostFieldToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdPostFieldToJson(this);

  static AbdText? fromJsonName(dynamic value) {
    if (value is AbdText) {
      return value;
    }
    if (value is Map) {
      return AbdText.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value));
    }
    return null;
  }

  static dynamic toJsonName(AbdText? value) {
    if (value is AbdText) {
      return value.toJson();
    }
    return null;
  }

  static List<AbdOption> fromJsonListOption(dynamic value) {
    if (value is List<AbdOption>) {
      return value;
    }

    List<AbdOption> data = [];
    if (value is List) {
      for (int i = 0; i < value.length; i++) {
        if (value[i] is Map) {
          data.add(AbdOption.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(value[i])));
        }
      }
    }
    return data;
  }

  static int toJsonPage(dynamic value) {
    return ConvertData.stringToInt(value, 1);
  }

  static int toJsonPerPage(dynamic value) {
    return ConvertData.stringToInt(value, 10);
  }

  static bool toJsonBoolFalse(dynamic value) {
    return ConvertData.toBoolValue(value) ?? false;
  }

  static AbdPostTemplate toJsonTemplate(dynamic value) {
    Map<String, dynamic> data = {'template': 'list', 'data': {}};
    if (value is Map) {
      data = {
        ...data,
        ...Map.castFrom<dynamic, dynamic, String, dynamic>(value),
      };
    }
    return AbdPostTemplate.fromJson(data);
  }
}

@JsonSerializable(explicitToJson: true)
class AbdPostStyle {
  final AbdSpacing padding;

  final AbdSpacing margin;

  final AbdColor background;

  @JsonKey(fromJson: fromJsonPad)
  final double pad;

  @JsonKey(fromJson: fromJsonDividerWidth)
  final double dividerWidth;

  final AbdColor dividerColor;

  @JsonKey(fromJson: fromJsonHeight)
  final double height;

  @JsonKey(fromJson: fromJsonMaxHeightImage)
  final double maxHeightImage;

  final AbdColor indicatorColor;

  final AbdColor indicatorActiveColor;

  final AbdColor backgroundColorItem;

  final AbdColor textColor;

  final AbdColor subTextColor;

  final AbdColor labelColor;

  final AbdColor labelTextColor;

  @JsonKey(fromJson: fromJsonLabelRadius)
  final double labelRadius;

  @JsonKey(fromJson: fromJsonRadius)
  final AbdRadius radius;

  @JsonKey(fromJson: fromJsonRadiusImage)
  final double radiusImage;

  final AbdSpacing? paddingContent;

  final AbdColor shadowColor;

  @JsonKey(fromJson: fromJsonOffsetX)
  final double offsetX;

  @JsonKey(fromJson: fromJsonOffsetY)
  final double offsetY;

  @JsonKey(fromJson: fromJsonBlurRadius)
  final double blurRadius;

  @JsonKey(fromJson: fromJsonSpreadRadius)
  final double spreadRadius;

  const AbdPostStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.pad,
    required this.dividerWidth,
    required this.dividerColor,
    required this.height,
    required this.maxHeightImage,
    required this.indicatorColor,
    required this.indicatorActiveColor,
    required this.backgroundColorItem,
    required this.textColor,
    required this.subTextColor,
    required this.labelColor,
    required this.labelTextColor,
    required this.labelRadius,
    required this.radius,
    required this.radiusImage,
    required this.paddingContent,
    required this.shadowColor,
    required this.offsetX,
    required this.offsetY,
    required this.blurRadius,
    required this.spreadRadius,
  });

  /// Connect the generated [_$AbdPostStyleFromJson] function to the `fromJson`
  /// factory.
  factory AbdPostStyle.fromJson(Map<String, dynamic> json) => _$AbdPostStyleFromJson(json);

  /// Connect the generated [_$AbdPostStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdPostStyleToJson(this);

  static double fromJsonPad(dynamic value) {
    return ConvertData.stringToDouble(value, 12);
  }

  static double fromJsonDividerWidth(dynamic value) {
    return ConvertData.stringToDouble(value, 1);
  }

  static double fromJsonHeight(dynamic value) {
    return ConvertData.stringToDouble(value, 300);
  }

  static double fromJsonMaxHeightImage(dynamic value) {
    return ConvertData.stringToDouble(value, 300);
  }

  static double fromJsonLabelRadius(dynamic value) {
    return ConvertData.stringToDouble(value, 19);
  }

  static double fromJsonRadiusImage(dynamic value) {
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

  static AbdRadius fromJsonRadius(dynamic value) {
    if (value is int) {
      return AbdRadius(
          topLeft: value.toDouble(),
          topRight: value.toDouble(),
          bottomLeft: value.toDouble(),
          bottomRight: value.toDouble());
    } else {
      return AbdRadius.fromJson(value);
    }
  }
}

@JsonSerializable(explicitToJson: true)
class AbdPostTemplate {
  @JsonKey(defaultValue: AbdPostTemplateType.defaultT)
  final AbdPostTemplateType template;

  final AbdPostTemplateData data;

  const AbdPostTemplate({
    required this.template,
    required this.data,
  });

  /// Connect the generated [_$AbdPostTemplateFromJson] function to the `fromJson`
  /// factory.
  factory AbdPostTemplate.fromJson(Map<String, dynamic> json) => _$AbdPostTemplateFromJson(json);

  /// Connect the generated [_$AbdPostTemplateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdPostTemplateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AbdPostTemplateData {
  @JsonKey(fromJson: fromJsonSize, toJson: toJsonSize, includeIfNull: false)
  final Size? size;

  @JsonKey(fromJson: fromJsonBoxFit)
  final BoxFit? imageSize;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableCategory;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableDate;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableAuthor;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableComments;

  @JsonKey(fromJson: fromJsonString, includeIfNull: false)
  final String? nameFieldTopLeftImage;

  @JsonKey(fromJson: fromJsonString, includeIfNull: false)
  final String? nameFieldTopRightImage;

  @JsonKey(fromJson: fromJsonString, includeIfNull: false)
  final String? nameFieldAboveName;

  @JsonKey(fromJson: fromJsonString, includeIfNull: false)
  final String? nameFieldBottomLeft;

  @JsonKey(fromJson: fromJsonString, includeIfNull: false)
  final String? nameFieldBottomRight;

  @JsonKey(fromJson: fromJsonString, includeIfNull: false)
  final String? alignment;

  @JsonKey(fromJson: fromJsonString, includeIfNull: false)
  final String? nameFieldAbove;

  @JsonKey(fromJson: fromJsonString, includeIfNull: false)
  final String? nameFieldBelow;

  @JsonKey(fromJson: fromJsonString, includeIfNull: false)
  final String? nameFieldBelowName;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableExcerpt;

  @JsonKey(fromJson: fromJsonAbdColor, toJson: toJsonAbdColor, includeIfNull: false)
  final AbdColor? color;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull, includeIfNull: false)
  final double? opacity;

  @JsonKey(fromJson: fromJsonAbdColor, toJson: toJsonAbdColor, includeIfNull: false)
  final AbdColor? colorLine;

  @JsonKey(fromJson: ConvertData.toBoolValue, includeIfNull: false)
  final bool? enableImageAuthor;

  @JsonKey(fromJson: fromJsonAbdColor, toJson: toJsonAbdColor, includeIfNull: false)
  final AbdColor? colorBegin;

  @JsonKey(fromJson: fromJsonAbdColor, toJson: toJsonAbdColor, includeIfNull: false)
  final AbdColor? colorEnd;

  @JsonKey(fromJson: fromJsonAlignmentDirectional, toJson: toJsonAlignmentDirectional, includeIfNull: false)
  final AlignmentDirectional? begin;

  @JsonKey(fromJson: fromJsonAlignmentDirectional, toJson: toJsonAlignmentDirectional, includeIfNull: false)
  final AlignmentDirectional? end;

  const AbdPostTemplateData({
    this.size,
    this.imageSize,
    this.enableCategory,
    this.enableDate,
    this.enableAuthor,
    this.enableComments,
    this.nameFieldTopLeftImage,
    this.nameFieldTopRightImage,
    this.nameFieldAboveName,
    this.nameFieldBottomLeft,
    this.nameFieldBottomRight,
    this.alignment,
    this.nameFieldAbove,
    this.nameFieldBelow,
    this.nameFieldBelowName,
    this.enableExcerpt,
    this.color,
    this.opacity,
    this.colorLine,
    this.enableImageAuthor,
    this.colorBegin,
    this.colorEnd,
    this.begin,
    this.end,
  });

  /// Connect the generated [_$AbdPostTemplateDataFromJson] function to the `fromJson`
  /// factory.
  factory AbdPostTemplateData.fromJson(Map<String, dynamic> json) => _$AbdPostTemplateDataFromJson(json);

  /// Connect the generated [_$AbdPostTemplateDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdPostTemplateDataToJson(this);

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

  static dynamic fromJsonBoxFit(dynamic value) {
    if (value is BoxFit) {
      return value;
    }

    if (value is String && value.isNotEmpty) {
      return ConvertData.toBoxFit(value);
    }

    return null;
  }

  static String? fromJsonString(dynamic value) {
    if (value is String) {
      return value;
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
