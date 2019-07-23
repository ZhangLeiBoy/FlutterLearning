import 'dart:io';

import 'package:flutter/material.dart';

//const MaterialButton({
//      @required this.onPressed,----点击事件----VoidCallback
//      this.onHighlightChanged,
//      this.textTheme,----按钮文字主题----ButtonTextTheme
//      this.textColor,----文字颜色----Color
//      this.disabledTextColor,----不可用时文字颜色----Color
//      this.color,----背景颜色----Color
//      this.disabledColor,----
//      this.highlightColor,----
//      this.splashColor,----
//      this.colorBrightness,
//      this.elevation,-----阴影高----
//      this.highlightElevation,
//      this.disabledElevation,
//      this.padding,-----内边距----
//      this.shape,-----形状----
//      this.clipBehavior = Clip.none,
//      this.materialTapTargetSize,
//      this.animationDuration,
//      this.minWidth,
//      this.height,
//      this.child,

//RaisedButton--凸起的按钮//RaisedButton和Android的内置Button基本上是一致的
//FlatButton--平的按钮//相当于精简版的RaisedButton,没有阴影凸起效果
//OutlineButton--框按钮//OutlineButton是一个框型按钮

var buttonTest = Container(
  child: Wrap(
    spacing: 10,
    children: <Widget>[
      FlatButton(
        onPressed: (){},
        child: Text('boy'),
        color: Color(0xffF88B0A),
        highlightColor: Colors.green,
      ),
      RaisedButton(
        onPressed: (){},
        child: Text('boy'),
        color: Color(0xffF88B0A),
        highlightColor: Colors.blue,
      ),
      OutlineButton(
        onPressed: (){},
        child: Text('boy'),
        color: Color(0xffF88B0A),
        highlightColor: Colors.teal,
      )
    ],
  ),
);