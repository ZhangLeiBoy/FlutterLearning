import 'dart:math';

import 'package:flutter/material.dart';

import 'Global.dart';

bg(Widget w, [Color color]) {
  return Container(color: color ?? randomARGB(), child: w);
}

Color randomARGB() {
  Random random = new Random();
  int r = 30 + random.nextInt(200);
  int g = 30 + random.nextInt(200);
  int b = 30 + random.nextInt(200);
  int a = 50 + random.nextInt(200);
  return Color.fromARGB(a, r, g, b);
}

bgShadowStyle(Widget w,
    {double width,
    double height,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry padding}) {
  return Container(
      decoration: BoxDecoration(
          border: new Border.all(color: Colors.white, width: 0.5),
          borderRadius: new BorderRadius.all(Radius.circular(5)),
          // 生成阴影  阴影位置由offset决定,阴影模糊层度由blurRadius大小决定（大就更透明更扩散），阴影模糊大小由spreadRadius决定
          boxShadow: [
            BoxShadow(
                color: Color(0xFFEFEBE9),
                offset: Offset(0.0, 5.0),
                blurRadius: 10.0,
                spreadRadius: -1.0),
            BoxShadow(color: Colors.white)
          ]),
      width: width ?? Global.width - 30,
      height: height ?? 50,
      margin: margin ?? EdgeInsets.fromLTRB(15, 5, 15, 10),
      padding: padding ?? EdgeInsets.all(5),
      child: w);
}
