import 'package:flutter/material.dart';
import 'package:flutterlearning/ab/create_alert.dart';
import 'package:flutterlearning/pages/recycle_page.dart';

var recycleList = "/recyclerList";
var createAlert = "/createAlert";


initRoutes(BuildContext context){
  return <String, WidgetBuilder>{
    recycleList: (BuildContext context) => RecyclePage(),
    createAlert: (BuildContext context) => MenuAlertPage(),
  };
}