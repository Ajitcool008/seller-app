// App core
import 'package:app_builder_repository/app_builder_repository.dart';
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Constants
import 'constants/constants.dart';

// Models
import 'models/models.dart';

class WoocommerceRepository {
  final HttpClient _httpClient;

  WoocommerceRepository(this._httpClient);

  // ---------------------------------------------- Order --------------------------------------------------------------
  /// Get list orders
  ///
  /// **Param:**
  ///
  /// requestData: your request data
  ///
  /// **Returns:**
  ///
  /// Return list OrderData
  Future<List<OrderData>?> getOrders({required RequestData requestData}) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getOrders,
        data: requestData,
      );
      List<OrderData>? orders = <OrderData>[];
      orders = data.map((order) => OrderData.fromJson(order)).toList().cast<OrderData>();
      return orders;
    } catch (_) {
      rethrow;
    }
  }

  /// Get orders detail
  ///
  /// **Param:**
  ///
  /// requestData: your request data
  ///
  /// orderId: id of order
  ///
  /// **Returns:**
  ///
  /// Return OrderData
  Future<OrderData> getOrderDetail({required RequestData requestData, int? orderId}) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getOrders}/$orderId',
        data: requestData,
      );
      OrderData result = OrderData.fromJson(data);
      return result;
    } catch (_) {
      rethrow;
    }
  }

  /// Get list orders node
  ///
  /// **Param:**
  ///
  /// requestData: your request data
  ///
  /// orderId: id of order
  ///
  /// **Returns:**
  ///
  /// Return list OrderNode
  Future<List<OrderNote>?> getOrderNotes({required RequestData requestData, int? orderId}) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getOrders}/$orderId/notes',
        data: requestData,
      );
      List<OrderNote>? orders = <OrderNote>[];
      orders = data.map((order) => OrderNote.fromJson(order)).toList().cast<OrderNote>();
      return orders;
    } catch (_) {
      rethrow;
    }
  }

