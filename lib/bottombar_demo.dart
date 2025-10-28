import 'package:flutter/material.dart';
import 'package:flutter_sec_10/listview_demo.dart';
import 'package:flutter_sec_10/multiple_selection.dart';
import 'package:flutter_sec_10/single_selection.dart';

class BottombarDemo extends StatefulWidget {
  const BottombarDemo({super.key});

  @override
  State<BottombarDemo> createState() => _BottombarDemoState();
}

class _BottombarDemoState extends State<BottombarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [ListTileDemo(),MultipleSelectionDemo(),SingleSelectionDemo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (val){
          setState(() {
            selectedIndex = val;
          });
        },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),
    );
  }
}
