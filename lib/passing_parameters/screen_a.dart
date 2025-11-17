import 'package:flutter/material.dart';
import 'package:flutter_sec_10/passing_parameters/screen_b.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child:
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>ScreenB(
            name : ' Ali' , email : 'Ali@gmail.com'
          )));
        }, child: Text("Show Screen B")),),
    );
  }
}
