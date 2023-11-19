// App core
import 'dart:convert';

import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Constants
import 'constants/constants.dart';

// Models
import 'models/models.dart';

class AppBuilderRepository {
  final HttpClient _httpClient;

  AppBuilderRepository(this._httpClient);

  /// Returns list of product category in response
  Future<List<ProductCategory>> getProductCategories({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getCategories,
        data: requestData,
      );
      List<ProductCategory> categories = <ProductCategory>[];
      categories = data.map((value) => ProductCategory.fromJson(value)).toList().cast<ProductCategory>();
      return categories;
    } catch (_) {
      rethrow;
    }
  }

  /// Get setting data
  Future<Map<String, dynamic>> getSettings() async {
    try {
      final res = await _httpClient.get(Endpoints.getSettings);

      if (res is String) {
        return jsonDecode(res);
      }
      return res;
    } catch (_) {
      rethrow;
    }
  }

// ---------------------------------------------- Auth ---------------------------------------------------------------

  /// Login with Email or Username
  Future<Map<String, dynamic>> login({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.login,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Register user
  Future<Map<String, dynamic>> register({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.register,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Forgot password
  Future<dynamic> forgotPassword({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.forgotPassword,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Change password
  Future<dynamic> changePassword({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        '${Endpoints.changePassword}?app-builder-decode=true',
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  // ---------------------------------------------- Product ---------------------------------------------------------------

  /// Returns product variable data
  Future<ProductVariable> getProductVariations({
    required RequestData requestData,
  }) async {
    try {
      final json = await _httpClient.get(
        Endpoints.getProductVariable,
        data: requestData,
      );
      return ProductVariable.fromJson(json);
    } catch (_) {
      rethrow;
    }
  }

  /// Like product video
  Future<void> likeProductVideo({
    required RequestData requestData,
  }) async {
    try {
      await _httpClient.post(
        Endpoints.likeProductVideo,
        data: requestData,
      );
    } catch (_) {
      rethrow;
    }
  }

  // ---------------------------------------------- Product ---------------------------------------------------------------

  /// Current user
  Future<Map<String, dynamic>> current({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.get(
        Endpoints.current,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of tags in response
  Future<List<PostArchive>?> getPostArchives({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.archives,
        data: requestData,
      );
      List<PostArchive>? archives = <PostArchive>[];
      archives = data.map((value) => PostArchive.fromJson(value)).toList().cast<PostArchive>();
      return archives;
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of vendor in response
  Future<List<Vendor>?> getVendors({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getVendor,
        data: requestData,
      );
      List<Vendor>? vendors = <Vendor>[];
      vendors = data.map((comment) => Vendor.fromJson(comment)).toList().cast<Vendor>();
      return vendors;
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of id category vendor in response.
  ///
  Future<List<int>?> getCategoryVendor({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getCategoryVendor,
        data: requestData,
      );
      List<int> result = <int>[];
      for (int i = 0; i < data.length; i++) {
        result.add(ConvertData.stringToInt(data[i]));
      }
      return result;
    } catch (_) {
      rethrow;
    }
  }

  /// Get country locale.
  ///
  Future<Map<String, dynamic>> getCountryLocale({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getCountryLocale,
        data: requestData,
      );
      if (data is Map<String, dynamic>) {
        return data;
      }
      return {};
    } catch (_) {
      rethrow;
    }
  }

  /// Get address.
  ///
  Future<AddressData> getAddress({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getAddress,
        data: requestData,
      );
      if (data is Map) {
        Map<String, dynamic> dataJson = data.map((key, value) => MapEntry(key.toString(), value));
        return AddressData.fromJson(dataJson);
      }
      return AddressData();
    } catch (_) {
      rethrow;
    }
  }

  /// Get address book
  ///
  Future<AddressBook> getAddressBook({required RequestData requestData}) async {
    try {
      final data = await _httpClient.get(
        Endpoints.addressBooks,
        data: requestData,
      );

      if (data is Map) {
        Map<String, dynamic> dataJson = data.map((key, value) => MapEntry(key.toString(), value));
        return AddressBook.fromJson(dataJson);
      }

      return AddressBook();
    } catch (_) {
      rethrow;
    }
  }

  /// make primary address book
  ///
  Future<bool> makePrimaryAddressBook({required RequestData requestData}) async {
    try {
      final result = await _httpClient.post(
        '${Endpoints.addressBooks}/make-primary',
        data: requestData,
      );

      return result is Map && result['success'] == true;
    } catch (_) {
      rethrow;
    }
  }

  /// Delete address book
  ///
  Future<bool> deleteAddressBook({required RequestData requestData}) async {
    try {
      final result = await _httpClient.post(
        '${Endpoints.addressBooks}/delete',
        data: requestData,
      );
      return result is Map && result['success'] == true;
    } catch (_) {
      rethrow;
    }
  }

  /// Delete account.
  ///
  Future<Map<String, dynamic>> deleteAccount({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.deleteAccount,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Send opt delete account.
  ///
  Future<Map<String, dynamic>> sendOptDeleteAccount({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.sendOptDeleteAccount,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Get captcha
  Future<Map?> getCaptcha({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getCaptcha,
        data: requestData,
      );
      return data;
    } catch (_) {
      rethrow;
    }
  }

  /// Validate captcha
  Future<dynamic> validateCaptcha({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.validateCaptcha,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Progress server for payment.
  ///
  Future<dynamic> progressServer({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.progressServer,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Clean cart.
  ///
  Future<bool> cleanCart({required RequestData requestData, String? cartKey}) async {
    try {
      final res = await _httpClient.post(
        '${Endpoints.cleanCart}?cart_key=$cartKey&app-builder-decode=true',
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Post customer.
  ///
  Future<Customer> postCustomer({
    String? userId,
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        '${Endpoints.postCustomer}/$userId',
        data: requestData,
      );
      return Customer.fromJson(res);
    } catch (_) {
      rethrow;
    }
  }

  /// Add review
  Future<ProductReview> writeReviews({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(
        Endpoints.writeReview,
        data: requestData,
      );
      return ProductReview.fromJson(res);
    } catch (_) {
      rethrow;
    }
  }

  /// Rating count
  Future<RatingCount> getRatingCount({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.get(
        Endpoints.ratingCount,
        data: requestData,
      );
      return RatingCount.fromJson(res);
    } catch (_) {
      rethrow;
    }
  }

  // ---------------------------------------------- Coupon ---------------------------------------------------------------

  /// Coupon list
  Future<List<Coupon>> getCouponList({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.get(
        Endpoints.couponList,
        data: requestData,
      );
      List<Coupon> data = <Coupon>[];
      data = res.map((value) => Coupon.fromJson(value)).toList().cast<Coupon>();
      return data;
    } catch (_) {
      rethrow;
    }
  }

  // ---------------------------------------------- Point ---------------------------------------------------------------


  /// Get point reward
  Future<PointReward> getPointReward({required RequestData requestData}) async{
    try {
      final res = await _httpClient.get(Endpoints.pointReward,
          data: requestData);
      return PointReward.fromJson(res);
    } catch (_) {
      rethrow;
    }
  }
}
