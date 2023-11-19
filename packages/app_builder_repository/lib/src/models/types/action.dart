import 'package:app_builder_repository/src/convert_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'action.g.dart';

@JsonSerializable(explicitToJson: true)
class AbdAction {
  final AbdActionData action;

  final Map<String, AbdActionData>? translate;

  const AbdAction({required this.action, required this.translate});

  /// Connect the generated [_$AbdActionFromJson] function to the `fromJson`
  /// factory.
  factory AbdAction.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> newJson = {};
    Map<String, dynamic> translate = {};

    // Put default action
    Map<String, dynamic> defaultAction = {
      'type': json['type'] ?? 'screen',
      'route': json['route'] ?? '/',
      'args': json['args'],
    };
    newJson.putIfAbsent('action', () => defaultAction);
    // translate.putIfAbsent('icon', () => defaultIcon);

    for (String key in json.keys) {
      if (key != 'type' && key != 'route' && key != 'args' && json[key] is Map) {
        translate.putIfAbsent(key, () => json[key]);
      }
    }

    // Put translate value
    if (translate.keys.isNotEmpty) {
      newJson.putIfAbsent('translate', () => translate);
    }
    return _$AbdActionFromJson(newJson);
  }

  /// Connect the generated [_$AbdActionToJson] function to the `toJson` method.
  Map<String, dynamic> toJsonDefault() => _$AbdActionToJson(this);
  
  Map<String, dynamic> toJson() {
    Map<String, dynamic> newJson = {
      'type': action.type,
      'route': action.route,
      'args': action.args,
    };

    if (translate != null && translate is Map<String, AbdActionData>) {
      for (String key in translate!.keys) {
        if (translate?[key] is AbdActionData) {
          newJson.putIfAbsent(key, () => translate![key]!.toJson());
        }
      }
    }
    return newJson;
  }

  /// Get text by language code
  AbdActionData? getIcon([String code = 'text']) => code == 'text' ? action : translate?[code];
}

@JsonSerializable()
class AbdActionData {
  @JsonKey(fromJson: ConvertData.toStringValue, defaultValue: 'screen')
  final String type;

  @JsonKey(fromJson: ConvertData.toStringValue, defaultValue: '/')
  final String route;

  @JsonKey(fromJson: ConvertData.toMapStringDynamic)
  final Map<String, dynamic>? args;

  const AbdActionData({required this.type, required this.route, this.args});

  /// Connect the generated [_$AbdActionDataFromJson] function to the `fromJson`
  /// factory.
  factory AbdActionData.fromJson(Map<String, dynamic> json) => _$AbdActionDataFromJson(json);

  /// Connect the generated [_$AbdActionDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AbdActionDataToJson(this);
}
