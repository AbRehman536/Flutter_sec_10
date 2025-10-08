import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 35,),
        title: Text("App Bar Demo",style: TextStyle(
          color: Colors.orange,
          fontSize: 35,
          fontWeight: FontWeight.w100
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications,color: Colors.green,size: 45,),
          Icon(Icons.settings,color: Colors.yellow,size: 40,),
        ],
      ),
    );
  }
}
