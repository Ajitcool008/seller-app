import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

enum AbdAlignment {
  @JsonValue('center')
  center,
  @JsonValue('left')
  left,
  @JsonValue('right')
  right,
  @JsonValue('justify')
  justify,
  @JsonValue('end')
  end,
  @JsonValue('start')
  start,
}
extension AbdAlignmentValue on AbdAlignment {
  TextAlign getValue (){
    switch (this) {
      case AbdAlignment.left:
        return TextAlign.left;
      case AbdAlignment.center:
        return TextAlign.center;
      case AbdAlignment.right:
        return TextAlign.right;
      case AbdAlignment.justify:
        return TextAlign.justify;
      case AbdAlignment.end:
        return TextAlign.end;
      default:
        return TextAlign.start;
    }
  }
}