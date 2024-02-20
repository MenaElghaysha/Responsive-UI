import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FifthPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text("Page five "),
        ),
        body: Center(
            child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Device Size:${Size(1.sw, 1.sh)}'),
            Text('Device pixel density:${ScreenUtil().pixelRatio}'),
            Text(
                'Bottom safe zone distance dp:${ScreenUtil().bottomBarHeight}dp'),
            Text('Status bar height dp:${ScreenUtil().statusBarHeight}dp'),
            Text(
                'The ratio of actual width to UI design:${ScreenUtil().scaleWidth}'),
            Text(
                'The ratio of actual height to UI design:${ScreenUtil().scaleHeight}'),
            Text('System font scaling:${ScreenUtil().textScaleFactor}'),
            Text('0.5 times the screen width:${0.5.sw}dp'),
            Text('0.5 times the screen height:${0.5.sh}dp'),
            Text('Screen orientation:${ScreenUtil().orientation}'),
            Row(
              children: [
                // Using Extensions
                Container(
                  padding: EdgeInsets.all(10.w),
                  width: 0.5.sw,
                  height: 200.h,
                  color: Colors.red,
                  child: Text(
                    'My actual width: ${0.5.sw}dp \n\n'
                    'My actual height: ${200.h}dp',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                // Without using Extensions
                Container(
                  color: Colors.blue,
                  constraints: BoxConstraints(maxWidth: 180, minHeight: 200).hw,
                  padding: EdgeInsets.all(10.w),
                  child: Text(
                    'My design draft width: 180dp\n\n'
                    'My design draft height: 200dp',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(12),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10).w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16).w),
                color: Colors.green,
              ),
              width: 100.r,
              height: 100.r,
              child: Text(
                'I am a square with a side length of 100',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
              ),
            ),

          ]),
        )));
  }
}
