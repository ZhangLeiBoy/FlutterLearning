import 'package:flutter/material.dart';
import 'package:flutterlearning/zhanglei/utils/bgUtil.dart';
import 'package:flutterlearning/zhanglei/utils/pdUtil.dart';
import 'package:simple_permissions/simple_permissions.dart';

class RecyclePage extends StatefulWidget {
  @override
  _RecyclePageState createState() => _RecyclePageState();
}

//正常文字
var commonStyle = TextStyle(color: Colors.black, fontSize: 18);
//灰色较小文字
var infoStyle = TextStyle(color: Color(0xff999999), fontSize: 13);
//较大文字
var bigStyle =
    TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
//btn文字
var btnStyle = TextStyle(color: Color(0xffffffff), fontSize: 13);

class _RecyclePageState extends State<RecyclePage> {
  bool showExpend = false;
  int showExpendIndex = -1;

  // 改变展开状态
  void _expend(var index) {
    setState(() {
//      if (index == showExpendIndex) {
//        showExpendIndex = -1;
//        showExpend = false;
//      } else {
//        showExpendIndex = index;
//        showExpend = true;
//      }
      showExpend = !showExpend;
    });
  }

  //actionBar
  _actionBar(BuildContext context) => AppBar(
        leading: MaterialButton(
            onPressed: () {
              Navigator.pop(context, "携带参数回去111");
            },
            child: new Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text("回收站"),
      );

  @override
  Widget build(BuildContext context) {
    //左边图片
    var headImg = Image.asset(
      "images/app_logo.png",
      width: 50,
      height: 50,
    );

    var center = Column(
      mainAxisAlignment: MainAxisAlignment.center, //主轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.start, //辅轴从左至右
      children: <Widget>[
        //第一行标题栏
        Text("Dart是一种面向对象的语言", maxLines: 1, style: bigStyle),
        //第二行内容区
        Row(
          children: <Widget>[
            Icon(Icons.next_week, size: 15),
            pd(Text("Dart | dart"), l: 10)
          ],
        ),
        //第三行简介区
        Row(
          children: <Widget>[
            Icon(Icons.keyboard, size: 15),
            Expanded(
                child: pd(
                    Text("Dart是一种面向对象的语言，并且支持基于mixin的继承方式",
                        maxLines: 1, overflow: TextOverflow.ellipsis),
                    l: 10))
          ],
        ),
      ],
    );

    var end = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.language, size: 15),
            Icon(Icons.local_pharmacy, size: 15),
            Icon(Icons.person_pin_circle, size: 15)
          ],
        ),
        bg(pdhv(Text("测试", style: btnStyle), h: 10, v: 3), Colors.blueAccent)
      ],
    );

    var rowLine = Row(
      children: <Widget>[
//        bg(pd(headImg, l: 12)),
//        Expanded(child: bg(pd(center, l: 12, r: 12))),
//        bg(pda(end, 10)),
        pd(headImg, l: 12),
        Expanded(child: pd(center, l: 12, r: 12)),
        pda(end, 10),
      ],
    );

    var item = Card(
      child: Container(
        height: showExpend ? 120 : 95,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: rowLine,
              color: Colors.white,
              height: 95,
            ),
            Offstage(
              offstage: !showExpend,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("text1",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Text("text2",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ],
                ),
                color: Colors.grey,
                height: 50,
              ),
            ),
          ],
        ),
        color: Colors.white,
      ),
      elevation: 8,
      margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
    );

    var list = ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return item;
      },
    );

    var list2 = ListView.separated(
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) {
        return (index + 1) % 2 == 0 ? bg(Text("这是一条分割线不占用Count")) : Container();
      },
      itemBuilder: (BuildContext context, int index) {
        return item;
      },
    );

    return WillPopScope(
        child: Scaffold(appBar: _actionBar(context), body: list2),
        onWillPop: () async {
          print("onWillPop");
//          Navigator.pop(context, "携带参数回去");
          return false;
        });
  }

  readFromSD() async {
    try {
      var prem =
          SimplePermissions.requestPermission(Permission.ReadExternalStorage);
    } catch (e) {}
  }
}
