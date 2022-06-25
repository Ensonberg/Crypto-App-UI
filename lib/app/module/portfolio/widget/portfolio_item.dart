import 'package:crypto_app_ui/app/data/model/portofilo_data_model.dart';
import 'package:crypto_app_ui/app/module/portfolio/util.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortFolioItem extends StatelessWidget {
  const PortFolioItem({Key? key, required this.model}) : super(key: key);
  final PortfolioDataModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: model.color!.withOpacity(0.1),
                radius: 24,
                child: Icon(
                  model.icon!,
                  color: model.color!,
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35.h,
                        width: 80.w,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 5,
                              child: Text(
                                model.cryptoShortName!,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 10,
                              child: Text(
                                "${model.percentage!}%",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(fontSize: 11.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        model.cryptoName!,
                        style: Theme.of(context).textTheme.headline3!,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 70.w,
                    child: LineChart(
                      sampleData(model),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "\$ ${Util.formatDouble(model.balanceInDollar!)}",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "${model.balanceInBTC} BTC",
                    style: Theme.of(context).textTheme.headline3!,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Divider(),
        ],
      ),
    );
  }

  LineChartData sampleData(PortfolioDataModel model) {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: false,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        topTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      // minX: 0,
      maxX: 12,
      maxY: 4,
      minY: 0,
      lineBarsData: linesBarData(model),
    );
  }

  List<LineChartBarData> linesBarData(PortfolioDataModel model) {
    return [
      LineChartBarData(
        spots: const [
          FlSpot(1, 1.5),
          FlSpot(3, 1.5),
          FlSpot(6, 2.8),
          FlSpot(9, 1.5),
          FlSpot(12, 2.5),
          // FlSpot(10, 2.8),
          // FlSpot(12, 2.6),
          // FlSpot(13, 3),
        ],
        isCurved: true,
        color: model.color!,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              model.color!.withOpacity(0.5),
              Colors.white,
            ],
          ),
        ),
      ),
    ];
  }
}
