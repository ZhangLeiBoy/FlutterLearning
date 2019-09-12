import 'package:flutter/material.dart';
import 'package:flutterlearning/ab/alert_page.dart';
import 'package:flutterlearning/ab/create_alert.dart';
import 'package:flutterlearning/ab/menu1/home_menu1.dart';
import 'package:flutterlearning/ab/menu2/home_menu2.dart';
import 'package:flutterlearning/ab/menu3/home_menu3.dart';
import 'package:flutterlearning/ab/menu4/home_menu4.dart';
import 'package:flutterlearning/zhanglei/utils/Global.dart';
import 'package:flutterlearning/zhanglei/utils/pdUtil.dart';
import 'package:flutterlearning/zhanglei/utils/routesUtil.dart';

//class HomeApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      theme: ThemeData(primarySwatch: Colors.blue),
//      home: new MyHomeApp(),
//    );
//  }
//}

class HomeApp extends StatefulWidget {
  @override
  _MyHomeApp createState() => new _MyHomeApp();
}

class _MyHomeApp extends State<HomeApp> {
  PageController pageController;
  var bottomNavBarIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this.bottomNavBarIndex);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("home  $context");
    print("home  ${Navigator.of(context)}");
    Global.context = context; // 注入context
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    print('width is $width; height is $height');
    Global.width = width;
    Global.height = height;

    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: initRoutes(context),
      home: Stack(
        children: <Widget>[
          Scaffold(
            body: PageView(
              children: <Widget>[
                new Menu1Page(),
                new Menu2Page(),
                new AlertPage(),
                new Menu3Page(),
                new Menu4Page()
              ],
              physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: _onPageChanged,
              pageSnapping: false,
            ),
            bottomNavigationBar: new BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("首页")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.merge_type), title: Text("线索")),
                BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message), title: Text("消息")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text("我的"))
              ],
              onTap: _onTap,
              currentIndex: bottomNavBarIndex,
              type: BottomNavigationBarType.fixed,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: pda(
                  FloatingActionButton(
                    elevation: 0,
                    mini: true,
                    onPressed: _addOnTap,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  5)),
        ],
      ),
    );
  }

  void _onTap(int index) {
    if (index != 2) {
      print("onTap : $index");
      bottomNavBarIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void _onPageChanged(int value) {
    setState(() {
      print("onPageChanged $value ");
      this.bottomNavBarIndex = value;
    });
  }

  //点击加号
  void _addOnTap() {
    print("点击加号");
    //Navigator.of(context).pushNamed(createAlert);
    Navigator.push<String>(context, MaterialPageRoute(builder: (bu) {
      return new MenuAlertPage();
    })).then((String result) {
      print("result $result");
    });
  }
}
