import 'package:flutter/material.dart';
import 'package:flutter_module/zhanglei/demo_gridview.dart';

// ignore: must_be_immutable
class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    var bottomNavBar = BottomNavigationBar(
      items: () {
        var items = <BottomNavigationBarItem>[];
        iconInfoMap.forEach((k, v) {
          items.add(BottomNavigationBarItem(
              icon: v, title: Text(k), backgroundColor: Color(0xff49B1FB)));
        });
        return items;
      }(),
      currentIndex: 1,
      onTap: (position) {
        print(position);
      },
    );
    //TODO 组装界面
    var _scaffold = Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            title: new Text(
              "zhangleiBoy",
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            bottom: tabBar,
            backgroundColor: Colors.blue,
            elevation: 12,
            centerTitle: true,
            toolbarOpacity: .4,
          ),
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.15)),
      body: tabBarView,
      bottomNavigationBar: bottomNavBar,
    );

    var tabScaffold = new DefaultTabController(
      length: 4,
      child: _scaffold,
    );

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

    return MaterialApp(
      title: "Flutter Test",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tabScaffold,
//      home: _testScaffold,
    );
  }
}
