import 'package:flutter/material.dart';

class MenuAlertPage extends StatefulWidget {
  @override
  _MenuAlertPageState createState() => new _MenuAlertPageState();
}

class _MenuAlertPageState extends State<MenuAlertPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("MenuAlert"),
      ),
      body: Text("menuAlert"),
    );
  }
}
