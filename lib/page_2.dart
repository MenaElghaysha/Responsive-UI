import 'package:flutter/material.dart';
import 'package:responsive_ui/page_3.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Second Page with MediaQuery",style: TextStyle(fontSize: 18)),),
      body: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThirdPage(),)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/9,
                height: MediaQuery.of(context).size.height/6,
                color: Colors.orangeAccent,
              ),
        
              // SizedBox(height: MediaQuery.of(context).size.height/320),
        
              Container(
                width: MediaQuery.of(context).size.width/9,
                height: MediaQuery.of(context).size.height/6,
                color: Colors.orangeAccent,
              ),
        
              // SizedBox(height: MediaQuery.of(context).size.height/50),
        
              Container(
                width: MediaQuery.of(context).size.width/9,
                height: MediaQuery.of(context).size.height/6,
                color: Colors.orangeAccent,
              ),
        
              SizedBox(height: MediaQuery.of(context).size.height/50),
            ],
          ),
        ),
      ),
    );
  }

}