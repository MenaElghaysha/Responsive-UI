import 'package:flutter/material.dart';
import 'package:responsive_ui/page_2.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        // appBar: AppBar(title: Text("Test"),),
        body: GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(),)),
          child: Center(
            child: Column(
              children: [
                Container(
                  height:  320/3,
                  width: MediaQuery.of(context).size.width/9,
                  color: Colors.amber,
                ),
          
                SizedBox(height: MediaQuery.of(context).size.height/4,),
                Container(
                  height:  320/3,
                  width: MediaQuery.of(context).size.width/9,
                  color: Colors.deepOrange,
                ),
          
          
                SizedBox(height: MediaQuery.of(context).size.height/4,),
                Container(
                  height:  320/3,
                  width: MediaQuery.of(context).size.width/9,
                  color: Colors.lightGreen,
                ),
              ],
            ),
          ),
        ),

    );
  }

}