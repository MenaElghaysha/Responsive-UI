import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/page_5.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Page four "),),
      body: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FifthPage(),
        )),
        child: Center(
          child: Column(
            children: [
              //for example:

          //If you want to display a rectangle:
              Container(
                width: 100.w,
                height: 100.h,
                color: Colors.indigo,
              ),

          //If you want to display a square based on width:
              Container(
                width: 100.w,
                height: 100.w,
                color: Colors.indigo,

              ),

          //If you want to display a square based on height:
              Container(
                width: 100.h,
                height: 100.h,
                color: Colors.indigo,

              ),

            //If you want to display a square based on minimum(height, width):
              Container(
                width: 100.r,
                height: 100.r,
                color: Colors.indigo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
