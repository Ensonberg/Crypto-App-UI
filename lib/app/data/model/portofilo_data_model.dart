import 'package:flutter/cupertino.dart';

class PortfolioDataModel {
  final String? cryptoName;
  final String? cryptoShortName;
  final double? percentage;
  final double? balanceInDollar;
  final double? balanceInBTC;
  final IconData? icon;
  final Color? color;

  PortfolioDataModel(
      {this.cryptoName,
      this.cryptoShortName,
      this.percentage,
      this.balanceInDollar,
      this.balanceInBTC,
      this.color,
      this.icon});
}
