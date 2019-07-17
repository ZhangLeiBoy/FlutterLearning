import 'package:flutter/material.dart';
import 'package:flutter_module/zhanglei/demo_gridview.dart';
import 'package:flutter_module/zhanglei/demo_listview.dart';
import 'package:flutter_module/zhanglei/demo_table.dart';


// ignore: must_be_immutable
class TestApp extends StatelessWidget {

  var _floatingActionButton = FloatingActionButton(
    backgroundColor: Colors.blue,
    elevation: 12,
    highlightElevation: 24,
    onPressed: () {

    },
//            tooltip: "Increment",
    child: Icon(
      Icons.add,
      size: 40,
      color: Colors.white,
      semanticLabel: "toly",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Test",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
          floatingActionButton: _floatingActionButton
          ),
    );
  }
}
