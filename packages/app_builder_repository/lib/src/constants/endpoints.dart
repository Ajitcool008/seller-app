class Endpoints {
  Endpoints._();

  // App Builder API: ==================================================================================================

  // categories endpoints
  static const String getCategories = "/app-builder/v1/categories";

  // Settings endpoints
  static const String getSettings = "/app-builder/v1/settings";

  // Login with Email and Username
  static const String login = "/app-builder/v1/login";

  // Register
  static const String register = "/app-builder/v1/register";

  // Forgot password
  static const String forgotPassword = "/app-builder/v1/lost-password";

  // Change password
  static const String changePassword = "/app-builder/v1/change-password";

  // Variable endpoints
  static const String getProductVariable = "/app-builder/v1/product-variations";

  // Cart endpoints
  static const String current = "/app-builder/v1/current";

  // archives post
  static const String archives = "/app-builder/v1/archives";

  // vendor
  static const String getVendor = "/app-builder/v1/vendors";

  // Category vendor
  static const String getCategoryVendor = "/app-builder/v1/vendors/categories";

  // vendor
  static const String getCountryLocale = "/app-builder/v1/get-country-locale";

  // address
  static const String getAddress = "/app-builder/v1/address";

  // address book
  static const String addressBooks = "/app-builder/v1/address-books";

  // Delete account
  static const String deleteAccount = "/app-builder/v1/delete";

  // Send otp
  static const String sendOptDeleteAccount = "/app-builder/v1/send-otp-delete";

  // Get captcha
  static const String getCaptcha = "/app-builder/v1/captcha/get";

  // Validate captcha
  static const String validateCaptcha = "/app-builder/v1/captcha/validate";

  // Progress server for payment
  static const String progressServer = "/app-builder/v1/confirm-payment";

  // Clean cart
  static const String cleanCart = "/app-builder/v1/clean-cart";

  // update customer
  static const String postCustomer = "/app-builder/v1/customers";

  // write review
  static const String writeReview = "/app-builder/v1/reviews";

  // get rating count
  static const String ratingCount = "/app-builder/v1/rating-count";

  // get coupon list
  static const String couponList = "/app-builder/v1/smart-coupon-list";

  // Like video product
  static const String likeProductVideo = "/app-builder-shopping-video-addons/v1/likes";

  // apply point discount
  static const String pointReward = "/app-builder/v1/points-and-rewards";
}
