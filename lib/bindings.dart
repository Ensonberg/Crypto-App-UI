import 'package:crypto_app_ui/app/module/main_screen/controller.dart';
import 'package:crypto_app_ui/app/module/portfolio/controller.dart';
import 'package:crypto_app_ui/app/module/trading/controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(() => MainScreenController());
    Get.lazyPut<PortfolioController>(() => PortfolioController());
    Get.lazyPut<TradingController>(() => TradingController());
  }
}
