import 'package:flutter/material.dart';

class Menu2Page extends StatefulWidget {
  @override
  _Menu2PageState createState() => new _Menu2PageState();
}

class _Menu2PageState extends State<Menu2Page> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("线索"),
      ),
      body: Text("menu2"),
    );
  }
}
