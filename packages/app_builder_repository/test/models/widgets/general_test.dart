import 'package:app_builder_repository/src/models/widgets/general.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable AWGeneral widget test', () {
    Map<String, dynamic> json = {
      "id": "general",
      "type": "general",
      "fields": {
        "forceLogin": false,
        "forceLoginMobile": false,
        "forceLoginCheckout": false,
        "forceLoginAddToCart": false,
        "enableSelectLanguage": true,
        "enableLocationScreen": false,
        "enableOnBoarding": true,
        "enableRegister": true,
        "enableProductQuickView": false,
        "loginView": "email",
        "enableCaptchaLogin": true,
        "enableCaptchaRegister": true,
        "enableCaptchaReviewProduct": true,
        "enableCaptchaCommentPost": true,
        "productItemLabelEnableNew": true,
        "productItemLabelEnableSale": true,
        "productItemLabelEnableRating": true,
        "productItemEnableQuantity": false,
        "productItemEnableAddCart": true,
        "initCodeCountry": "US",
        "includeCountry": ["AS", "DZ"],
        "excludeCountry": ["AS", "AD"],
        "loginProvider": "firebase",
        "customCheckout": false
      },
    };

    AWGeneral general = AWGeneral.fromJson(json);

    //
    expect(general.id, "general");
    expect(general.type, "general");

    expect(general.toJson(), json);
  });
}
