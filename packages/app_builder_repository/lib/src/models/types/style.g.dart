// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdStyle _$AbdStyleFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const [
      'color',
      'fontSize',
      'fontFamily',
      'fontWeight',
      'letterSpacing',
      'height',
      'textDecoration',
      'backgroundColor'
    ],
  );
  return AbdStyle(
    color: AbdStyle.fromJsonColor(json['color']),
    fontSize: json['fontSize'] == null
        ? 14
        : ConvertData.stringToDouble(json['fontSize']),
    fontFamily: ConvertData.toStringValueCanBeNull(json['fontFamily']),
    fontWeight: ConvertData.toStringValueCanBeNull(json['fontWeight']),
    letterSpacing: ConvertData.stringToDoubleCanBeNull(json['letterSpacing']),
    height: ConvertData.stringToDoubleCanBeNull(json['height']),
    textDecoration: ConvertData.toStringValueCanBeNull(json['textDecoration']),
    backgroundColor: AbdStyle.fromJsonColor(json['backgroundColor']),
  );
}

Map<String, dynamic> _$AbdStyleToJson(AbdStyle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', instance.color?.toJson());
  writeNotNull('fontSize', instance.fontSize);
  writeNotNull('fontFamily', instance.fontFamily);
  writeNotNull('fontWeight', instance.fontWeight);
  writeNotNull('letterSpacing', instance.letterSpacing);
  writeNotNull('height', instance.height);
  writeNotNull('textDecoration', instance.textDecoration);
  writeNotNull('backgroundColor', instance.backgroundColor?.toJson());
  return val;
}
