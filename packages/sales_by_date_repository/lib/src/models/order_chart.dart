// Packages & Dependencies or Helper function
import 'package:json_annotation/json_annotation.dart';

part 'order_chart.g.dart';

@JsonSerializable(createToJson: false)
class OrderChartModel {
  @JsonKey(name: 'order_counts')
  OrderChartData? orderCounts;

  @JsonKey(name: 'order_item_counts')
  OrderChartData? orderItemCounts;

  @JsonKey(name: 'shipping_amounts')
  OrderChartData? shippingAmounts;

  @JsonKey(name: 'tax_amounts')
  OrderChartData? taxAmounts;

  @JsonKey(name: 'total_earned_commission')
  OrderChartData? totalEarnedCommission;

  @JsonKey(name: 'total_paid_commission')
  OrderChartData? totalPaidCommission;

  @JsonKey(name: 'total_gross_sales')
  OrderChartData? totalGrossSales;

  @JsonKey(name: 'total_refund')
  OrderChartData? totalRefund;

  OrderChartModel(
      {this.orderCounts,
      this.orderItemCounts,
      this.shippingAmounts,
      this.taxAmounts,
      this.totalEarnedCommission,
      this.totalPaidCommission,
      this.totalGrossSales,
      this.totalRefund});

  factory OrderChartModel.fromJson(Map<String, dynamic> json) => _$OrderChartModelFromJson(json);

  factory OrderChartModel.fromJsonWoo(Map<String, dynamic> json) {
    OrderChartData orderCounts = OrderChartData(data: [], labels: []);
    OrderChartData orderItemCounts = OrderChartData(data: [], labels: []);
    OrderChartData shippingAmounts = OrderChartData(data: [], labels: []);
    OrderChartData taxAmounts = OrderChartData(data: [], labels: []);
    OrderChartData totalEarnedCommission = OrderChartData(data: [], labels: []);
    OrderChartData totalPaidCommission = OrderChartData(data: [], labels: []);
    OrderChartData totalGrossSales = OrderChartData(data: [], labels: []);
    OrderChartData totalRefund = OrderChartData(data: [], labels: []);
    if (json['totals'] is Map) {
      Map data = json['totals'];
      data.forEach((key, value) {
        orderCounts.labels!.add(key.toString());
        orderCounts.data!.add(value['orders'].toString());
        orderItemCounts.labels!.add(key.toString());
        orderItemCounts.data!.add(value['items'].toString());
        shippingAmounts.labels!.add(key.toString());
        shippingAmounts.data!.add(value['shipping'].toString());
        taxAmounts.labels!.add(key.toString());
        taxAmounts.data!.add(value['tax'].toString());
        totalEarnedCommission.labels!.add(key.toString());
        totalEarnedCommission.data!.add(calculateEarned(value: value));
        totalPaidCommission.labels!.add(key.toString());
        totalPaidCommission.data!.add(calculatePaid(value: value));
        totalGrossSales.labels!.add(key.toString());
        totalGrossSales.data!.add(value['sales'].toString());
        totalRefund.labels!.add(key.toString());
        totalRefund.data!.add('');
      });
    }
    return OrderChartModel(
      orderCounts: orderCounts,
      orderItemCounts: orderItemCounts,
      shippingAmounts: shippingAmounts,
      taxAmounts: taxAmounts,
      totalEarnedCommission: totalEarnedCommission,
      totalPaidCommission: totalPaidCommission,
      totalGrossSales: totalGrossSales,
      totalRefund: totalRefund,
    );
  }

  static String calculateEarned({
    dynamic value,
  }) {
    String total = value?['sales'] ?? '';
    String tax = value?['tax'] ?? '';
    String shipping = value?['shipping'] ?? '';
    String discount = value?['discount'] ?? '';
    double res = (double.tryParse(total) ?? 0) -
        (double.tryParse(tax) ?? 0) -
        (double.tryParse(shipping) ?? 0) -
        (double.tryParse(discount) ?? 0);
    return res.toStringAsFixed(2);
  }

  static String calculatePaid({
    dynamic value,
  }) {
    String tax = value?['tax'] ?? '';
    String shipping = value?['shipping'] ?? '';
    String discount = value?['discount'] ?? '';
    double res =
        (double.tryParse(tax) ?? 0) +
        (double.tryParse(shipping) ?? 0) +
        (double.tryParse(discount) ?? 0);
    return res.toStringAsFixed(2);
  }
}

@JsonSerializable(
  createToJson: false,
)
class OrderChartData {
  List<String?>? labels;

  @JsonKey(name: 'datas')
  List<String?>? data;

  OrderChartData({this.labels, this.data});

  factory OrderChartData.fromJson(Map<String, dynamic> json) => _$OrderChartDataFromJson(json);
}
