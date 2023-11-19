import 'package:appcheap_flutter_core/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_dimensions.g.dart';

@JsonSerializable()
class ProductDimensions {
  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  double? length;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  double? width;

  @JsonKey(fromJson: ConvertData.stringToDoubleCanBeNull)
  double? height;

  ProductDimensions({
    this.length,
    this.width,
    this.height,
  });

  factory ProductDimensions.fromJson(Map<String, dynamic> json) => _$ProductDimensionsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDimensionsToJson(this);
}
