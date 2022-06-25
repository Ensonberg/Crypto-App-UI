import 'package:crypto_app_ui/app/data/model/portofilo_data_model.dart';
import 'package:crypto_app_ui/app/data/model/wallet_data_model.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/cupertino.dart';

class PortfolioRepository {
  static final List<WalletDataModel> _list = [
    WalletDataModel(
      balance: 42533,
      currency: "€",
      startColor: Color(0xff63E2FF),
      endColor: Color(0xffB066FE),
    ),
    WalletDataModel(
      balance: 56533,
      currency: "\$",
      startColor: Color(0xffFFE98A),
      endColor: Color(0xffD74177),
    ),
  ];

  static List<WalletDataModel> get list => _list;

 static List<PortfolioDataModel> get portfolioList => _portfolioList;
  static final List<PortfolioDataModel> _portfolioList = [
    PortfolioDataModel(
        icon: CryptoFontIcons.BTC,
        cryptoName: "Bitcoin",
        color: const Color(0xffEE6855),
        cryptoShortName: "BTC",
        percentage: 54.21,
        balanceInDollar: 29850.15,
        balanceInBTC: 1.12412),
    PortfolioDataModel(
        icon: CryptoFontIcons.ETH,
        cryptoName: "Ethereum",
        color: const Color(0xff35378D),
        cryptoShortName: "ETH",
        percentage: 54.21,
        balanceInDollar: 10472.81,
        balanceInBTC: 5.25827),
    PortfolioDataModel(
        icon: CryptoFontIcons.LTC,
        cryptoName: "Litecoin",
        color: const Color(0xff23B480),
        cryptoShortName: "LTC",
        percentage: 11.25,
        balanceInDollar: 5241.20,
        balanceInBTC: 5.72814),
    PortfolioDataModel(
        icon: CryptoFontIcons.XRP,
        cryptoName: "Ripple",
        color: const Color(0xff396BEF),
        cryptoShortName: "XRP",
        percentage: 7.46,
        balanceInDollar: 4250.97,
        balanceInBTC: 3.94212),
    PortfolioDataModel(
        icon: CryptoFontIcons.ZEC,
        cryptoName: "Zcash",
        color: const Color(0xff000000),
        cryptoShortName: "ZEC",
        percentage: 2.17,
        balanceInDollar: 1462.45,
        balanceInBTC: 5.25827),
  ];
}
