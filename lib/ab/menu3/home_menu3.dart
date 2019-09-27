import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Menu3Page extends StatefulWidget {
  @override
  _Menu3PageState createState() => new _Menu3PageState();
}

class _Menu3PageState extends State<Menu3Page> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("消息"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color:Colors.white,size: 30), onPressed: null),
          IconButton(icon: Icon(Icons.add,color:Colors.white,size: 30,), onPressed: (){
            getHttp();
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children: <Widget>[
            Text("search Layout "),
          ],
        ),
      ),
    );
  }

  void getHttp() async {
    try {
      Response response = await Dio().get("http://task-team.cloud.hoge.cn/dev/Apitask/project/contentLatest?access_token=devbe5504d2a5c027e3139478b95055d92");
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
