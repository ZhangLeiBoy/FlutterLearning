import 'package:flutter/material.dart';

class Menu3Page extends StatefulWidget {
  @override
  _Menu3PageState createState() => new _Menu3PageState();
}

class _Menu3PageState extends State<Menu3Page> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("消息"),
      ),
      body: Text("menu3"),
    );
  }
}
