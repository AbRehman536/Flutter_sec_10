import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sec_10/login_form.dart';

class DialogBoxDemo extends StatelessWidget {
  const DialogBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Dialog Box"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hint: Text("Name"),
                suffixIcon: Icon(Icons.person),
              ),
            ),
            CupertinoButton(child: Text("Show Dialog Box"),
                onPressed: (){
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Welcome"),
                        content: Text("Thank You!"),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Back")),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginFormDemo()));
                          }, child: Text("Next")),
                        ],
                      );
                    }, );
                })
          ],
        ),
      ),
    );
  }
}


