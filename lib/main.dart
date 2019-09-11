import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlearning/ab/home.dart';

void main() {
  runApp(new MaterialApp(
//      home: new TestApp(),
    home: new HomeApp(),
  ));
//  runApp(new HomeApp());
  SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}
