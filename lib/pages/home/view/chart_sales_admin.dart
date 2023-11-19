// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Flutter library
import 'package:flutter/material.dart';

// Packages & Dependencies or Helper function
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_manager/pages/home/report_stats/bloc/report_stats_cubit.dart';

// Repository packages
import 'package:reports_repository/reports_repository.dart';

// Bloc
import 'package:flutter_store_manager/stores/global/bloc/global_bloc.dart';
import 'package:flutter_store_manager/authentication/authentication.dart';

// View
import 'package:flutter_store_manager/pages/home/chart_by_week_admin/chart_sales_body.dart';

class ChartSalesAdminHome extends StatelessWidget {
  const ChartSalesAdminHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReportStatsCubit>(
      create: (_) => ReportStatsCubit(
          reportsRepository: ReportsRepository(context.read<HttpClient>()),
          token: context.read<AuthenticationBloc>().state.token,
          value: context.read<GlobalBloc>().state.stores['chart_sales_admin'],
          onChanged: (store) => context.read<GlobalBloc>().add(GlobalStoreChanged('chart_sales_admin', store))),
      child: const ChartSalesForAdminHomeBody(),
    );
  }
}
