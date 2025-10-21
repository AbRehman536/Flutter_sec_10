import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {

  const MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Multiple Selection"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body:  ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){
              setState(() {
                if(selectedIndex.contains(index)){
                  selectedIndex.remove(index);
                }else{
                  selectedIndex.add(index);
                }
              });
            },
            tileColor: selectedIndex.contains(index) ? Colors.orange : Colors.white,
            textColor: selectedIndex.contains(index) ? Colors.white : Colors.black,
            iconColor: selectedIndex.contains(index) ? Colors.white : Colors.black,

            leading: Icon(selectedIndex.contains(index)?Icons.notification_add_outlined:Icons.notification_add),
            title: Text("Notifications,$selectedIndex"),
            subtitle: Text("Index,$index"),
            trailing: Icon(selectedIndex.contains(index) ? Icons.arrow_circle_down : Icons.arrow_circle_right_outlined),
          );
        },
      ),
    );
  }
}
