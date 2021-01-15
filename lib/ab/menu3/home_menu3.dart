import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutterlearning/zhanglei/bean/task_entity.dart';
import 'package:flutterlearning/zhanglei/utils/Global.dart';
import 'package:flutterlearning/zhanglei/utils/RequestUtil.dart';
import 'package:flutterlearning/zhanglei/utils/log_utils.dart';
import 'package:flutterlearning/zhanglei/utils/pdUtil.dart';

class Menu3Page extends StatefulWidget {
  @override
  _Menu3PageState createState() => new _Menu3PageState();
}

class _Menu3PageState extends State<Menu3Page> {
  List<TaskData> _data = [];
  bool loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (_data == null || _data.length == 0) {
      getHttp();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("消息"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white, size: 30),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                getHttp();
              })
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    Widget widget;
    if (loading) {
      widget = new Padding(
        padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 35.0),
        child: new Center(
          child: SpinKitFadingCircle(
            color: Colors.blueAccent,
            size: 30.0,
          ),
        ),
      );
    } else {
      widget = ListView.separated(
        itemCount: _data.length,
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 1,
            color: Color(0xffeeeeee),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.fromLTRB(12, 10, 12, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _data[index].title,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        pd(
                            Text(
                              "时间：${_data[index].createdAt}",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            t: 5)
                      ],
                    ),
                    Text(_data[index].publishColumnName,style: TextStyle(color: Colors.grey,fontSize: 16))
                  ]));
        },
      );
    }
    return widget;
  }

  //http://task-team.cloud.hoge.cn/dev/Apitask/project/contentLatest?access_token=devbe5504d2a5c027e3139478b95055d92
  void getHttp() async {
    Log.e("getHttp ");
    if (_data == null || _data.length == 0) {
      setState(() {
        loading = true;
      });
    }
    var map = Map();
    map["access_token"] = Global.token;
    map["offset"] = "0";
    map["count"] = "20";
    try {
      var res = await RequestUtil.get(
          "https://task-team.cloud.hoge.cn/dev/Apitask/project/show",
          data: map);
//      var res = await RequestUtil.get(
//          "http://task-team.cloud.hoge.cn/dev/Apitask/project/contentLatest?access_token=devbe5504d2a5c027e3139478b95055d92");
      print(res);
      setState(() {
        loading = false;
        _data = fromJson(res);
//        _data = TaskEntity.fromJson(res).data;
      });
    } catch (e) {
      Log.e("exception $e");
      setState(() {
        loading = false;
      });
    }
  }

  static List<TaskData> fromJson(String json) {
    List<TaskData> _product = [];
    JsonDecoder decoder = JsonDecoder();
    var mapData = decoder.convert(json)['data'];
    for (var obj in mapData) {
      TaskData pro = TaskData();
      pro.title = obj["title"];
      pro.publishColumnName = obj["sort_name"];
      pro.createdAt = obj["create_time_show"];
      pro.createUserName = obj["project_user_name"];
      _product.add(pro);
    }
    return _product;
  }
}
