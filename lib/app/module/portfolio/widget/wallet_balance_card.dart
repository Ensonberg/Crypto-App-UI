import 'package:crypto_app_ui/app/data/model/wallet_data_model.dart';
import 'package:crypto_app_ui/app/module/portfolio/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WalletBalanceCard extends StatelessWidget {
  final WalletDataModel model;
  const WalletBalanceCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Material(
        child: Container(
          height: 176.h,
          width: 305.w,
          padding:
              const EdgeInsets.only(left: 16, top: 20, bottom: 20, right: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  model.startColor!,
                  model.endColor!,
                ],
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${model.currency} ${Util.formatDouble(model.balance!)}",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: Colors.white),
                      ),
                      SvgPicture.asset("assets/svgs/btc.svg"),
                    ],
                  ),
                  Text(
                    "Your balance is equivalent",
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 5, bottom: 5),
                      child: Text(
                        "Deposit",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 5, bottom: 5),
                      child: Text(
                        "Withdraw",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
