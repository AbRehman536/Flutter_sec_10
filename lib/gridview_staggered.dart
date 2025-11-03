import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridviewStaggered extends StatelessWidget {
  const GridviewStaggered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.red,
                  child: Text("Red")),),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue,
                  child: Text("Blue")),),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.green,
                  child: Text("Green")),),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.yellow,
                  child: Text("Yellow")),),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.orange,
                  child: Text("Orange")),),
        ],
      )
    );
  }
}
