import 'package:flutter/material.dart';

class NestedRowColumnDemo extends StatelessWidget {
  const NestedRowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Nested Row Col"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
        Text("Lorem Ipsum",style: TextStyle(fontSize: 30),),
        SizedBox(height: 20,),
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        SizedBox(height: 20,),
          Row(

          children: [
          Icon(Icons.favorite),
          SizedBox(width: 40,),
          Column(children: [
            Icon(Icons.comment),
            Icon(Icons.comment),
          ],),

          Icon(Icons.bookmark),
          Column(children: [
            Icon(Icons.share),
            Icon(Icons.share),
          ],)

        ],)
      ],),
    );
  }
}
