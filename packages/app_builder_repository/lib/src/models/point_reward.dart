import 'package:json_annotation/json_annotation.dart';

part 'point_reward.g.dart';

@JsonSerializable()
class PointReward{
  @JsonKey(name: 'points_balance')
  int? pointsBalance;

  @JsonKey(name: 'points_label')
  String? pointsLabel;

  List<PointRewardEvent>? events;

  @JsonKey(name: 'total_rows')
  String? totalRows;

  @JsonKey(name: 'current_page')
  int? currentPage;

  int? count;

  PointReward({
    this.pointsBalance,
    this.pointsLabel,
    this.events,
    this.totalRows,
    this.currentPage,
    this.count,
  });

  factory PointReward.fromJson(Map<String, dynamic> json) => _$PointRewardFromJson(json);

  Map<String, dynamic> toJson() => _$PointRewardToJson(this);
}

@JsonSerializable()
class PointRewardEvent{
  String? id;

  @JsonKey(name: 'user_id')
  String? userId;

  String? points;

  String? type;

  @JsonKey(name: 'user_points_id')
  String? userPointsId;

  @JsonKey(name: 'order_id')
  String? orderId;

  @JsonKey(name: 'admin_user_id')
  String? adminUserId;

  Map<String, dynamic>? data;

  String? date;

  @JsonKey(name: 'date_display_human')
  String? dateDisplayHuman;

  @JsonKey(name: 'date_display')
  String? dateDisplay;

  String? description;

  PointRewardEvent({
    this.id,
    this.userId,
    this.points,
    this.type,
    this.userPointsId,
    this.orderId,
    this.adminUserId,
    this.data,
    this.date,
    this.dateDisplayHuman,
    this.dateDisplay,
    this.description,
  });

  factory PointRewardEvent.fromJson(Map<String, dynamic> json) => _$PointRewardEventFromJson(json);

  Map<String, dynamic> toJson() => _$PointRewardEventToJson(this);
}