import 'package:flutter/material.dart';

class LoginFormDemo extends StatefulWidget {
  const LoginFormDemo({super.key});

  @override
  State<LoginFormDemo> createState() => _LoginFormDemoState();
}

class _LoginFormDemoState extends State<LoginFormDemo> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Text("Login Page",style: TextStyle(fontSize: 30,color: Colors.red),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'abdullah@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffix: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ) ,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: passwordController,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: '12345678',
              prefixIcon: Icon(Icons.lock),
              suffix: Icon(Icons.visibility),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),
        ),
        ElevatedButton(onPressed: () {
          if(emailController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email is Empty")));
            return;
          }
          if(passwordController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password is Empty")));
          }
          if(passwordController.text.length < 8 ){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password is not less than 8 digits")));
          }
        }, child: Text("Login"),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Don't have account ?"),
          TextButton(onPressed: (){}, child: Text("Sign Up"))
        ],)
      ],),
    );
  }
}
