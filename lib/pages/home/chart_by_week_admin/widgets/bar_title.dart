// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Packages & Dependencies or Helper function
import 'package:fl_chart/fl_chart.dart';

// Flutter library
import 'package:flutter/material.dart';
import 'package:flutter_store_manager/pages/home/chart_by_week_admin/model/chart_week_admin_data.dart';


// Constants
import 'package:flutter_store_manager/constants/strings.dart';

class BarTitlesChartAdmin {
  static SideTitles getBottomTitles({required List<DateSalesData> totalSalesData, TextStyle? textStyle}) =>
      SideTitles(
        showTitles: true,
        margin: 15,
        reservedSize: 40,
        getTextStyles: (_, double value) {
          return textStyle ?? const TextStyle();
        },
        getTitles: (double id) {
          if (totalSalesData.isNotEmpty) {
            return formatDateToDayOfWeek(date: totalSalesData.elementAt(id.toInt()).date, format: 'yyyy-MM-dd');
          } else {
            return Strings.dayOfWeek[id.toInt()];
          }
        },
      );
  static SideTitles getLeftTitles({
    TextStyle? textStyle,
    GetTitleFunction? getTitles,
  }) =>
      SideTitles(
        showTitles: true,
        margin: 14,
        getTextStyles: (_, double value) {
          return textStyle ?? const TextStyle();
        },
        getTitles: getTitles,
        reservedSize: 32,
        textAlign: TextAlign.end,
      );
  static SideTitles getHiddenTitles() => SideTitles(
        showTitles: false,
      );
}
