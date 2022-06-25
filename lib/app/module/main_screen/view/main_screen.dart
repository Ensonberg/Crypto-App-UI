import 'package:crypto_app_ui/app/module/main_screen/controller.dart';
import 'package:crypto_app_ui/app/module/portfolio/view/portfolio_page.dart';
import 'package:crypto_app_ui/app/module/trading/widget/trading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../widget/bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainScreenController controller = Get.find<MainScreenController>();
    var media = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: Obx(() => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: SizedBox(
                    width: media.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            controller.titles[controller.tabIndex.value],
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        SvgPicture.asset("assets/svgs/settings.svg"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: IndexedStack(
                    index: controller.tabIndex.value,
                    children: [
                      const PortfolioPage(),
                      const TradingPage(),
                      Container(
                        child: Center(
                          child: Text("6iiii"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
