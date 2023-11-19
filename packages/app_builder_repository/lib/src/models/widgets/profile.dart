
import 'package:json_annotation/json_annotation.dart';

import '../types/types.dart';

part 'profile.g.dart';


@JsonSerializable(explicitToJson: true)
class APProfile {

  final String id;

  final APProfileFields fields;

  final APProfileStyle styles;

  const APProfile({
    required this.id,
    required this.fields,
    required this.styles,
  });

  /// Connect the generated [_$APProfileFromJson] function to the `fromJson`
  /// factory.
  factory APProfile.fromJson(Map<String, dynamic> json) => _$APProfileFromJson(json);

  /// Connect the generated [_$APProfileToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APProfileToJson(this);

}

/// Text fields config
@JsonSerializable(explicitToJson: true)
class APProfileFields {

  final bool? enableChangeTheme;

  final bool? enableWallet;

  final bool? enablePhone;

  final bool? enableDownload;

  final bool? enableHelpInfo;

  final AbdText? phone;

  final AbdText? textCopyRight;

  @JsonKey(defaultValue: [])
  final List<APProfileFieldItemInfo> itemInfo;

  @JsonKey(defaultValue: [])
  final List<APProfileFieldItemSocial> itemSocial;

  const APProfileFields({
    this.enableChangeTheme,
    this.enableWallet,
    this.enablePhone,
    this.enableDownload,
    this.enableHelpInfo,
    this.phone,
    this.textCopyRight,
    required this.itemInfo,
    required this.itemSocial,
});

  /// Connect the generated [_$APProfileFieldsFromJson] function to the `fromJson`
  /// factory.
  factory APProfileFields.fromJson(Map<String, dynamic> json) => _$APProfileFieldsFromJson(json);

  /// Connect the generated [_$APProfileFieldsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APProfileFieldsToJson(this);

}

/// Profile style
@JsonSerializable(explicitToJson: true)
class APProfileStyle {
  final AbdSpacing? padding;


  const APProfileStyle({
    this.padding,
  });

  /// Connect the generated [_$APProfileStyleFromJson] function to the `fromJson`
  /// factory.
  factory APProfileStyle.fromJson(Map<String, dynamic> json) => _$APProfileStyleFromJson(json);

  /// Connect the generated [_$APProfileStyleToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APProfileStyleToJson(this);

}

/// ItemInfo item
@JsonSerializable(explicitToJson: true)
class APProfileFieldItemInfo {

  final APProfileFieldItemInfoData data;

  const APProfileFieldItemInfo({
    required this.data,
  });

  /// Connect the generated [_$APProfileFieldItemInfoFromJson] function to the `fromJson`
  /// factory.
  factory APProfileFieldItemInfo.fromJson(Map<String, dynamic> json) => _$APProfileFieldItemInfoFromJson(json);

  /// Connect the generated [_$APProfileFieldItemInfoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APProfileFieldItemInfoToJson(this);
}

/// Banner template item
@JsonSerializable(explicitToJson: true)
class APProfileFieldItemInfoData {
  final AbdText? title;

  final AbdAction? action;

  const APProfileFieldItemInfoData({
     this.title,
     this.action,
  });

  /// Connect the generated [_$APProfileFieldItemInfoDataFromJson] function to the `fromJson`
  /// factory.
  factory APProfileFieldItemInfoData.fromJson(Map<String, dynamic> json) => _$APProfileFieldItemInfoDataFromJson(json);

  /// Connect the generated [_$APProfileFieldItemInfoDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APProfileFieldItemInfoDataToJson(this);
}

/// Banner data template item
@JsonSerializable(explicitToJson: true)
class APProfileFieldItemSocial {

  final APProfileFieldItemSocialData data;

  const APProfileFieldItemSocial({
    required this.data,
  });

  /// Connect the generated [_$APProfileFieldItemSocialFromJson] function to the `fromJson`
  /// factory.
  factory APProfileFieldItemSocial.fromJson(Map<String, dynamic> json) => _$APProfileFieldItemSocialFromJson(json);

  /// Connect the generated [_$APProfileFieldItemSocialToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APProfileFieldItemSocialToJson(this);

}

/// Banner template item
@JsonSerializable(explicitToJson: true)
class APProfileFieldItemSocialData {
  final AbdText? linkSocial;

  final AbdIcon? icon;

  final AbdColor? background;

  final AbdColor? iconColor;

  final bool? enableRound;

  final bool? enableOutLine;

  const APProfileFieldItemSocialData({
    this.linkSocial,
    this.icon,
    this.background,
    this.iconColor,
    this.enableRound,
    this.enableOutLine,
  });

  /// Connect the generated [_$APProfileFieldItemSocialDataFromJson] function to the `fromJson`
  /// factory.
  factory APProfileFieldItemSocialData.fromJson(Map<String, dynamic> json) => _$APProfileFieldItemSocialDataFromJson(json);

  /// Connect the generated [_$APProfileFieldItemSocialDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$APProfileFieldItemSocialDataToJson(this);
}
