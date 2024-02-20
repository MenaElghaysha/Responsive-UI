import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/page_4.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool fontsize = false;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page Text Adaption"),
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FourthPage(),
            )),
            child: Container(
              height: flag ? 200.h : 200,
              width: flag ? 200.w : 200,
              color: Colors.lightGreen,
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  fontsize = !fontsize;
                  flag = !flag;
                  print(flag);
                });
              },
              child: Text(
                "Look At My Size!",
                style: TextStyle(
                    fontSize: fontsize == true ? 40.w : 40.sp,
                    color: Colors.black),
              )),
          Text(
            '16sp, will not change with the system.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
            ),
            textScaler: TextScaler.linear(1),
          ),
          Text(
            '16sp,if data is not set in MediaQuery,my font size will change with the system.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
            ),
          ),
          MediaQuery(
            ///Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
            child: Text('16sp,if data is not set in MediaQuery,my font size will change with the system.',style: TextStyle(fontSize: 16.sp)),
          )
        ]),
      ),
    );
  }
}
