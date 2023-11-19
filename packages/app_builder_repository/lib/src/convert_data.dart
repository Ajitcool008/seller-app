import 'package:flutter/material.dart';

class ConvertData {
  /// This helper function convert any value to `double`
  ///
  static double stringToDouble(dynamic value, [double defaultValue = 0]) {
    if (value == null || value == "") {
      return defaultValue;
    }
    if (value is int) {
      return value.toDouble();
    }
    if (value is double) {
      return value;
    }

    if (value is String) {
      return double.tryParse(value) ?? defaultValue;
    }

    return defaultValue;
  }

  /// This helper function convert any value to `double` and `null`
  ///
  /// In some case we need this, like when both value `double` and `null` accepted
  /// If you want always return `double` value try function [stringToDouble] instead
  ///
  static double? stringToDoubleCanBeNull(dynamic value, [double? defaultValue]) {
    if (value == null || value == "") {
      return defaultValue;
    }

    if (value is int) {
      return value.toDouble();
    }

    if (value is double) {
      return value;
    }

    if (value is String) {
      return double.tryParse(value) ?? defaultValue;
    }

    return defaultValue;
  }

  /// Convert String to int
  static int stringToInt([dynamic value = '0', int initValue = 0]) {
    if (value is int) {
      return value;
    }
    if (value is double) {
      return value.toInt();
    }
    if (value is String) {
      // Parse to double value first
      num doubleValue = double.tryParse(value) ?? initValue;
      // convert to int
      return doubleValue.toInt();
    }
    return initValue;
  }

  /// This helper function convert any value to `int` and `null`
  ///
  /// In some case we need this, like when both value `int` and `null` accepted
  /// If you want always return `double` value try function [stringToInt] instead
  ///
  static int? stringToIntCanBeNull(dynamic value, [int? defaultValue]) {
    if (value == null || value == "") {
      return defaultValue;
    }

    if (value is double) {
      return value.toInt();
    }

    if (value is int) {
      return value;
    }

    if (value is String) {
      return int.tryParse(value) ?? defaultValue;
    }
    return defaultValue;
  }

  /// Convert any value to String
  static String toStringValue([dynamic value = '', String initValue = '']) {
    if (value is String) {
      return value;
    }

    if (value == null || value == '') {
      return initValue;
    }

    return value.toString();
  }

  static String? toStringValueCanBeNull([dynamic value = '', String initValue = '']) {
    if (value is String) {
      return value;
    }

    if (value == '') {
      return initValue;
    }

    if (value == null) {
      return null;
    }

    return value.toString();
  }

  static Size toSizeValue(dynamic value, [Size initValue = Size.zero]) {
    if (value is Size) {
      return value;
    }

    if (value is Map) {
      double width = ConvertData.stringToDouble(value['width'], initValue.width);
      double height = ConvertData.stringToDouble(value['height'], initValue.height);
      return Size(width, height);
    }

    return initValue;
  }

  /// Convert any value to bool or null
  static bool? toBoolValue(dynamic value) {
    if (value is bool) {
      return value;
    }

    if (value == "true" || value == 1 || value == "1") {
      return true;
    }

    if (value == "false" || value == 0 || value == "0") {
      return false;
    }
    return null;
  }

  /// Convert any value to Map<String, dynamic> or null
  static Map<String, dynamic>? toMapStringDynamic(dynamic value) {
    if (value is Map<String, dynamic>) {
      return value;
    }
    if (value is Map) {
      return Map.castFrom<dynamic, dynamic, String, dynamic>(value);
    }
    return null;
  }

  static Map<String, dynamic> toMapSize(Size value) {
    return {
      'width': value.width,
      'height': value.height,
    };
  }

  /// Convert String to Text Align
  static TextAlign toTextAlign([String value = 'start']) {
    switch (value) {
      case 'left':
        return TextAlign.left;
      case 'center':
        return TextAlign.center;
      case 'right':
        return TextAlign.right;
      case 'justify':
        return TextAlign.justify;
      case 'end':
        return TextAlign.end;
      default:
        return TextAlign.start;
    }
  }

  static BoxFit toBoxFit(String? value) {
    switch (value) {
      case 'fill':
        return BoxFit.fill;
      case 'fit-width':
        return BoxFit.fitWidth;
      case 'fit-height':
        return BoxFit.fitHeight;
      case 'scale-down':
        return BoxFit.scaleDown;
      case 'contain':
        return BoxFit.contain;
      case 'none':
        return BoxFit.none;
      default:
        return BoxFit.cover;
    }
  }

  static AlignmentDirectional toAlignmentDirectional(dynamic value) {
    switch (value) {
      case 'bottom-center':
        return AlignmentDirectional.bottomCenter;
      case 'top-center':
        return AlignmentDirectional.topCenter;
      case 'center-left':
      case 'center-start':
        return AlignmentDirectional.centerStart;
      case 'bottom-left':
      case 'bottom-start':
        return AlignmentDirectional.bottomStart;
      case 'center-right':
      case 'center-end':
        return AlignmentDirectional.centerEnd;
      case 'bottom-right':
      case 'bottom-end':
        return AlignmentDirectional.bottomEnd;
      case 'top-left':
      case 'top-start':
        return AlignmentDirectional.topStart;
      case 'top-right':
      case 'top-end':
        return AlignmentDirectional.topEnd;
      default:
        return AlignmentDirectional.center;
    }
  }

  static String toStringAlignmentDirectional(AlignmentDirectional value) {
    if (value == AlignmentDirectional.bottomCenter) {
      return 'bottom-center';
    }

    if (value == AlignmentDirectional.topCenter) {
      return 'top-center';
    }

    if (value == AlignmentDirectional.centerStart) {
      return 'center-start';
    }

    if (value == AlignmentDirectional.bottomStart) {
      return 'bottom-start';
    }

    if (value == AlignmentDirectional.centerEnd) {
      return 'center-end';
    }

    if (value == AlignmentDirectional.bottomEnd) {
      return 'bottom-end';
    }

    if (value == AlignmentDirectional.topStart) {
      return 'top-start';
    }

    if (value == AlignmentDirectional.topEnd) {
      return 'top-end';
    }

    return 'center';
  }

  static FontWeight fontWeight(dynamic value) {
    if (value is! String) {
      return FontWeight.normal;
    }
    switch (value) {
      case '100':
        return FontWeight.w100;
      case '200':
        return FontWeight.w200;
      case '300':
        return FontWeight.w300;
      case '400':
        return FontWeight.w400;
      case '500':
        return FontWeight.w500;
      case '600':
        return FontWeight.w600;
      case '700':
        return FontWeight.w700;
      case '800':
        return FontWeight.w800;
      case '900':
        return FontWeight.w900;
      default:
        return FontWeight.normal;
    }
  }

  static TextDecoration toTextDecoration(dynamic value) {
    switch (value) {
      case 'underline':
        return TextDecoration.underline;
      case 'overline':
        return TextDecoration.overline;
      case 'line-through':
        return TextDecoration.lineThrough;
      default:
        return TextDecoration.none;
    }
  }
}
