import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("List Tile"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
           return Card(
             color: Colors.orange,
             child: ListTile(
              leading: Icon(Icons.notification_add),
              title: Text("Notifications"),
              subtitle: Text("You have new message"),
              trailing: Icon(Icons.arrow_forward_ios),
                       ),
           );
        },
      ),
    );
  }
}
