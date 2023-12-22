import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toss_clone/common/common.dart';

abstract mixin class StockPercentageDataProvider {

  int get currentPrice;
  int get yesterdayClosePrice;

  double get todayPercentage => ((currentPrice - yesterdayClosePrice)/yesterdayClosePrice*100).toPrecision(2);
  String get todayPercentageString => "$symbol$todayPercentage%";
  String get symbol => isSame ? "": isPlus ? "+" : "-";
  bool get isPlus => currentPrice > yesterdayClosePrice;
  bool get isSame => currentPrice == yesterdayClosePrice;
  bool get isMinus => currentPrice < yesterdayClosePrice;
  Color getPriceColor(BuildContext context) => isSame ? context.appColors.lessImportant: isPlus ? context.appColors.plus : context.appColors.minus;
}