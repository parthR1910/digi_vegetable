

import 'package:flutter/material.dart';

extension WidgetExtension on Widget{
  paddingAll(double value) => Padding(padding: EdgeInsets.all(value),child: this,);
  paddingSymmetric({double? vertical,double? horizontal })=> Padding(padding: EdgeInsets.symmetric(vertical: vertical!,horizontal: horizontal!),child: this,);

  paddingOnly(
      {double left = 0,
        double right = 0,
        double top = 0,
        double bottom = 0}) =>
      Padding(
          padding: EdgeInsets.only(
            left: left,
            right: right,
            top: top,
            bottom: bottom,
          ),
          child: this);

  marginOnly(
      {double left = 0,
        double right = 0,
        double top = 0,
        double bottom = 0}) =>
      Container(
          margin: EdgeInsets.only(
            left: left,
            right: right,
            top: top,
            bottom: bottom,
          ),
          child: this);

  marginAll(double val) => Container(margin: EdgeInsets.all(val), child: this);
}