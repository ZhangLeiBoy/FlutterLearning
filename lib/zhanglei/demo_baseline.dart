import 'dart:math';

import 'package:flutter/material.dart';

//const Baseline({
//      Key key,
//      @required this.baseline,
//      @required this.baselineType,
//      Widget child

forTextList(int count) {
  var random = new Random();
  var li = <Widget>[];
  for (int i = 0; i < count; i++) {
    li.add(new Baseline(
      baseline: 90,
      baselineType: TextBaseline.alphabetic,
      child: new Text(
        'toly',
        style: new TextStyle(
          fontSize: 20.0 + random.nextInt(40),
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
    ));
  }
  return li;
}

var baseLineTest = new Row(
  children: forTextList(5),
);

//const FractionallySizedBox({
//        Key key,
//        this.alignment = Alignment.center,
//        this.widthFactor,
//        this.heightFactor,
//        Widget child,
var fsbTest = new Container(
  color: Colors.blue,
  height: 150.0,
  width: 100.0,
  child: new FractionallySizedBox(
    alignment: Alignment.center,
    widthFactor: 2.0,
    heightFactor: 0.5,
    child: new Container(
      color: Colors.red,
    ),
  ),
);

//就是设定一个定比例的容器width/height=aspectRatio
//const AspectRatio({
//    Key key,
//    @required this.aspectRatio,
//    Widget child

var aspectRatioTest = new Container(
  width: 200.0,
  child: new AspectRatio(
    aspectRatio: 1.8,//width/height=aspectRatio
    child: new Container(
      color: Colors.blue,
    ),
  ),
);
