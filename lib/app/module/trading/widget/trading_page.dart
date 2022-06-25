import 'package:crypto_app_ui/app/module/portfolio/util.dart';
import 'package:crypto_app_ui/app/module/trading/controller.dart';
import 'package:crypto_app_ui/core/style/theme.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TradingPage extends StatelessWidget {
  const TradingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TradingController controller = Get.find<TradingController>();
    return Column(
      children: [
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 12),
            unselectedLabelStyle: TextStyle(fontSize: 12),
            unselectedLabelColor: AppTheme.greyColor,
            labelColor: Colors.black,
            controller: controller.controller1,
            padding: EdgeInsets.zero,
            tabs: const [
              Tab(
                text: "BTC EUR",
              ),
              Tab(
                text: "ETH  EUR",
              ),
              Tab(
                text: "ADA  EUR",
              ),
              Tab(
                text: "EOS  EUR",
              ),
              Tab(
                text: "EOS  EUR",
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffEE6855).withOpacity(0.1),
                    radius: 12,
                    child: Icon(
                      CryptoFontIcons.BTC,
                      size: 12,
                      color: Color(0xffEE6855),
                    ),
                  ),
                  Text(
                    "BTC",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Bitcoin",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontWeight: FontWeight.w500, color: AppTheme.greyColor),
                  ),
                ],
              ),
              Text(
                "\$ ${Util.formatDouble(29850.15)}",
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: TabBar(
            labelStyle: TextStyle(fontSize: 17),
            unselectedLabelStyle: TextStyle(fontSize: 17),
            unselectedLabelColor: AppTheme.greyColor,
            labelColor: Colors.black,
            controller: controller.controller2,
            padding: EdgeInsets.zero,
            tabs: const [
              Tab(
                text: "Buy",
              ),
              Tab(
                text: "Sell",
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Estimated purchase value",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.greyColor),
                ),
                Text(
                  "0.000241",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Estimated purchase value",
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: AppTheme.greyColor),
                        ),
                        Text(
                          "123 EUR",
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 24.h,
                          width: 43.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff336AF2)),
                              borderRadius: BorderRadius.circular(2.0)),
                          child: Center(
                            child: Text(
                              "25%",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff336AF2)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          height: 24.h,
                          width: 43.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffF3F4F9)),
                              borderRadius: BorderRadius.circular(2.0)),
                          child: Center(
                            child: Text(
                              "50%",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffB9C1D9)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          height: 24.h,
                          width: 43.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffF3F4F9)),
                              borderRadius: BorderRadius.circular(2.0)),
                          child: Center(
                            child: Text(
                              "100%",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffB9C1D9)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Divider(),
                Text(
                  "Trade fee",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.greyColor),
                ),
                Text("0.20% = 0.04 EUR",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.greyColor)),
              ],
            )),
      ],
    );
  }
}
