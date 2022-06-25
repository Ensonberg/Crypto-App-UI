import 'package:crypto_app_ui/app/module/main_screen/controller.dart';
import 'package:crypto_app_ui/core/style/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainScreenController controller = Get.find<MainScreenController>();
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          selectedItemColor: Color(0xff336AF2),
          items: [
            BottomNavigationBarItem(
              icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: SvgPicture.asset(
                    "assets/svgs/portfolio.svg",
                    color: controller.tabIndex.value == 0
                        ? AppColor.selectedColor
                        : AppColor.unSelectedColor,
                  )),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: SvgPicture.asset(
                    "assets/svgs/trading.svg",
                    color: controller.tabIndex.value == 1
                        ? AppColor.selectedColor
                        : AppColor.unSelectedColor,
                  )),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: SvgPicture.asset(
                    "assets/svgs/profile.svg",
                    color: controller.tabIndex.value == 2
                        ? AppColor.selectedColor
                        : AppColor.unSelectedColor,
                  )),
              label: '',
            ),
          ],
        )));
  }
}
