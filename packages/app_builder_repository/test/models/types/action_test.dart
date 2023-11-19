import 'package:app_builder_repository/src/models/types/types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Action with all correct format', () {
    Map<String, dynamic> json = {
      "type": "screen",
      "route": "/",
      "args": {"screen_key": 'home'}
    };

    AbdAction action = AbdAction.fromJson(json);

    expect(action.action.type, 'screen');
    expect(action.action.route, '/');
    expect(action.action.args, {"screen_key": 'home'});
  });

  test('JsonSerializable type Action with null value', () {
    Map<String, dynamic> json = {};

    AbdAction action = AbdAction.fromJson(json);

    expect(action.action.type, 'screen');
    expect(action.action.route, '/');
    expect(action.action.args, null);
  });

  test('JsonSerializable type Action with translate', () {
    Map<String, dynamic> json = {
      "type": "screen",
      "route": "/",
      "args": {"screen_key": 'home'},
      "ar": {
        "type": "screen",
        "route": "/",
        "args": {"screen_key": 'home'}
      },
      "it": {
        "type": "screen",
        "route": "/",
        "args": {"screen_key": 'home'}
      }
    };

    Map<String, dynamic> expectedData = {
      "type": "screen",
      "route": "/",
      "args": {"screen_key": 'home'}
    };

    AbdAction action = AbdAction.fromJson(json);

    expect(action.action.type, 'screen');
    expect(action.action.route, '/');
    expect(action.action.args, {"screen_key": 'home'});

    expect(action.action.toJson(), expectedData);
    expect(action.getIcon()?.toJson(), expectedData);
    expect(action.getIcon('ar')?.toJson(), expectedData);
    expect(action.getIcon('it')?.toJson(), expectedData);
    expect(action.getIcon('br')?.toJson(), null);

    expect(action.toJson(), json);
  });
}
