import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TradingController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController controller1;
  late TabController controller2;
  var tabIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();

    controller1 = TabController(vsync: this, length: 5);
    controller1.addListener(() {
      tabIndex.value = controller1.index;
    });
    controller2 = TabController(vsync: this, length: 2);
  }

  @override
  void onClose() {
    controller1.dispose();
    controller2.dispose();
    super.onClose();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }
}
