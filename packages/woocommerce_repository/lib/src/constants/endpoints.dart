class Endpoints {
  Endpoints._();

  // orders endpoints
  static const String getOrders = "/wc/v3/orders";

  // products endpoints
  static const String getProducts = "/wc/v3/products";

  // attributes endpoints
  static const String getAttributes = "/wc/v3/products/attributes";

  // Min - max price in category
  static const String getMinMaxPrices = "/wc/v3/min-max-prices";

  // Get brand
  static const String getBrands = "/wc/v2/products/brands";

  // Get amount balance
  static const String getAmountBalance = "/wc/v2/wallet/balance";

  // Get transaction wallet
  static const String getTransactionWallet = "/wc/v2/wallet";

  // Get cart list
  static const String getCart = "/wc/store/cart";

  // Add to cart
  static const String addToCart = "/wc/store/cart/add-item";

  // Apply coupon
  static const String applyCoupon = "/wc/store/cart/apply-coupon";

  // Remove coupon
  static const String removeCoupon = "/wc/store/cart/remove-coupon";

  // Remove cart
  static const String removeCart = "/wc/store/cart/remove-item";

  // Checkout cart
  static const String checkout = "/wc/store/checkout";

  // Get payment gateways
  static const String gateways = "/wc/v3/payment_gateways";

  // Update cart
  static const String updateCart = "/wc/store/cart/update-item";

  // Shipping cart
  static const String shippingCart = '/wc/store/cart/select-shipping-rate';

  // Update-customer cart
  static const String updateCustomerCart = '/wc/store/cart/update-customer';

  // Get country
  static const String getCountries = "/wc/v3/data/countries";

  // update customer
  static const String getCustomer = "/wc/v3/customers";

  // Get reviews
  static const String getReviews = "/wc/v3/products/reviews";

  // Get notifications
  static const String getNotifcation = "/push-notify/v1/notifications";

  /// Get unRead
  static const String getUnRead = "/push-notify/v1/unread";

  /// Get Read
  static const String putRead = "/push-notify/v1/read";

  /// Remove notification
  static const String removeAllNotification = "/push-notify/v1/delete";

  // apply point discount
  static const String applyPoint = "/wc/store/cart/extensions";

}
