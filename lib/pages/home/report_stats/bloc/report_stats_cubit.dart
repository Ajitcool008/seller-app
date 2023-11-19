// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Packages & Dependencies or Helper function
import 'package:equatable/equatable.dart';
import 'package:flutter_store_manager/common/bloc/state_base.dart';
import 'package:flutter_store_manager/constants/app.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

//Repository packages
import 'package:reports_repository/reports_repository.dart';

part 'report_stats_state.dart';

class ReportStatsCubit extends Cubit<ReportStatsState> {
  final ReportsRepository reportsRepository;
  final String token;
  final RequestCancel _cancelToken = RequestCancel();
  final void Function(BaseState store)? onChanged;
  ReportStatsCubit({
    required this.reportsRepository,
    required this.token,
    this.onChanged,
    Equatable? value,
  }) : super(value != null ? value as ReportStatsState : ReportStatsState(reportStats: ReportStats()));

  Future<void> getStats({bool isAdmin = false, TimePeriodWoo? period}) async {
    emit(state.copyWith(
      actionState: const LoadingState(),
    ));
    if (isAdmin) {
      if (period == TimePeriodWoo.all) {
        _getStatsAllTimeWoo();
      } else {
        await _getStatsWoo(period: period ?? TimePeriodWoo.week);
      }
    } else {
      await _getStats();
    }
  }

  Future<void> _getStatsAllTimeWoo() async {
    emit(state.copyWith(
      actionState: const LoadingState(),
    ));
    await _getStatsWoo(period: TimePeriodWoo.week);
    await _getStatsWoo(period: TimePeriodWoo.month);
    await _getStatsWoo(period: TimePeriodWoo.lastMonth);
    await _getStatsWoo(period: TimePeriodWoo.year);
  }

  Future<void> _getStats() async {
    try {
      ReportStats stats = await reportsRepository.getReportStats(
        requestData: RequestData(token: token, cancelToken: _cancelToken, query: {'app-builder-decode': true}),
      );
      emit(
        state.copyWith(actionState: LoadedState(data: stats), reportStats: stats),
      );
    } on RequestError catch (e) {
      if (e.type != RequestErrorType.cancel) {
        emit(state.copyWith(actionState: ErrorState(data: e.message)));
      }
    }
  }

  Future<void> _getStatsWoo({required TimePeriodWoo period}) async {
    try {
      Stats stats = await reportsRepository.getReportStatsWoo(
        requestData: RequestData(
          cancelToken: _cancelToken,
          query: {
            'period': period.getValue(),
            'consumer_key': consumerKey,
            'consumer_secret': consumerSecret,
          },
        ),
      );
      late ReportStatsData reportStatsData;
      if (state.reportStats?.data != null) {
        reportStatsData = state.reportStats!.data!.copyWith(
          week: (period == TimePeriodWoo.week) ? stats : null,
          month: (period == TimePeriodWoo.month) ? stats : null,
          lastMonth: (period == TimePeriodWoo.lastMonth) ? stats : null,
          year: (period == TimePeriodWoo.year) ? stats : null,
        );
      } else {
        reportStatsData = ReportStatsData(
          week: (period == TimePeriodWoo.week) ? stats : null,
          month: (period == TimePeriodWoo.month) ? stats : null,
          lastMonth: (period == TimePeriodWoo.lastMonth) ? stats : null,
          year: (period == TimePeriodWoo.year) ? stats : null,
        );
      }

      emit(
        state.copyWith(
            actionState: LoadedState(data: stats),
            reportStats: ReportStats(
              data: reportStatsData,
            )),
      );
    } on RequestError catch (e) {
      if (e.type != RequestErrorType.cancel) {
        emit(state.copyWith(actionState: ErrorState(data: e.message)));
      }
    }
  }

  @override
  void onChange(Change<ReportStatsState> change) {
    super.onChange(change);
    if (onChanged != null) {
      onChanged!(change.nextState);
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
