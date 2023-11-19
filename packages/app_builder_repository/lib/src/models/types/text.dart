import 'package:json_annotation/json_annotation.dart';

import 'style.dart';

part 'text.g.dart';

@JsonSerializable(explicitToJson: true)
class AbdText {
  final AbdStyle? style;

  @TextTranslateConverter()
  final Map<String, String> translate;

  AbdText({required this.style, required this.translate});

  /// Connect the generated [_$AbdTextFromJson] function to the `fromJson`
  /// factory.
  factory AbdText.fromJson(Map<String, dynamic> json) => _$AbdTextFromJson({...json, 'translate': json});

  /// Connect the generated [_$AbdTextToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$AbdTextToJson(this);
    Map<String, dynamic> newJson = Map<String, dynamic>.of(json['translate']);
    if (style != null) {
      newJson.putIfAbsent('style', () => style?.toJson());
    }
    return newJson;
  }

  /// Get text by language code
  String getText([String code = 'text']) => translate[code] ?? '';
}

/// Create translate object
///
class TextTranslateConverter implements JsonConverter<Map<String, String>, Map<String, dynamic>> {
  const TextTranslateConverter();

  @override
  Map<String, String> fromJson(Map<String, dynamic> json) {
    Map<String, String> jsonWithoutAbdStyle = Map<String, String>.of({});

    // Get only language value
    for (String key in json.keys) {
      if (key != 'style') {
        jsonWithoutAbdStyle.putIfAbsent(key, () => json[key].toString());
      }
    }

    if (jsonWithoutAbdStyle.isEmpty) {
      return {'text': ''};
    }

    return jsonWithoutAbdStyle;
  }

  @override
  Map<String, dynamic> toJson(Map<String, String> object) => object;
}
