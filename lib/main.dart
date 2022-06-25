import 'package:crypto_app_ui/app/module/main_screen/view/main_screen.dart';
import 'package:crypto_app_ui/bindings.dart';
import 'package:crypto_app_ui/core/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
          ]);

          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialBinding: Binding(),
            title: 'Crypto Currency App',
            theme: AppTheme.lightTheme,
            home: child,
          );
        },
        child: const MainScreen());
  }
}
