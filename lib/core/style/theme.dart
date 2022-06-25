import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();
  static const Color greyColor = Color(0xffB9C1D9);
  static ThemeData get lightTheme {
    return ThemeData(
        //2
        fontFamily: "SF Pro Display",
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 26.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          headline3: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            color: greyColor,
          ),
        ),
        buttonTheme: ButtonThemeData(
          // 4
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.purple,
        ));
  }
}
//   static ThemeData theme = ThemeData(

//       )).copyWith();
// }
