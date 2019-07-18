import 'dart:math';

import 'package:flutter/material.dart';

//TODO Table flow wrap

//TODO 使用 Table 布局
var tableTest = Table(
  columnWidths: const <int, TableColumnWidth>{
    0: FixedColumnWidth(60.0),
    1: FixedColumnWidth(100.0),
    2: FixedColumnWidth(100.0),
    3: FixedColumnWidth(80.0),
  },
  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
  border: TableBorder.all(
      color: Color(0xff16daf1), width: 1.0, style: BorderStyle.solid),
  children: const <TableRow>[
    TableRow(
      children: <Widget>[
        Center(child: Text('姓名')),
        Center(child: Text('年龄')),
        Center(child: Text('称号')),
        Center(child: Text('武器')),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text('1111111111111111111111111'),
        Text('2'),
        Center(child: Text('3')),
        Center(child: Text('4')),
      ],
    ),
    TableRow(
      children: <Widget>[
        Center(child: Text('5')),
        Center(child: Text('6')),
        Text('7'),
        Center(child: Text('8')),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text('9'),
        Text('10'),
        Text('11'),
        Text('1222222222222222'),
      ],
    ),
  ],
);

//TODO wrap
//Wrap({
//  Key key,
//  this.direction = Axis.horizontal,
//  this.alignment = WrapAlignment.start,
//  this.spacing = 0.0,
//  this.runAlignment = WrapAlignment.start,
//  this.runSpacing = 0.0,
//  this.crossAxisAlignment = WrapCrossAlignment.start,
//  this.textDirection,
//  this.verticalDirection = VerticalDirection.down,
//  List<Widget> children = const <Widget>[],
//})

var wrapTest = Wrap(
  spacing: 8.0,
  //列间距
  runSpacing: 8.0,
  //行间距
  direction: Axis.horizontal,
  //排列方向
//  crossAxisAlignment: WrapCrossAlignment.center,
  alignment: WrapAlignment.spaceBetween,
  children: formColorList(30),
);

//TODO 使用 flow 布局
var fowTest = Flow(
//  delegate: MarginFlowDelegate(EdgeInsets.all(15)),
  delegate: MarginFlowDelegate(EdgeInsets.all(15)),
  children: formColorList(10),
);

class MarginFlowDelegate extends FlowDelegate {
  EdgeInsets _margin = EdgeInsets.zero;

  MarginFlowDelegate(this._margin); //成员变量margin

  @override
  void paintChildren(FlowPaintingContext context) {
    // TODO: implement paintChildren
    var offsetX = _margin.left;
    var offsetY = _margin.top;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + offsetX + _margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(offsetX, offsetY, 0.0));
        offsetX = w + _margin.left;
      } else {
        offsetX = _margin.left;
        offsetY +=
            context.getChildSize(i).height + _margin.top + _margin.bottom;
        context.paintChild(i,
            transform: new Matrix4.translationValues(offsetX, offsetY, 0.0));
        offsetY += context.getChildSize(i).width + _margin.left + _margin.right;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}

formColorList(int count) {
  var random = new Random();
  var li = <Widget>[];

  for (int i = 0; i < count; i++) {
    li.add(new Container(
      width: 100 * (random.nextDouble() + 0.3),
      height: 20,
      color: randomRGB(),
    ));
  }
  return li;
}

//随机颜色
randomRGB() {
//  return Color.fromARGB(255, Random.secure().nextInt(255),
//      Random.secure().nextInt(255), Random.secure().nextInt(255));
  Random random = new Random();
  int r = 30 + random.nextInt(200);
  int g = 30 + random.nextInt(200);
  int b = 30 + random.nextInt(200);
  return Color.fromARGB(255, r, g, b);
}
