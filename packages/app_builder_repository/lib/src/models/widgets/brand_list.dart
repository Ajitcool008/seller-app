import 'package:json_annotation/json_annotation.dart';

part 'brand_list.g.dart';

@JsonSerializable()
class APBrandListData {
  bool? enableImage;
  bool? enableNumber;
  bool? enableBorderImage;

  APBrandListData({
    this.enableImage,
    this.enableNumber,
    this.enableBorderImage,
  });
  factory APBrandListData.fromJson(Map<String, dynamic> json) => _$APBrandListDataFromJson(json);

  Map<String, dynamic> toJson() => _$APBrandListDataToJson(this);
}
