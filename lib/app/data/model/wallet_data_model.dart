import 'package:flutter/cupertino.dart';

class WalletDataModel {
  final double? balance;
  final String? currency;
  final Color? startColor;
  final Color? endColor;

  WalletDataModel(
      {this.balance, this.currency, this.startColor, this.endColor});
}
