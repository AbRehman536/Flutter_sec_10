import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("FAB"),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.yellow,
        onPressed: () {  },
        label: Text("Notifications"),
      icon: Icon(Icons.notifications),),
    );
  }
}
