import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Single Selection"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            selected: selectedIndex == index,
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            leading: Icon(Icons.notification_add),
            title: Text("Notifications,$selectedIndex"),
            subtitle: Text("Index,$index"),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
