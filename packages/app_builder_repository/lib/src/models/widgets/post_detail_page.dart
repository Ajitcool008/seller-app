import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'post_detail_page.g.dart';

enum APPostDetailLayout {
  @JsonValue('default')
  defaultLayout,
  @JsonValue('curve_top')
  curveTop,
  @JsonValue('curve_bottom')
  curveBottom,
  @JsonValue('overlay')
  overlay,
  @JsonValue('gradient')
  gradient,
  @JsonValue('stack')
  stack,
  @JsonValue('layer')
  layer,
}

@JsonSerializable(explicitToJson: true)
class APPostDetail {
  final String id;

  final String type;

  final APPostDetailFields fields;

  final APPostDetailStyle styles;

  @JsonKey(defaultValue: APPostDetailLayout.defaultLayout)
  final APPostDetailLayout layout;

  const APPostDetail({
    required this.id,
    required this.type,
    required this.fields,
    required this.styles,
    required this.layout,
  });

  /// Connect the generated [_$APPostDetailFromJson] function to the `fromJson`
  /// factory.
  factory APPostDetail.fromJson(Map<String, dynamic> json) => _$APPostDetailFromJson(json);

  /// Connect the generated [_$APPostDetailToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostDetailToJson(this);
}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class APPostDetailFields {
  final bool? enableBlock;

  final List<APPostDetailFieldRow>? rows;

  const APPostDetailFields({
    this.enableBlock,
    this.rows,
  });

  /// Connect the generated [_$APPostDetailFieldsFromJson] function to the `fromJson`
  /// factory.
  factory APPostDetailFields.fromJson(Map<String, dynamic> json) => _$APPostDetailFieldsFromJson(json);

  /// Connect the generated [_$APPostDetailFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostDetailFieldsToJson(this);
}

/// Text style
@JsonSerializable(explicitToJson: true)
class APPostDetailStyle {
  final AbdSpacing? padding;

  final AbdSpacing? margin;

  final AbdColor? background;

  final AbdColor? color;

  final String? thumbSizes;

  final AbdColor? backgroundCategory;

  final AbdColor? colorCategory;

  final double? radiusCategory;

  @JsonKey(defaultValue: BoxFit.cover)
  final BoxFit imageSize;

  const APPostDetailStyle({
    required this.padding,
    required this.margin,
    required this.background,
    required this.color,
    this.thumbSizes,
    required this.imageSize,
    this.backgroundCategory,
    this.colorCategory,
    this.radiusCategory,
  });

  /// Connect the generated [_$APPostDetailStyleFromJson] function to the `fromJson`
  /// factory.
  factory APPostDetailStyle.fromJson(Map<String, dynamic> json) => _$APPostDetailStyleFromJson(json);

  /// Connect the generated [_$APPostDetailStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostDetailStyleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APPostDetailFieldRow {
  final APPostDetailFieldRowData data;

  const APPostDetailFieldRow({
    required this.data,
  });

  /// Connect the generated [_$APPostDetailFieldRowFromJson] function to the `fromJson`
  /// factory.
  factory APPostDetailFieldRow.fromJson(Map<String, dynamic> json) => _$APPostDetailFieldRowFromJson(json);

  /// Connect the generated [_$APPostDetailFieldRowToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostDetailFieldRowToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APPostDetailFieldRowData {
  final AbdAlignment? mainAxisAlignment;

  final AbdAlignment? crossAxisAlignment;

  @JsonKey(defaultValue: false)
  final bool divider;

  final List<APPostDetailFieldColumn>? columns;

  final String? visit;

  const APPostDetailFieldRowData({
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    required this.divider,
    this.columns,
    this.visit,
  });

  /// Connect the generated [_$APPostDetailFieldRowDataFromJson] function to the `fromJson`
  /// factory.
  factory APPostDetailFieldRowData.fromJson(Map<String, dynamic> json) => _$APPostDetailFieldRowDataFromJson(json);

  /// Connect the generated [_$APPostDetailFieldRowDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostDetailFieldRowDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APPostDetailFieldColumn {
  final APPostDetailFieldColumnValue value;

  const APPostDetailFieldColumn({
    required this.value,
  });

  /// Connect the generated [_$APPostDetailFieldColumnFromJson] function to the `fromJson`
  /// factory.
  factory APPostDetailFieldColumn.fromJson(Map<String, dynamic> json) => _$APPostDetailFieldColumnFromJson(json);

  /// Connect the generated [_$APPostDetailFieldColumnToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostDetailFieldColumnToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APPostDetailFieldColumnValue {
  final String? type;

  final bool? enableFlex;

  final String? flex;

  final String? queryBy;

  final AbdSpacing? margin;

  final AbdSpacing? padding;

  final AbdColor? foreground;

  final AbdText? textHtml;

  const APPostDetailFieldColumnValue({
    this.type,
    this.enableFlex,
    this.flex,
    this.queryBy,
    this.margin,
    this.padding,
    this.foreground,
    this.textHtml,
  });

  /// Connect the generated [_$APPostDetailFieldColumnValueFromJson] function to the `fromJson`
  /// factory.
  factory APPostDetailFieldColumnValue.fromJson(Map<String, dynamic> json) =>
      _$APPostDetailFieldColumnValueFromJson(json);

  /// Connect the generated [_$APPostDetailFieldColumnValueToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostDetailFieldColumnValueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APPostDetailConfig {
  final bool? enableAppbarComment;

  final bool? enableAppbarWishList;

  final bool? enableAppbarShare;

  const APPostDetailConfig({
    this.enableAppbarComment,
    this.enableAppbarWishList,
    this.enableAppbarShare,
  });

  /// Connect the generated [_$APPostDetailConfigFromJson] function to the `fromJson`
  /// factory.
  factory APPostDetailConfig.fromJson(Map<String, dynamic> json) => _$APPostDetailConfigFromJson(json);

  /// Connect the generated [_$APPostDetailConfigToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APPostDetailConfigToJson(this);
}
