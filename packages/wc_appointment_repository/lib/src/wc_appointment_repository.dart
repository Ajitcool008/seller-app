// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Constants
import 'constants/constants.dart';


class WCAppointmentRepository {
  final HttpClient _httpClient;

  WCAppointmentRepository(this._httpClient);

  /// Get active hours in appointments product
  Future<Map<String, dynamic>> getActiveHours({
    required RequestData requestData,
    String? endPoint,
  }) async {
    try {
      final data = await _httpClient.get(
        endPoint ?? Endpoints.getAppointmentTimeStamp,
        data: requestData,
      );
      return data is Map ? data.map((key, value) => MapEntry(key.toString(), value)) : {};
    } catch (_) {
      rethrow;
    }
  }

  /// Get staffs in appointments product
  Future<List> getStaffs({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getAppointmentStaffs,
        data: requestData,
      );
      return data is List ? data : [];
    } catch (_) {
      rethrow;
    }
  }

  /// Get appointments product
  Future<Map<String, dynamic>> getAppointmentProduct({
    required RequestData requestData,
    required String productId,
    String? endPoint,
  }) async {
    try {
      final data = await _httpClient.get(
        "${endPoint ?? Endpoints.getAppointmentProduct}/$productId",
        data: requestData,
      );
      return data is Map ? data.map((key, value) => MapEntry(key.toString(), value)) : {};
    } catch (_) {
      rethrow;
    }
  }
}
