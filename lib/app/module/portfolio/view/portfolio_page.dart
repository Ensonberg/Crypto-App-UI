import 'package:crypto_app_ui/app/module/portfolio/widget/portfolio_item.dart';
import 'package:crypto_app_ui/app/module/portfolio/widget/wallet_balance_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PortfolioController controller = Get.find<PortfolioController>();
    return Column(
      children: [
        SizedBox(
          height: 24.h,
        ),
        SizedBox(
          height: 179.h,
          child: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: ListView.builder(
                itemCount: controller.list.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return WalletBalanceCard(
                    model: controller.list[index],
                  );
                }),
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Charts",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffB9C1D9)),
              ),
              Text(
                "See All",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffEE6855)),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: controller.portfolioList.length,
              itemBuilder: (context, index) {
                return PortFolioItem(
                  model: controller.portfolioList[index],
                );
              }),
        )
      ],
    );
  }
}
