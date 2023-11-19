// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdPosition _$AbdPositionFromJson(Map<String, dynamic> json) => AbdPosition(
      width: ConvertData.stringToDoubleCanBeNull(json['width']),
      height: ConvertData.stringToDoubleCanBeNull(json['height']),
      left: ConvertData.stringToDoubleCanBeNull(json['left']),
      right: ConvertData.stringToDoubleCanBeNull(json['right']),
      bottom: ConvertData.stringToDoubleCanBeNull(json['bottom']),
      top: ConvertData.stringToDoubleCanBeNull(json['top']),
    );

Map<String, dynamic> _$AbdPositionToJson(AbdPosition instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'left': instance.left,
      'right': instance.right,
      'bottom': instance.bottom,
      'top': instance.top,
    };
