import 'package:flutter/material.dart';

//Flex({
//  Key key,
//  @required this.direction,
//  ----Axis.|----horizontal,
//  |----vertical,
//
//  this.mainAxisAlignment = MainAxisAlignment.start,
//  ----MainAxisAlignment.|----start,
//  |----end,
//  |----center,
//  |----spaceBetween,
//  |----spaceAround,
//  |----spaceEvenly,
//
//  this.mainAxisSize = MainAxisSize.max,
//  ----MainAxisSize.|----max
//  |----min
//
//  this.crossAxisAlignment = CrossAxisAlignment.center,
//  ----CrossAxisAlignment.|----start,
//  |----end,
//  |----center,
//  |----stretch,
//  |----baseline,
//
//  this.textDirection,
//  this.verticalDirection = VerticalDirection.down,
//  this.textBaseline,
//  List<Widget> children = const <Widget>[],
//可以看出direction是必须的,类型和枚举都在下面列出了
//有必要普及几个单词:mainAxis(主轴) Alignment对齐 CrossAxis主轴的交错轴
//什么是主轴:direction的方向为主轴，与主轴垂直方向为交错轴
var c1 = Container(width: 50, height: 50, color: Colors.blue);
var c2 = Container(width: 50, height: 80, color: Colors.red);
var c3 = Container(width: 150, height: 50, color: Colors.yellow);


var flexTest1 = Flex(
  direction: Axis.horizontal,
  children: <Widget>[c1, c2, c3],
);