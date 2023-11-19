// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PointReward _$PointRewardFromJson(Map<String, dynamic> json) => PointReward(
      pointsBalance: json['points_balance'] as int?,
      pointsLabel: json['points_label'] as String?,
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => PointRewardEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalRows: json['total_rows'] as String?,
      currentPage: json['current_page'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$PointRewardToJson(PointReward instance) =>
    <String, dynamic>{
      'points_balance': instance.pointsBalance,
      'points_label': instance.pointsLabel,
      'events': instance.events,
      'total_rows': instance.totalRows,
      'current_page': instance.currentPage,
      'count': instance.count,
    };

PointRewardEvent _$PointRewardEventFromJson(Map<String, dynamic> json) =>
    PointRewardEvent(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      points: json['points'] as String?,
      type: json['type'] as String?,
      userPointsId: json['user_points_id'] as String?,
      orderId: json['order_id'] as String?,
      adminUserId: json['admin_user_id'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      date: json['date'] as String?,
      dateDisplayHuman: json['date_display_human'] as String?,
      dateDisplay: json['date_display'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$PointRewardEventToJson(PointRewardEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'points': instance.points,
      'type': instance.type,
      'user_points_id': instance.userPointsId,
      'order_id': instance.orderId,
      'admin_user_id': instance.adminUserId,
      'data': instance.data,
      'date': instance.date,
      'date_display_human': instance.dateDisplayHuman,
      'date_display': instance.dateDisplay,
      'description': instance.description,
    };
