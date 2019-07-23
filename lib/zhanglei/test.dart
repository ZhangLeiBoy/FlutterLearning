//import 'dart:io';
//
//import 'package:simple_permissions/simple_permissions.dart';
//
//main() async {
////  var file = File(r"/Users/admin/Desktop/测试文本.rtf");
////  Future<String> re = file.readAsString();
////  re.then((result) {
////    print(result);
////  });
////  print("我是第几?");
//
//  var file = File(r"/Users/admin/Desktop/测试文本.rtf");
//
//  try {
//    bool exsits = await file.exists();
//    if (exsits) {
//      print(await file.length());
//      print(await file.lastModified());
//      print(await file.parent.path);
//      print(await file.readAsString());
//    } else {
//      file.createSync(recursive: true);
//    }
//  } catch (e) {
//    print(e);
//  }
//
////  var base = Uri.base;
////  print(base);//打印了跟路径--file:///Users/admin/Documents/work/code/FlutterLearning/
//
////  var parse = Uri.parse("http://192.168.43.60:8089/file/springboot/data.json");
////  print("host=${parse.host}");//192.168.43.60
////  print("port=${parse.port}");//8089
////  print("path=${parse.path}");//file/springboot/data.json
////  print("query=${parse.query}");//
////  print("fragment=${parse.fragment}");//
//
////  var uri = new Uri.http("192.168.43.60:8089", "/file/springboot/data.json");
////  print(uri.scheme);//http
//}
