class Endpoints {
  Endpoints._();

// Update user token endpoints
  static const String updateUserToken = "/push-notify/v1/update-user-token";

  // Remove user token endpoints
  static const String removeUserToken = "/push-notify/v1/remove-user-token";

  // Remove all
  static const String removeAllNotify = "/push-notify/v1/delete";

  // Get notification by user_id
  static const String getNotify = "/push-notify/v1/notifications";

  /// Get unRead
  static const String getUnRead = "/push-notify/v1/unread";

  /// Get Read
  static const String putRead = "/push-notify/v1/read";
}
