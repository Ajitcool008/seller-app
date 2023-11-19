class ChartWeekAdminData {
  List<DateSalesData> dateSalesData;
  double maxDateSales;

  ChartWeekAdminData({this.dateSalesData = const [], this.maxDateSales = 0});

  void mapData(Map<String, dynamic> salesData){
    salesData.forEach((key, value) {
      DateSalesData data = DateSalesData.fromJson(value as Map<String, dynamic>);
      data.date = key;
      if(data.grossSales != null){
        if(maxDateSales < data.grossSales!) maxDateSales = data.grossSales!;
      }
      dateSalesData.add(data);
    });
  }
}

class DateSalesData {
  double? grossSales;
  int? orders;
  int? items;
  double? tax;
  double? shipping;
  double? discount;
  int? customers;
  String? date;
  double? totalEarn;

  DateSalesData({
    this.grossSales,
    this.orders,
    this.items,
    this.tax,
    this.shipping,
    this.discount,
    this.customers,
    this.date,
    this.totalEarn
  }){
    if(grossSales != null && tax != null && shipping != null && discount != null){
      totalEarn = grossSales! - tax! - shipping! - discount!;
    }
  }

  factory DateSalesData.fromJson(Map<String, dynamic> json) {
    return DateSalesData(
      grossSales: toDouble(json['sales']),
      orders: json['orders'],
      items: json['items'],
      tax: toDouble(json['tax']),
      shipping: toDouble(json['shipping']),
      discount: toDouble(json['discount']),
      customers: json['customers'],
    );
  }

  static double toDouble(dynamic data) {
    if (data != null) {
      if (data is String) {
        return double.tryParse(data) ?? 0.0;
      }
    }
    return 0.0;
  }
}