// ---------------------------------------------- Product ------------------------------------------------------------

  /// Get list of product
  ///
  /// **Param:**
  ///
  /// requestData: your request data
  ///
  /// **Returns:**
  ///
  /// Return list product
  Future<List<Product>?> getProducts({required RequestData requestData}) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getProducts,
        data: requestData,
      );
      List<Product>? products = <Product>[];
      products = data.map((product) => Product.fromJson(product)).toList().cast<Product>();
      return products;
    } catch (_) {
      rethrow;
    }
  }

  /// Get product
  ///
  /// **Param:**
  ///
  /// requestData: your request data
  ///
  /// orderId: id of product
  ///
  /// **Returns:**
  ///
  /// Return product
  Future<Product> getProduct({int? productId, required RequestData requestData}) async {
    try {
      final data = await _httpClient.get(
        "${Endpoints.getProducts}/$productId",
        data: requestData,
      );
      return Product.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  /// Get attributes by terms
  Future<Attributes> getAttributes({
    required RequestData requestData,
  }) async {
    try {
      final json = await _httpClient.get(
        Endpoints.getAttributes,
        data: requestData,
      );
      return Attributes.fromJson(json);
    } catch (_) {
      rethrow;
    }
  }

  /// Get Min - Max prices
  Future<ProductPrices> getMinMaxPrices({
    required RequestData requestData,
  }) async {
    try {
      final json = await _httpClient.get(Endpoints.getMinMaxPrices, data: requestData);
      return ProductPrices.fromJson(json);
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of product in response
  Future<List<Brand>?> getBrands({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getBrands,
        data: requestData,
      );
      List<Brand>? brands = <Brand>[];
      brands = data.map((value) => Brand.fromJson(value)).toList().cast<Brand>();
      return brands;
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of product in response
  Future<Brand> getBrand({
    required int id,
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        "${Endpoints.getBrands}/$id",
        data: requestData,
      );
      return Brand.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  /// Get amount balance
  Future<double> getAmountBalance({
    required String userId,
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getAmountBalance}/$userId',
        data: requestData,
      );
      return ConvertData.stringToDouble(data);
    } catch (_) {
      rethrow;
    }
  }

  /// Get transaction wallet
  Future<List<TransactionWallet>?> getTransactionWallet({
    required String userId,
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getTransactionWallet}/$userId',
        data: requestData,
      );
      List<TransactionWallet>? result = <TransactionWallet>[];
      result = data.map((value) => TransactionWallet.fromJson(value)).toList().cast<TransactionWallet>();
      return result;
    } catch (_) {
      rethrow;
    }
  }

  // ---------------------------------------------- Cart ---------------------------------------------------------------
  /// Get list cart
  Future<Map<String, dynamic>> getCart({
    Map<String, dynamic>? queryParameters,
    required RequestData requestData,
  }) async {
    try {
      String url = "${Endpoints.getCart}?${Uri(queryParameters: queryParameters).query}";
      final res = await _httpClient.get(
        url,
        data: requestData,
      );
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Add to cart
  Future<Map<String, dynamic>> addToCart({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(Endpoints.addToCart, data: requestData);
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Apply Coupon
  Future<Map<String, dynamic>> applyCoupon({
    String? cartKey,
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post('${Endpoints.applyCoupon}?cart_key=$cartKey&app-builder-decode=true',
          data: requestData);
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Remove Coupon
  Future<Map<String, dynamic>> removeCoupon({
    String? cartKey,
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post('${Endpoints.removeCoupon}?cart_key=$cartKey&app-builder-decode=true',
          data: requestData);
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Remove cart
  Future<Map<String, dynamic>> removeCart({
    String? cartKey,
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post('${Endpoints.removeCart}?cart_key=$cartKey&app-builder-decode=true',
          data: requestData);
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Checkout
  Future<dynamic> checkout({
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post(Endpoints.checkout, data: requestData);
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Get gateway
  Future<dynamic> gateways({required RequestData requestData}) async {
    try {
      final res = await _httpClient.get(
        Endpoints.gateways,
        data: requestData,
      );

      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Update quantity
  Future<Map<String, dynamic>> updateQuantity({
    String? cartKey,
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post('${Endpoints.updateCart}?cart_key=$cartKey&app-builder-decode=true',
          data: requestData);
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Select shipping cart
  Future<Map<String, dynamic>> selectShipping({
    String? cartKey,
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post('${Endpoints.shippingCart}?cart_key=$cartKey&app-builder-decode=true',
          data: requestData);
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Update Customer cart
  Future<Map<String, dynamic>> updateCustomerCart({
    String? cartKey,
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post('${Endpoints.updateCustomerCart}?cart_key=$cartKey&app-builder-decode=true',
          data: requestData);
      return res;
    } catch (_) {
      rethrow;
    }
  }

  /// Apply point discount
  Future<Map<String, dynamic>> applyPointDiscount({
    String? cartKey,
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.post('${Endpoints.applyPoint}?cart_key=$cartKey&app-builder-decode=true',
          data: requestData);
      return res;
    } catch (_) {
      rethrow;
    }
  }

  // ---------------------------------------------- My Account ---------------------------------------------------------
  /// Get list of CountryData
  Future<List<CountryData>> getCountry({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getCountries,
        data: requestData,
      );
      List<CountryData> countries = <CountryData>[];
      countries = data.map((country) => CountryData.fromJson(country)).toList().cast<CountryData>();
      return countries;
    } catch (_) {
      rethrow;
    }
  }

  /// Get customer
  Future<Customer> getCustomer({
    String? userId,
    required RequestData requestData,
  }) async {
    try {
      final res = await _httpClient.get(
        '${Endpoints.getCustomer}/$userId',
        data: requestData,
      );
      return Customer.fromJson(res);
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of downloads in response
  Future<List<Download>?> getDownloads({
    required int userId,
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getCustomer}/$userId/downloads',
        data: requestData,
      );
      List<Download>? downloads = <Download>[];
      downloads = data.map((comment) => Download.fromJson(comment)).toList().cast<Download>();
      return downloads;
    } catch (_) {
      rethrow;
    }
  }

  // ------------------------------------------------ Reviews ----------------------------------------------------------
  /// Get list review
  Future<List<ProductReview>?> getReviews({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getReviews,
        data: requestData,
      );

      List<ProductReview>? reviews = <ProductReview>[];
      reviews = data.map((review) => ProductReview.fromJson(review)).toList().cast<ProductReview>();
      return reviews;
    } catch (_) {
      rethrow;
    }
  }

  // ------------------------------------------------ Notification ----------------------------------------------------------
  /// Get list notification by user_id
  Future<List<MessageData>?> getNotifications({
    required RequestData requestData,
    required String userId,
  }) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getNotifcation}?user_id=$userId&app-builder-decode=true',
        data: requestData,
      );
      List<MessageData>? notifications = <MessageData>[];
      notifications = data.map((mess) => MessageData.fromJson(mess)).toList().cast<MessageData>();
      return notifications;
    } catch (_) {
      rethrow;
    }
  }

  /// Get a notification by user_id
  Future<Map<String, dynamic>?> getNoficationDetail({int? id, String? userId}) async {
    try {
      final data = await _httpClient.get('${Endpoints.getNotifcation}?user_id=$userId&app-builder-decode=true');
      return data;
    } catch (_) {
      rethrow;
    }
  }

  /// Get unRead
  Future<Map<String, dynamic>?> getUnRead({required RequestData requestData}) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getUnRead}?app-builder-decode=true',
        data: requestData,
      );
      return data;
    } catch (_) {
      rethrow;
    }
  }

  /// post Read
  Future<void> putRead({required RequestData requestData}) async {
    try {
      final data = await _httpClient.post('${Endpoints.putRead}?app-builder-decode=true', data: requestData);
      return data;
    } catch (_) {
      rethrow;
    }
  }

  /// Delete a notification by user_id
  Future<Map<String, dynamic>?> deleteNotificationById(
      {String? id, String? userId, required RequestData requestData}) async {
    try {
      final data = await _httpClient.delete(
        '${Endpoints.getNotifcation}/$id?user_id=$userId&app-builder-decode=true',
        data: requestData,
      );
      return data;
    } catch (_) {
      rethrow;
    }
  }

  /// Delete all notification by user_id
  Future<Map<String, dynamic>?> removeAllNotify({required RequestData requestData}) async {
    try {
      final data = await _httpClient.delete(
        '${Endpoints.removeAllNotification}?app-builder-decode=true',
        data: requestData,
      );
      return data;
    } catch (_) {
      rethrow;
    }
  }
}
