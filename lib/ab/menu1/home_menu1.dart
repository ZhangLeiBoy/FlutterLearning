import 'package:flutter/material.dart';
import 'package:flutterlearning/zhanglei/utils/bgUtil.dart';

class Menu1Page extends StatefulWidget {
  @override
  _Menu1PageState createState() => new _Menu1PageState();
}

class _Menu1PageState extends State<Menu1Page> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Menu1"),
        ),
        body: bg(Text("menu1")),
      ),
    );
  }
}
