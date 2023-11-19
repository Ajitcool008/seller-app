// App core
import 'package:appcheap_flutter_core/utils/convert_data.dart';

// Packages & Dependencies or Helper function
import 'package:json_annotation/json_annotation.dart';

part 'report_stats.g.dart';

enum TimePeriodWoo {
  week,
  month,
  lastMonth,
  year,
  all,
}

extension PeriodToString on TimePeriodWoo {
  String getValue() {
    switch (this) {
      case TimePeriodWoo.week:
        return 'week';
      case TimePeriodWoo.month:
        return 'month';
      case TimePeriodWoo.lastMonth:
        return 'last_month';
      case TimePeriodWoo.year:
        return 'year';
      default:
        return '';
    }
  }
}

@JsonSerializable()
class ReportStats {
  ReportStatsData? data;

  @JsonKey(name: 'price_decimal')
  String? priceDecimal;

  String? currency;

  ReportStats({this.data, this.priceDecimal, this.currency});

  factory ReportStats.fromJson(Map<String, dynamic> json) => _$ReportStatsFromJson(json);
  Map<String, dynamic> toJson() => _$ReportStatsToJson(this);
}

@JsonSerializable()
class ReportStatsData {
  @JsonKey(name: 'last_month')
  Stats? lastMonth;

  Stats? month;

  @JsonKey(name: '7day')
  Stats? week;

  Stats? year;

  ReportStatsData({this.lastMonth, this.month, this.week, this.year});

  ReportStatsData copyWith({
    Stats? lastMonth,
    Stats? month,
    Stats? week,
    Stats? year,
  }) {
    return ReportStatsData(
      week: week ?? this.week,
      month: month ?? this.month,
      lastMonth: lastMonth ?? this.lastMonth,
      year: year ?? year,
    );
  }

  factory ReportStatsData.fromJson(Map<String, dynamic> json) => _$ReportStatsDataFromJson(json);
  Map<String, dynamic> toJson() => _$ReportStatsDataToJson(this);
}

@JsonSerializable()
class Stats {
  @JsonKey(name: 'average_sales', fromJson: toDouble)
  double? averageSales;
  @JsonKey(name: 'total_orders')
  int? totalOrders;
  @JsonKey(name: 'total_items')
  int? totalItems;
  @JsonKey(name: 'total_shipping', fromJson: toDouble)
  double? totalShip;
  @JsonKey(name: 'total_earned', fromJson: toDouble)
  double? totalEarn;
  @JsonKey(name: 'total_commission', fromJson: toDouble)
  double? totalCommission;
  @JsonKey(name: 'gross_sales', fromJson: toDouble)
  double? grossSales;
  @JsonKey(name: 'total_tax', fromJson: toDouble)
  double? totalTax;
  @JsonKey(name: 'total_refund', fromJson: toDouble)
  double? totalRefunds;
  Map<String, dynamic>? totals;

  Stats(
      {this.averageSales,
      this.totalOrders,
      this.totalItems,
      this.totalShip,
      this.totalEarn,
      this.totalCommission,
      this.grossSales,
      this.totalTax,
      this.totalRefunds,
      this.totals,});

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
  Map<String, dynamic> toJson() => _$StatsToJson(this);

  factory Stats.fromWooJson(Map<String, dynamic> json) {
    return Stats(
      averageSales: toDouble(json['average_sales']),
      totalOrders: json['total_orders'],
      totalItems: json['total_items'],
      totalShip: toDouble(json['total_shipping']),
      totalEarn: toDouble(json['net_sales']),
      totalCommission: toDouble(json['net_sales']),
      grossSales: toDouble(json['total_sales']),
      totalRefunds: toDouble(json['total_refunds']),
      totalTax: toDouble(json['total_tax']),
      totals: json['totals']
    );
  }

  static double? toDouble(dynamic json) {
    return ConvertData.stringToDouble(json);
  }
}
