import 'package:flutter/material.dart';
import 'package:responsive_ui/page_1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: FirstPage(),
            theme: ThemeData(
            // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),

          );
        });
  }}