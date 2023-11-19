// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Models
import 'package:reports_repository/src/models/models.dart';

// Constants
import 'constants/constants.dart';

class ReportsRepository {
  final HttpClient _httpClient;

  ReportsRepository(this._httpClient);

  /// **Get Report Stats**
  ///
  /// **Param:**
  ///
  /// requestData: your request data
  ///
  /// **Returns:**
  ///
  /// Return report stats
  Future<ReportStats> getReportStats({required RequestData requestData}) async {
    try {
      var res = (await _httpClient.get(
        Endpoints.salesStats,
        data: requestData,
      ));
      return ReportStats.fromJson(res);
    } catch (_) {
      rethrow;
    }
  }

  /// **Get Report Stats By Woocommerce API**
  ///
  /// **Param:**
  ///
  /// requestData: your request data
  ///
  /// **Returns:**
  ///
  /// Return report stats
  Future<Stats> getReportStatsWoo({required RequestData requestData}) async {
    try {
      var res = (await _httpClient.get(
        Endpoints.salesStatsWoo,
        data: requestData,
      ));
      return Stats.fromWooJson(res?[0] ?? {});
    } catch (_) {
      rethrow;
    }
  }
}
