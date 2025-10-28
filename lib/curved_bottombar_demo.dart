import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sec_10/listview_demo.dart';
import 'package:flutter_sec_10/multiple_selection.dart';
import 'package:flutter_sec_10/single_selection.dart';

class CurvedBottombarDemo extends StatefulWidget {
  const CurvedBottombarDemo({super.key});

  @override
  State<CurvedBottombarDemo> createState() => _CurvedBottombarDemoState();
}

class _CurvedBottombarDemoState extends State<CurvedBottombarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [ListTileDemo(),MultipleSelectionDemo(),SingleSelectionDemo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
          buttonBackgroundColor: Colors.blue,
          backgroundColor: Colors.white54,
          items: [
            Icon(Icons.home),
            Icon(Icons.settings),
            Icon(Icons.person),
          ])
    );
  }
}
