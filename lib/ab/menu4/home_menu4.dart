import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearning/zhanglei/utils/bgUtil.dart';

class Menu4Page extends StatefulWidget {
  @override
  _Menu4PageState createState() => new _Menu4PageState();
}

List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
  return <Widget>[
    SliverAppBar(
//      centerTitle: true,
      //标题居中
//      expandedHeight: 100.0,
      //展开高度200
//      floating: false,
      //不随着滑动隐藏标题
      leading: null,
      pinned: true,
      //固定在顶部
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text('我的'),
//      flexibleSpace: FlexibleSpaceBar(
////        centerTitle: true,
//
//        title: Text('我的'),
////        background: Image.network(
////          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1531798262708&di=53d278a8427f482c5b836fa0e057f4ea&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F342ac65c103853434cc02dda9f13b07eca80883a.jpg",
////          fit: BoxFit.cover,
////        ),
//        background: Image(
//          image: AssetImage("images/mine_header_bg.png"),
//          alignment: Alignment.topCenter,
//          fit: BoxFit.fitWidth,
//        ),
//      ),
    )
  ];
}

class _Menu4PageState extends State<Menu4Page> {
  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      body: NestedScrollView(
//        headerSliverBuilder: _sliverBuilder,
//        body: ,
//      ),
//    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mine_header_bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text("我的"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                bgShadowStyle(
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("张雷",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18)),
                                Text("Android学习小组",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16)),
                                Text("职位：酱油郎",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16))
                              ],
                            ),
                            Icon(Icons.supervised_user_circle,
                                color: Colors.blue, size: 70),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.phone_android,
                                    color: Colors.grey, size: 22),
                                Text("18888888888",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16)),
                              ],
                            ),
                            Icon(Icons.edit, color: Colors.blue, size: 25),
                          ],
                        )
                      ],
                    ),
                    height: 150),
                bgShadowStyle(Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.apps,
                            color: Colors.blue, size: 26),
                        Text("  我的收藏",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 16)),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
                  ],
                )),
                bgShadowStyle(Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.apps,
                            color: Colors.blue, size: 26),
                        Text("  我的收藏",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 16)),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
                  ],
                )),
                bgShadowStyle(Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.apps,
                            color: Colors.blue, size: 26),
                        Text("  我的收藏",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 16)),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
                  ],
                )),
                bgShadowStyle(Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.apps,
                            color: Colors.blue, size: 26),
                        Text("  我的收藏",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 16)),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
