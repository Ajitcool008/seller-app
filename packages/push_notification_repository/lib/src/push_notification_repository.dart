// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Constants
import 'constants/constants.dart';

// Models
import 'models/models.dart';

class PushNotificationRepository {
  final HttpClient _httpClient;

  PushNotificationRepository(this._httpClient);

  /// Update user token
  Future<Map<String, dynamic>?> updateUserToken({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.updateUserToken,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Update user token
  Future<Map<String, dynamic>?> removeUserToken({
    required RequestData requestData,
    String? userId,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.removeUserToken,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Delete a notification by user_id
  Future<Map<String, dynamic>?> removeAllNotify() async {
    try {
      final res = await _httpClient.delete('${Endpoints.removeAllNotify}?app-builder-decode=true');
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Get list notification by user_id
  Future<List<MessageData>?> getListNotify({
    required RequestData requestData,
    String? userId,
  }) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getNotify}?user_id=$userId&app-builder-decode=true',
        data: requestData,
      );
      List<MessageData>? res = <MessageData>[];
      res = data.map((mess) => MessageData.fromJson(mess)).toList().cast<MessageData>();
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Get a notification by user_id
  Future<Map<String, dynamic>?> getANotify({int? id, String? userId}) async {
    try {
      final res = await _httpClient.get('${Endpoints.getNotify}/$id?user_id=$userId&app-builder-decode=true');
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Delete a notification by user_id
  Future<Map<String, dynamic>?> removeMessageById({
    String? id,
    String? userId,
  }) async {
    try {
      final res = await _httpClient.delete('${Endpoints.getNotify}/$id?user_id=$userId&app-builder-decode=true');
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Get unRead
  Future<Map<String, dynamic>?> getUnRead() async {
    try {
      final res = await _httpClient.get('${Endpoints.getUnRead}?app-builder-decode=true');
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Get postRead
  Future<void> putRead({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        '${Endpoints.putRead}?app-builder-decode=true',
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }
}
