import 'package:chart_analytic_repository/chart_analytic_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';
import 'package:flutter_store_manager/pages/home/report_stats/bloc/report_stats_cubit.dart';
import 'package:flutter_store_manager/themes.dart';
import 'package:flutter_store_manager/utils/auth.dart';
import 'package:reports_repository/reports_repository.dart';

import 'chart_analytic_line.dart';

class ChartAnalyticAdminBody extends StatefulWidget {
  const ChartAnalyticAdminBody({Key? key}) : super(key: key);

  @override
  ChartAnalyticAdminBodyState createState() => ChartAnalyticAdminBodyState();
}

class ChartAnalyticAdminBodyState extends State<ChartAnalyticAdminBody> {
  late ReportStatsCubit _cubit;

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
    return BlocBuilder<ReportStatsCubit, ReportStatsState>(builder: (context, state) {
      List<AnalyticData> data = [];
      if (state.reportStats?.data?.week?.totals != null) {
        state.reportStats!.data!.week!.totals!.forEach((key, value) {
          data.add(
            AnalyticData(name: key, count: int.tryParse('${value['orders']}') ?? 0),
          );
        });
      }
      return HomeViewStoreAnalytic(
        title: AppLocalizations.of(context)!.translate('home:text_analytic'),
        chart: Padding(
          padding: const EdgeInsetsDirectional.only(end: 12),
          child: ChartAnalyticAdminLine(
            data: data,
          ),
        ),
      );
    });
  }
}
