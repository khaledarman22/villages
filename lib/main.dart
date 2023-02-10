import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Village',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            backgroundColor: InUseColors.backgroundColor,
            scaffoldBackgroundColor: InUseColors.backgroundColor,
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                color: InUseColors.componentsColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            appBarTheme: AppBarTheme(
              toolbarHeight: 12.h,
              color: InUseColors.appBarColor,
              foregroundColor: InUseColors.componentsColor,
              titleTextStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: InUseColors.componentsColor,
              ),
            ),
          ),
          initialRoute: AppRouter.splashScreen.name,
          routes: AppRouter.routes,
        );
      },
    );
  }
}
