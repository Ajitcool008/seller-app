// App core

import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Constants
import 'constants/constants.dart';

class ContactFormRepository {
  final HttpClient _httpClient;

  ContactFormRepository(this._httpClient);

  /// Send contact or Subscription
  Future<Map<String, dynamic>> sendContact({required RequestData requestData, String? formId}) async {
    try {
      final data = await _httpClient.post(
        '${Endpoints.contactForm7}/$formId/feedback',
        data: requestData,
      );
      return data;
    } catch (_) {
      rethrow;
    }
  }
}
