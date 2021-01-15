import 'package:common_utils/common_utils.dart';

/// 输出Log工具类
class Log {
  static d(String msg, {tag: 'X-LOG'}) {
    _print(msg, tag: tag);
  }

  static w(String msg, {tag: 'X-LOG'}) {
    _print(msg, tag: tag);
  }

  static i(String msg, {tag: 'X-LOG'}) {
    _print(msg, tag: tag);
  }

  static e(String msg, {tag: 'X-LOG'}) {
    _print(msg, tag: tag);
  }

  static json(String msg, {tag: 'X-LOG'}) {
    _print(msg, tag: tag);
  }

  static _print(String msg, {tag: 'X-LOG'}) {
    /// 单元测试不必初始化Log工具类，直接使用print输出。
    LogUtil.debuggable = true;
    LogUtil.v(msg, tag: tag);
  }
}
