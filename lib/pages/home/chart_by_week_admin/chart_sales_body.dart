// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Flutter library
import 'package:flutter/material.dart';

// Packages & Dependencies or Helper function
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/pages/home/chart_by_week_admin/widgets/bar_title.dart';
import 'package:flutter_store_manager/pages/home/report_stats/bloc/report_stats_cubit.dart';
import 'package:flutter_store_manager/types/types.dart';
import 'package:flutter_store_manager/utils/auth.dart';
import 'package:flutter_store_manager/utils/currency_format.dart' as currency_format;

// Repository packages
import 'package:reports_repository/reports_repository.dart';

// View
import 'package:flutter_store_manager/themes.dart';

import 'model/chart_week_admin_data.dart';

class ChartSalesForAdminHomeBody extends StatefulWidget {
  const ChartSalesForAdminHomeBody({Key? key}) : super(key: key);
  @override
  ChartSalesForAdminHomeBodyState createState() => ChartSalesForAdminHomeBodyState();
}

class ChartSalesForAdminHomeBodyState extends State<ChartSalesForAdminHomeBody> {
  late ReportStatsCubit _cubit;
  double _maxValueChart = 0;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<ReportStatsCubit>();
    _cubit.getStats(
      isAdmin: currentRoleIsAdmin(context),
      period: TimePeriodWoo.week,
    );
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TranslateType translate = AppLocalizations.of(context)!.translate;

    return Column(
      children: [
        _buildHeadChart(theme, translate),
        const SizedBox(height: 25),
        BlocBuilder<ReportStatsCubit, ReportStatsState>(
          builder: (context, state) {
            ChartWeekAdminData chartData = ChartWeekAdminData(
              dateSalesData: [],
              maxDateSales: 0,
            );
            chartData.mapData(state.reportStats?.data?.week?.totals ?? {});
            _maxValueChart = chartData.maxDateSales * 1.2;
            Widget child = chartData.dateSalesData.isNotEmpty
                ? BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceBetween,
                      minY: 0,
                      maxY: _maxValueChart > 0 ? _maxValueChart : 1000,
                      groupsSpace: 25,
                      barTouchData: BarTouchData(
                        touchTooltipData: BarTouchTooltipData(
                          fitInsideVertically: true,
                          tooltipBgColor: theme.dividerColor,
                          getTooltipItem: (
                            BarChartGroupData group,
                            int groupIndex,
                            BarChartRodData rod,
                            int rodIndex,
                          ) {
                            String grossSale = currency_format.formatCurrency(
                              price: '${group.barRods[1].toY}',

                              /// Todo: get currency from setting data
                              symbol: currency_format.getSymbol("USD"),
                              decimalDigits: ConvertData.stringToInt(2),
                              context: context,
                            );
                            String earnSale = currency_format.formatCurrency(
                              price: '${group.barRods[2].toY}',
                              symbol: currency_format.getSymbol("USD"),
                              decimalDigits: ConvertData.stringToInt(2),
                              context: context,
                            );
                            return BarTooltipItem(
                              "",
                              const TextStyle(
                                color: Colors.pink,
                                fontSize: 0,
                              ),
                              children: [
                                TextSpan(
                                  text: "$grossSale\n",
                                  style: theme.textTheme.bodyMedium?.copyWith(color: theme.primaryColorLight),
                                ),
                                TextSpan(
                                  text: earnSale,
                                  style: theme.textTheme.bodyMedium?.copyWith(color: theme.primaryColor),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(
                        leftTitles: BarTitlesChartAdmin.getLeftTitles(
                          textStyle: theme.textTheme.bodySmall?.copyWith(fontSize: 10),
                        ),
                        bottomTitles: BarTitlesChartAdmin.getBottomTitles(
                          totalSalesData: chartData.dateSalesData,
                          textStyle: theme.textTheme.labelSmall,
                        ),
                        topTitles: BarTitlesChartAdmin.getHiddenTitles(),
                        rightTitles: BarTitlesChartAdmin.getHiddenTitles(),
                      ),
                      barGroups: generateBarChart(dateSalesData: chartData.dateSalesData, theme: theme),
                    ),
                    swapAnimationDuration: Duration.zero,
                  )
                : BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceBetween,
                      minY: 0,
                      maxY: 1000,
                      groupsSpace: 25,
                      barTouchData: BarTouchData(enabled: false),
                      borderData: FlBorderData(show: false),
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(
                        leftTitles: BarTitlesChartAdmin.getLeftTitles(
                          textStyle: theme.textTheme.bodySmall?.copyWith(fontSize: 10),
                          getTitles: (_) => '',
                        ),
                        bottomTitles: BarTitlesChartAdmin.getBottomTitles(
                          totalSalesData: chartData.dateSalesData,
                          textStyle: theme.textTheme.labelSmall,
                        ),
                        topTitles: BarTitlesChartAdmin.getHiddenTitles(),
                        rightTitles: BarTitlesChartAdmin.getHiddenTitles(),
                      ),
                      barGroups: generateBarChart(dateSalesData: chartData.dateSalesData, theme: theme),
                    ),
                    swapAnimationDuration: Duration.zero,
                  );
            return AspectRatio(
              aspectRatio: 1.5,
              child: child,
            );
          },
        ),
      ],
    );
  }

  _buildHeadChart(ThemeData theme, TranslateType translate) {
    return SizedBox(
      // height: 100,
      child: Row(
        children: [
          Expanded(
            child: LabelInput(
              title: translate('home:text_week'),
              isLarge: true,
              padding: EdgeInsets.zero,
            ),
          ),
          ChartLabel(
            color: theme.primaryColor,
            name: translate('home:text_earning'),
            isExpand: false,
          ),
          const SizedBox(width: 20),
          ChartLabel(
            color: theme.primaryColorLight,
            name: translate('home:text_gross_sale'),
            isExpand: false,
          ),
        ],
      ),
    );
  }

  generateBarChart({
    required List<DateSalesData> dateSalesData,
    required ThemeData theme,
  }) {
    List<BarChartGroupData> list = [];
    if (dateSalesData.isNotEmpty) {
      for (int i = 0; i < dateSalesData.length; i++) {
        list.add(
          BarChartGroupData(
            x: i,
            groupVertically: true,
            barRods: [
              BarChartRodData(
                fromY: 0,
                toY: _maxValueChart > 0 ? _maxValueChart : 1000,
                width: 11,
                colors: [theme.primaryColor.withOpacity(0.2)],
                borderRadius: BorderRadius.circular(10),
              ),
              BarChartRodData(
                fromY: 0,
                toY: dateSalesData[i].grossSales ?? 5,
                width: 11,
                colors: [theme.primaryColorLight],
                borderRadius: BorderRadius.circular(10),
              ),
              BarChartRodData(
                toY: dateSalesData[i].totalEarn ?? 5,
                width: 11,
                colors: [theme.primaryColor],
                borderRadius: BorderRadius.circular(10),
              )
            ],
          ),
        );
      }
    } else {
      for (int i = 0; i < 7; i++) {
        list.add(
          BarChartGroupData(
            x: i,
            groupVertically: true,
            barRods: [
              BarChartRodData(
                fromY: 0,
                toY: 1000,
                width: 11,
                colors: [theme.primaryColor.withOpacity(0.2)],
                borderRadius: BorderRadius.circular(10),
              ),
            ],
          ),
        );
      }
    }
    return list;
  }
}
