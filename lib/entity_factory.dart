import 'package:flutterlearning/zhanglei/bean/task_entity.dart';
import 'package:flutterlearning/zhanglei/bean/test_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "TaskEntity") {
      return TaskEntity.fromJson(json) as T;
    } else if (T.toString() == "TestEntity") {
      return TestEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}