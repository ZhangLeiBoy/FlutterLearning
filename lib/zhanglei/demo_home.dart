import 'package:flutter/material.dart';
import 'package:flutter_module/zhanglei/demo_gridview.dart';

var chartLi = ["About", "Ball", "Card", "Dog"];
var tabBar = TabBar(
  tabs: chartLi.map((item) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Text(item),
      height: 30,
    );
  }).toList(),
  labelColor: Color(0xfff64c19),
  labelStyle: TextStyle(fontSize: 12),
  unselectedLabelColor: Colors.white,
);

var tabBarView = TabBarView(
    children: chartLi.map((item) {
  return new Center(
    child: Text(item),
  );
}).toList());

var iconInfoMap = {
  "首页": Icon(Icons.home),
  "消息": Icon(Icons.comment),
  "动态": Icon(Icons.toys),
  "联系人": Icon(Icons.contacts),
};

var _floatingButton = FloatingActionButton(
  backgroundColor: Colors.blue,
  elevation: 12,
  highlightElevation: 24,
  onPressed: () {
    //
  },
  child: Icon(
    Icons.add,
    size: 40,
    color: Colors.white,
    semanticLabel: "toly",
  ),
);

var _testScaffold = Scaffold(
  appBar: AppBar(
    title: Text("测试"),
    backgroundColor: Colors.blue,
    elevation: 20,
    //阴影
    centerTitle: true,
    toolbarOpacity: .4, //透明度
  ),
  body: gridViewHorizontal,
//          body: listViewHorizontal,
//          body: wrapTest,
//          body: fowTest,
//          body: tableTest,
//          body: contentColumn,
//          body: contentRow,
//          body: contentRowWithExpended,
//          body: container,
  floatingActionButton: _floatingButton,
);
