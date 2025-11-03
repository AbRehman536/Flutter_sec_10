import 'package:flutter/material.dart';

class GridviewBuilderDemo extends StatelessWidget {
  const GridviewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            mainAxisExtent: 80.5,
          ),
        itemCount: 13,
        itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.yellow,
              child: Column(children: [
                Text("Settings"),
                Icon(Icons.settings),
              ],),
            );
        },
          )
    );
  }
}
