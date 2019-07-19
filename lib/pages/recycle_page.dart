import 'package:flutter/material.dart';

class RecyclePage extends StatefulWidget {
  @override
  _RecyclePageState createState() => _RecyclePageState();
}

//正常文字
var commonStyle = TextStyle(color: Colors.black, fontSize: 18);
//灰色较小文字
var infoStyle = TextStyle(color: Color(0xff999999), fontSize: 13);

class _RecyclePageState extends State<RecyclePage> {
  bool showExpend = true;
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
              Navigator.pop(context);
            },
            child: new Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text("回收站"),
      );

  @override
  Widget build(BuildContext context) {
    //左边图片
    var headImg2 = Image.asset(
      "images/icon_resource_png.png",
      width: 45,
      height: 45,
    );

    var center2 = Column(
      mainAxisAlignment: MainAxisAlignment.center, //主轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.start, //辅轴
      children: <Widget>[
        Text(
          "标题",
          style: commonStyle,
        ),
        Text(
          "Dart是一种面向对象的语言，并且支持基于mixin的继承方式",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: infoStyle,
          textAlign: TextAlign.start,
        ),
      ],
    );

    var end2 = GestureDetector(
      onTap: () {
        setState(() {
          _expend(1);
        });
      },
      child: Icon(
        showExpend ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
        size: 25,
        color: Color(0xff999999),
      ),
    );

    var rowLine2 = Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
          child: headImg2,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: center2,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
          child: end2,
        ),
      ],
    );

    var item = Card(
      child: Container(
        height: showExpend ? 120 : 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: rowLine2,
              color: Colors.white,
              height: 70,
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
    return Scaffold(appBar: _actionBar(context), body: item);
  }
}
