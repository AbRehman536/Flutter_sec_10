import 'package:flutter/material.dart';
import 'package:flutter_sec_10/login_form.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.notification_add_outlined)
        ],
      ),
      body: Column(children: [
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Abdullah Rehman"),
          subtitle: Text("10/27/2025"),
          trailing: Icon(Icons.menu),
        ),
        Image.asset("assets/images/download.png",width: 300,),
        ElevatedButton(onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>LoginFormDemo()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.notification_add_outlined),
                    title: Text("Notifications"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                ],);
              });
        }, child: Text("Show Bottom Sheet"))
      ],),
    );
  }
}
