import 'package:flutter/material.dart';

class GridviewBasic extends StatelessWidget {
  const GridviewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        padding: EdgeInsets.all(20),
        children: [
          Container(color: Colors.red,child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Red"),
            Text("Red"),
            Text("Red"),
            Text("Red"),
            Text("Red"),
          ],),),
          Container(color: Colors.yellow,),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}
