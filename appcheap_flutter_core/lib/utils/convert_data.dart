import 'dart:math';
import 'package:flutter/material.dart';

final _random = Random();

/// This is utility convert data for app
///
class ConvertData {
  /// This helper function convert any value to `double`
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

  /// Convert String to int
  static int stringToInt([dynamic value = '0', int initValue = 0]) {
    if (value is int) {
      return value;
    }
    if (value is double) {
      return value.toInt();
    }
    if (value is String) {
      return int.tryParse(value) ?? initValue;
    }
    return initValue;
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

  static String fromColor(Color color) {
    String hex = color.value.toRadixString(16);

    return '#${hex.substring(2)}';
  }

  /// Create a color from red, green, blue, and opacity
  static Color fromRGBA(Map? color, [defaultColor]) {
    if (color is! Map<String, dynamic> || color['r'] == null || color['g'] == null || color['b'] == null) {
      return defaultColor ?? Colors.white;
    }

    int r = color['r'].toInt();
    int? g = color['g'].toInt();
    int? b = color['b'].toInt();
    double? a = color['a'] == null ? 1 : color['a'].toDouble();

    if (r < 0 || r > 255) return defaultColor ?? Colors.white;
    if (g! < 0 || g > 255) return defaultColor ?? Colors.white;
    if (b! < 0 || b > 255) return defaultColor ?? Colors.white;
    return Color.fromRGBO(r, g, b, a!);
  }

  static Color randomColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextDouble(),
    );
  }
}
