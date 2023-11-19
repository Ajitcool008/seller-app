/// The User Option Config store on/off features
///
/// Ex: To decided hide or display advertisement for logged user, we collect data via REST or computed value
/// and store here. But prefer only store for reading, do not manual edit value in this object.
///
/// Also it was born for open idea on the future of the app.
///

class UserOptions {
  /// Option hideAds
  ///
  /// This option to check hide or display advertisement on the app.
  /// Since App builder 2.9.0 we support [Paid Memberships Pro](https://www.paidmembershipspro.com)
  /// So to detect show/hide Ads on the app you should install [Paid Memberships Pro](https://www.paidmembershipspro.com)
  /// You can get more info [here](https://www.paidmembershipspro.com/documentation/content-controls/hide-ads/)
  ///
  /// Hide Ads if this option set true, default is false
  final bool hideAds;

  final String b2bkingCustomerGroupId;

  /// UserOptions constructor
  UserOptions({
    this.hideAds = false,
    this.b2bkingCustomerGroupId = '',
  });

  /// Empty Option Config
  factory UserOptions.empty() => UserOptions(hideAds: false);

  /// UserOptions from Json
  factory UserOptions.fromJson(Map<String, dynamic> json) => _$UserOptionsFromJson(json);

  /// Json from UserOptions
  Map<String, dynamic> toJson() => _$UserOptionsToJson(this);
}

UserOptions _$UserOptionsFromJson(Map<String, dynamic> json) => UserOptions(
      hideAds: json['hideAds'] as bool,
      b2bkingCustomerGroupId: json['b2bkingCustomerGroupId'] ?? '',
    );

Map<String, dynamic> _$UserOptionsToJson(UserOptions instance) => <String, dynamic>{
      'hideAds': instance.hideAds,
      'b2bkingCustomerGroupId': instance.b2bkingCustomerGroupId,
    };
