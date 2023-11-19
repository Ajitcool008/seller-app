// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbdAction _$AbdActionFromJson(Map<String, dynamic> json) => AbdAction(
      action: AbdActionData.fromJson(json['action'] as Map<String, dynamic>),
      translate: (json['translate'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, AbdActionData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$AbdActionToJson(AbdAction instance) => <String, dynamic>{
      'action': instance.action.toJson(),
      'translate': instance.translate?.map((k, e) => MapEntry(k, e.toJson())),
    };

AbdActionData _$AbdActionDataFromJson(Map<String, dynamic> json) =>
    AbdActionData(
      type: json['type'] == null
          ? 'screen'
          : ConvertData.toStringValue(json['type']),
      route: json['route'] == null
          ? '/'
          : ConvertData.toStringValue(json['route']),
      args: ConvertData.toMapStringDynamic(json['args']),
    );

Map<String, dynamic> _$AbdActionDataToJson(AbdActionData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'route': instance.route,
      'args': instance.args,
    };
