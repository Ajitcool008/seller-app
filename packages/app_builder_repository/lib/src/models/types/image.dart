import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable(explicitToJson: true)
class AbdImage {
  @JsonKey(defaultValue: '')
  final String src;

  final Map<String, String>? translate;

  const AbdImage({required this.src, required this.translate});

  /// Connect the generated [_$AbdImageFromJson] function to the `fromJson`
  /// factory.
  factory AbdImage.fromJson(dynamic json) {
    if(json != null){
      if(json is Map){
        Map<String, dynamic> newJson = {};
        Map<String, dynamic> translate = {};

        newJson.putIfAbsent('src', () => json['src']);

        for (String key in json.keys) {
          if (json[key] != null && '${json[key]}'.startsWith('http')) {
            translate.putIfAbsent(key, () => '${json[key]}');
          }
        }

        // Put translate value
        if (translate.keys.isNotEmpty) {
          newJson.putIfAbsent('translate', () => translate);
        }
        return _$AbdImageFromJson(newJson);
      }
      if(json is String){
        return AbdImage(src: json, translate: {});
      }
    }
    return const AbdImage(src: "", translate: {});

  }

  /// Connect the generated [_$AbdImageToJson] function to the `toJson` method.
  Map<String, dynamic> toJsonDefault() => _$AbdImageToJson(this);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> newJson = {
      'src': src,
    };

    if (translate != null && translate is Map<String, String>) {
      for (String key in translate!.keys) {
        if (translate?[key] is String) {
          newJson.putIfAbsent(key, () => '${translate?[key]}');
        }
      }
    }
    return newJson;
  }

  /// Get text by language code
  String? getImage([String code = 'src']) => code == 'src' ? src : translate?[code];
}
