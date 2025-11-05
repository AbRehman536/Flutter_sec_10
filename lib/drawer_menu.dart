import 'package:flutter/material.dart';

class DrawerMenuDemo extends StatelessWidget {
  const DrawerMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Menu"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: SizedBox(
        width: 200,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                height: 200,
                  color: Colors.yellow,
                  child: DrawerHeader(child: Column(children: [
                    Icon(Icons.alternate_email_rounded),
                    Text("Abdullah@gmail.com")
                  ],))),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
