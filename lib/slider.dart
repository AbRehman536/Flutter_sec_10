import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sec_10/pageview_demo.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double currentValue = 20;

  @override
  // void initState(){
  //   Timer(Duration(seconds: 5), (){
  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>PageviewDemo()));
  //   });
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.2,
              child: CircularProgressIndicator()),
          Center(child:
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.blueGrey,
                inactiveTrackColor: Colors.black,
                thumbColor: Colors.red,
                  overlayColor: Colors.red.withOpacity(0.5)
              ),
              child: Slider(
                  value: currentValue,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: currentValue.round().toString(),
                  onChanged: (value){
                    setState(() {
                      currentValue = value;
                    });
                  }),
            ),),
        ],
      ),
    );
  }
}
