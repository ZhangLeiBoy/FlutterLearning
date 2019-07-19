import 'package:flutter/material.dart';
import 'package:flutter_module/zhanglei/demo_home.dart';
import 'package:flutter_module/zhanglei/utils/routesUtil.dart';

// ignore: must_be_immutable
class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Test",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyTextApp("params"),
//      home: _testScaffold,
      routes: initRoutes(context),
    );
  }
}

class MyTextApp extends StatefulWidget {
  MyTextApp(this.title);

  final String title;//params

  @override
  _MyTextApp createState() => _MyTextApp();
}

class _MyTextApp extends State<MyTextApp> {
  var bottomNavBarIndex = 0;

  bottomNavBar() => BottomNavigationBar(
        items: () {
          var items = <BottomNavigationBarItem>[];
          iconInfoMap.forEach((k, v) {
            items.add(BottomNavigationBarItem(
                icon: v, title: Text(k), backgroundColor: Color(0xff49B1FB)));
          });
          return items;
        }(),
        currentIndex: bottomNavBarIndex,
        onTap: (position) {
          setState(() {
            bottomNavBarIndex = position;
          });
        },
      );

  floatingButton(BuildContext context) => FloatingActionButton(
        backgroundColor: Colors.blue,
        elevation: 12,
        highlightElevation: 24,
        onPressed: () {
//      Navigator.push(context,MaterialPageRoute(builder: (bu) => new RecyclePage()));
          Navigator.of(context).pushNamed(recycleList);
        },
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
          semanticLabel: "toly",
        ),
      );

//TODO 组装界面
  _scaffold(BuildContext context, index) => Scaffold(
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
        bottomNavigationBar: bottomNavBar(),
        floatingActionButton: floatingButton(context),
      );

  tabScaffold(BuildContext context, index) => new DefaultTabController(
        length: 4,
        child: _scaffold(context, index),
      );

  @override
  Widget build(BuildContext context) {
    return tabScaffold(context, bottomNavBarIndex);
  }
}
