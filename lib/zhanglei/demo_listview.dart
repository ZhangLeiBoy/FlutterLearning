import 'package:flutter/material.dart';

//ListView.builder({
//        Key key,
//        Axis scrollDirection = Axis.vertical,
//        bool reverse = false,
//        ScrollController controller,
//        bool primary,
//        ScrollPhysics physics,
//        bool shrinkWrap = false,
//        EdgeInsetsGeometry padding,
//        this.itemExtent,//强制指定子控件高度范围
//        @required IndexedWidgetBuilder itemBuilder,
//        int itemCount,
//        bool addAutomaticKeepAlives = true,
//        bool addRepaintBoundaries = true,
//        bool addSemanticIndexes = true,
//        double cacheExtent,
//        int semanticChildCount,

var listViewVertical = ListView.builder(
    itemCount: 50,
    padding: EdgeInsets.all(8.0),
    itemExtent: 60.0,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: Center(
          child: Text("toly $index"),
        ),
      );
    });

var listViewHorizontal = ListView.builder(
    itemCount: 50,
    padding: EdgeInsets.all(8.0),
    itemExtent: 60.0,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: Center(
          child: Text("toly $index"),
        ),
      );
    });
