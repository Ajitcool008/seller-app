import 'package:app_builder_repository/src/models/types/text.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('JsonSerializable type Text with all correct format', () {
    Map<String, dynamic> json = {
      "text": "Free Shipping & Free Return",
      "en": "Free Shipping & Free Return en",
      "es": "es",
      "style": {
        "color": {
          "value": {
            'r': 10,
            'g': 11,
            'b': 33,
            'a': 1,
          },
          "dark": {
            'r': 102,
            'g': 112,
            'b': 33,
            'a': 0,
          }
        },
        "fontSize": 14,
        "fontFamily": 'Poppins',
        "fontWeight": '600',
        "letterSpacing": 1.2,
        "height": 2.4,
        "textDecoration": 'underline',
        "backgroundColor": {
          "value": {
            'r': 10,
            'g': 11,
            'b': 33,
            'a': 1,
          },
          "dark": {
            'r': 102,
            'g': 112,
            'b': 33,
            'a': 0,
          }
        },
      },
    };

    AbdText text = AbdText.fromJson(json);

    // Check text translate
    expect(text.translate['text'], "Free Shipping & Free Return");
    expect(text.translate['es'], "es");
    expect(text.translate['en'], "Free Shipping & Free Return en");

    // Check backgroundColor
    expect(text.style?.backgroundColor?.dark.r, 102);
    expect(text.style?.backgroundColor?.dark.g, 112);
    expect(text.style?.backgroundColor?.dark.b, 33);
    expect(text.style?.backgroundColor?.dark.a, 0);

    expect(text.style?.backgroundColor?.value.r, 10);
    expect(text.style?.backgroundColor?.value.g, 11);
    expect(text.style?.backgroundColor?.value.b, 33);
    expect(text.style?.backgroundColor?.value.a, 1);

    // Check color
    expect(text.style?.color?.dark.r, 102);
    expect(text.style?.color?.dark.g, 112);
    expect(text.style?.color?.dark.b, 33);
    expect(text.style?.color?.dark.a, 0);

    expect(text.style?.color?.value.r, 10);
    expect(text.style?.color?.value.g, 11);
    expect(text.style?.color?.value.b, 33);
    expect(text.style?.color?.value.a, 1);
  });

  test('JsonSerializable type Text empty translate', () {
    Map<String, dynamic> json = {
      "style": {
        "color": {
          "value": {
            'r': 10,
            'g': 11,
            'b': 33,
            'a': 1,
          },
          "dark": {
            'r': 102,
            'g': 112,
            'b': 33,
            'a': 0,
          }
        },
        "fontSize": 14,
        "fontFamily": 'Poppins',
        "fontWeight": '600',
        "letterSpacing": 1.2,
        "height": 2.4,
        "textDecoration": 'underline',
        "backgroundColor": {
          "value": {
            'r': 10,
            'g': 11,
            'b': 33,
            'a': 1,
          },
          "dark": {
            'r': 102,
            'g': 112,
            'b': 33,
            'a': 0,
          }
        },
      },
    };

    AbdText text = AbdText.fromJson(json);

    // Check text translate
    expect(text.translate['text'], "");
  });

  test('JsonSerializable type Text getText by language code function', () {
    Map<String, dynamic> json = {
      "text": "Free Shipping & Free Return",
      "en": "Free Shipping & Free Return en",
      "es": "es",
      "style": {
        "color": {
          "value": {
            'r': 10,
            'g': 11,
            'b': 33,
            'a': 1,
          },
          "dark": {
            'r': 102,
            'g': 112,
            'b': 33,
            'a': 0,
          }
        },
        "fontSize": 14,
        "fontFamily": 'Poppins',
        "fontWeight": '600',
        "letterSpacing": 1.2,
        "height": 2.4,
        "textDecoration": 'underline',
        "backgroundColor": {
          "value": {
            'r': 10,
            'g': 11,
            'b': 33,
            'a': 1,
          },
          "dark": {
            'r': 102,
            'g': 112,
            'b': 33,
            'a': 0,
          }
        },
      },
    };

    AbdText text = AbdText.fromJson(json);

    // Check text translate
    expect(text.getText(), "Free Shipping & Free Return");
    expect(text.getText('es'), "es");
    expect(text.getText('en'), "Free Shipping & Free Return en");
  });

  test('JsonSerializable type Text without style', () {
    Map<String, dynamic> json = {
      "text": "Free Shipping & Free Return",
    };

    AbdText text = AbdText.fromJson(json);

    // Check text translate
    expect(text.getText(), "Free Shipping & Free Return");

    expect(text.toJson(), json);
  });
}
