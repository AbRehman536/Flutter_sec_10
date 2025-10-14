import 'package:flutter/material.dart';

class AssetsImagesDemo extends StatelessWidget {
  const AssetsImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Image"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child: 
        Image.asset("assets/images/image.png"),),
    );
  }
}
