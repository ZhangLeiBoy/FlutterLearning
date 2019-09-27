import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlearning/zhanglei/bean/alertData.dart';
import 'package:flutterlearning/zhanglei/utils/Global.dart';
import 'package:flutterlearning/zhanglei/utils/pdUtil.dart';
import 'package:flutterlearning/zhanglei/utils/toastUtil.dart';

class MenuAlertPage extends StatefulWidget {
  @override
  _MenuAlertPageState createState() => new _MenuAlertPageState();
}

class _MenuAlertPageState extends State<MenuAlertPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          bottomOpacity: 0,
        ),
        body: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  pd(
                      Text(
                        "${DateTime.now().day}", //2019年07月30日
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                      r: 10,
                      t: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      pd(
                          Text(
                            getCurrentWeekDay(), //2019年07月30日
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                decoration: TextDecoration.none),
                          ),
                          b: 5),
                      pd(
                          Text(
                            "${DateTime.now().year}/${DateTime.now().month}", //2019年07月30日
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                decoration: TextDecoration.none),
                          ),
                          t: 5)
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  pd(Container(
                    child: GridView.count(
                      shrinkWrap: true,
//                      //水平子Widget之间间距
//                      crossAxisSpacing: 15.0,
//                      //垂直子Widget之间间距
//                      mainAxisSpacing: 15.0,
//                      //GridView内边距
//                      padding: EdgeInsets.all(10.0),
                      //一行的Widget数量
                      crossAxisCount: 3,
//                      //子Widget宽高比例
//                      childAspectRatio: 1.0,
                      //子Widget列表
                      children: getWidgetList(),
                    ),
                  ),l: 10,r: 10,b: 20),
                  pda(
                      FloatingActionButton(
                        elevation: 0,
                        heroTag: null,
                        mini: true,
                        onPressed: () {
                          Navigator.pop(context, "");
                        },
                        child: Icon(
                          Icons.clear,
                          size: 30,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.blue,
                      ),
                      5)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<AlertData> getDataList() {
    List<AlertData> list = [];
    list.add(AlertData("reportTopic/ReportTopicCreate", "新建报题",
        "images/controller_create_reporttopic.png"));
    list.add(AlertData(
        "topic/TopicCreate", "新建选题", "images/controller_create_topic.png"));
    list.add(AlertData(
        "mission/MissionCreate", "新建任务", "images/controller_create_task.png"));
    list.add(AlertData("fusionNews/FusionNewsCreate", "发文稿",
        "images/controller_create_article.png"));
    list.add(AlertData("fusionTuji/FusionTujiCreate", "发图集",
        "images/controller_create_gallery.png"));
    list.add(AlertData("fusionVideo/FusionVideoCreate", "发视频",
        "images/controller_create_video.png"));
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  Widget getItemContainer(AlertData item) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: Global.width * 1 / 3 - 20,
        height: Global.width * 1 / 3,
        child: Column(
          children: <Widget>[
            pda(
                Image(
                  width: Global.width * 1 / 4 - 20,
                  height: Global.width * 1 / 4 - 20,
                  image: AssetImage(item.imgName),
                ),
                5),
            Text(
              item.name,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            )
          ],
        ),
      ),
      onTap: () {
        Toast.toast(context, msg: item.outLink);
      },
    );
  }

  String getCurrentWeekDay() {
    var d = "一";
    var dy = DateTime.now().weekday;
    if (dy == 1) {
      d = "一";
    } else if (dy == 2) {
      d = "二";
    } else if (dy == 3) {
      d = "三";
    } else if (dy == 4) {
      d = "四";
    } else if (dy == 5) {
      d = "五";
    } else if (dy == 6) {
      d = "六";
    } else if (dy == 7) {
      d = "日";
    }
    return "星期$d";
  }
}
