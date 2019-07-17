import 'package:flutter/material.dart';

// This widget is the root of your application.
var contentRow = Row(
  children: <Widget>[
    Text("绝域从军计惘然，"),
    Text("东南幽恨满词笺。"),
    Text("一箫一剑平生意，"),
    Text("负尽狂名十五年。"),
  ],
);

var contentRowWithExpended = Row(
  children: <Widget>[
    Expanded(child: Text("绝域从军计惘然，")),
    Expanded(child: Text("东南幽恨满词笺。")),
    Expanded(child: Text("一箫一剑平生意，")),
    Expanded(child: Text("负尽狂名十五年。")),
  ],
);

var contentColumn = Column(
  children: <Widget>[
    Text("绝域从军计惘然，"),
    Text("东南幽恨满词笺。"),
    Text("一箫一剑平生意，"),
    Text("负尽狂名十五年。"),
  ],
);

var container = Container(
  color: Color.fromARGB(100, 81, 211, 253),
  height: 150,
  width: 250,
  margin: EdgeInsets.fromLTRB(5, 15, 25, 35),
  padding: EdgeInsets.all(20),
//              child: Padding(
//                padding: EdgeInsets.all(10),
//                child: Text("张风捷特烈"),
//              ),
//          child: Center(
//            child: Text("张风捷特烈"),
//          ),
  child: Stack(
//      index: 3,
    //类似FrameLayout
    alignment: Alignment.center,
    children: <Widget>[
      Text("Dart是一种面向对象的语言"),
      Align(
        alignment: Alignment.bottomCenter,
        widthFactor: 1.5,
        child: Card(
          elevation: 10, //阴影
          color: Color(0xffffffff),
          child: Text("Dart是一种面向对象的语言"),
        ),
      ),
      Text("是一种面向对象的语言"),
      Offstage(
        offstage: false,//隐藏与否
        child: Text('面向对象的语言。'),
      )
    ],
  ),
);

var containerTransform = new Transform(
  origin: Offset(0, 250),
  alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
  transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
  child: container,
);

var text = Text(
  "Dart 是一种面向对象的语言，并且支持基于mixin的继承方式,Dart 语言中所有的对象都是某一个类的实例,所有的类有同一个基类--Object。基于mixin的继承方式具体是指：一个类可以继承自多个父类",
//          maxLines: 1,
  overflow: TextOverflow.fade,
  style: TextStyle(
    color: Colors.blue,
    fontSize: 20,
//            letterSpacing: 5,//字间距
    fontWeight: FontWeight.bold,
//            background: Paint()..color = Colors.lightBlue,
  ),
);


var indexedStack = IndexedStack(
  index: 2, //显示哪一个
  alignment: Alignment.centerLeft,
  children: <Widget>[
    Text('绝域从军计惘然，'),
    Align(
      alignment: Alignment.topRight,
      widthFactor: 1.5,
      child: Card(
          elevation: 10, color: Color(0xffffffff), child: Text('东南幽恨满词笺。')),
    ),
    Text('一箫一剑平生意，'),
    Text('负尽狂名十五年。'),
  ],
);