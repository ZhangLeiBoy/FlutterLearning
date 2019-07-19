import 'package:flutter/material.dart';
import 'package:flutter_module/pages/recycle_page.dart';

var recycleList = "/recyclerList";


initRoutes(BuildContext context){
  return <String, WidgetBuilder>{
    recycleList: (BuildContext context) => RecyclePage(),
  };
}