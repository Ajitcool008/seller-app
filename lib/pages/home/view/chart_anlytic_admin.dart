// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Flutter library
import 'package:flutter/material.dart';

// Packages & Dependencies or Helper function
import 'package:flutter_bloc/flutter_bloc.dart';

// Repository packages
import 'package:reports_repository/reports_repository.dart';

// Bloc
import 'package:flutter_store_manager/authentication/authentication.dart';
import 'package:flutter_store_manager/pages/home/report_stats/bloc/report_stats_cubit.dart';
import 'package:flutter_store_manager/stores/global/bloc/global_bloc.dart';

// View
import 'package:flutter_store_manager/pages/home/chart_analytic_admin/chart_analytic_body.dart';

class ChartAnalyticAdmin extends StatelessWidget {
  const ChartAnalyticAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReportStatsCubit>(
      create: (_) => ReportStatsCubit(
          reportsRepository: ReportsRepository(context.read<HttpClient>()),
          token: context.read<AuthenticationBloc>().state.token,
          value: context.read<GlobalBloc>().state.stores['chart_analytic_admin'],
          onChanged: (store) => context.read<GlobalBloc>().add(GlobalStoreChanged('chart_analytic_admin', store))),
      child: const ChartAnalyticAdminBody(),
    );
  }
}
