import 'package:flutter/material.dart';

class RecyclePage extends StatefulWidget {
  @override
  RecyclePageState createState() => new RecyclePageState();
}

class RecyclePageState extends State<RecyclePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("test"),backgroundColor: Colors.blueAccent,),
      body: new Center(child: new Text("RecyclePage"),),
    );
  }
}
