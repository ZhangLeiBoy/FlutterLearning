import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class StarView extends CustomPainter {
  Paint mHelperPaint;
  Paint mPaint;
  BuildContext context;

  StarView(this.context,Color color) {
    mPaint = new Paint();
    mPaint.color = color;

    mHelperPaint = new Paint();
    mHelperPaint.style = PaintingStyle.stroke;
    mHelperPaint.color = Colors.blue;
    mHelperPaint.isAntiAlias = true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var winSize = MediaQuery.of(context).size;
    //网格线
    canvas.drawPath(gridPath(20, winSize), mHelperPaint);
    //坐标轴
    var coo = Size(winSize.width / 2, winSize.height / 2);
//    print('coo $coo');
//    print('winSize $winSize');
    drawCoo(canvas, coo, winSize);

    //五角星 多边形
    canvas.translate(0, 120);
    canvas.save(); //绘制n角星
    for (int i = 5; i < 10; i++) {
      canvas.translate(60, 0);
      canvas.drawPath(nStarPath(i, 30, 15), mPaint);
    }
    canvas.restore();

    canvas.translate(0, 70);
    canvas.save(); //绘制正n角星
    for (int i = 5; i < 10; i++) {
      canvas.translate(60, 0);
      canvas.drawPath(regularStarPath(i, 30), mPaint);
    }
    canvas.restore();

    canvas.translate(0, 70);
    canvas.save(); //绘制正n边形
    for (int i = 5; i < 10; i++) {
      canvas.translate(60, 0);
      canvas.drawPath(regularPolygonPath(i, 30), mPaint);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  /*
   * 绘制网格线
   */
  Path gridPath(int step, Size winSize) {
    Path path = new Path();

    for (var i = 0; i < winSize.height / step + 1; i++) {
      path.moveTo(0, step * i.toDouble());
      path.lineTo(winSize.width, step * i.toDouble());
    }

    for (var i = 0; i < winSize.width / step + 1; i++) {
      path.moveTo(step * i.toDouble(), 0);
      path.lineTo(step * i.toDouble(), winSize.height);
    }
    return path;
  }

  //绘制坐标系
  drawCoo(Canvas canvas, Size coo, Size winSize) {
    Paint paint = new Paint();
    paint.strokeWidth = 2;
    paint.style = PaintingStyle.stroke;

    //绘制直线
    canvas.drawPath(cooPath(coo, winSize), paint);
    //左箭头
    canvas.drawLine(new Offset(winSize.width, coo.height),
        new Offset(winSize.width - 10, coo.height - 6), paint);
    canvas.drawLine(new Offset(winSize.width, coo.height),
        new Offset(winSize.width - 10, coo.height + 6), paint);

    //下箭头
    canvas.drawLine(new Offset(coo.width, winSize.height - 90),
        new Offset(coo.width - 6, winSize.height - 10 - 90), paint);
    canvas.drawLine(new Offset(coo.width, winSize.height - 90),
        new Offset(coo.width + 6, winSize.height - 10 - 90), paint);
  }

  /*
   * x y 轴
   */
  Path cooPath(Size coo, Size winSize) {
    Path path = new Path();
    //x正半轴线
    path.moveTo(coo.width, coo.height);
    path.lineTo(winSize.width, coo.height);
    //x负半轴线
    path.moveTo(coo.width, coo.height);
    path.lineTo(coo.width - winSize.width, coo.height);
    //y负半轴线
    path.moveTo(coo.width, coo.height);
    path.lineTo(coo.width, coo.height - winSize.height);
    //y负半轴线
    path.moveTo(coo.width, coo.height);
    path.lineTo(coo.width, winSize.height);
    return path;
  }

  ///n 角星
  Path nStarPath(int num, double R, double r) {
    Path path = new Path();
    double perDeg = 360 / num;
    double degA = perDeg / 2 / 2;
    double degB = 360 / (num - 1) / 2 - degA / 2 + degA;

    path.moveTo(cos(_rad(degA)) * R, (-sin(_rad(degA)) * R));
    for (int i = 0; i < num; i++) {
      path.lineTo(
          cos(_rad(degA + perDeg * i)) * R, -sin(_rad(degA + perDeg * i)) * R);
      path.lineTo(
          cos(_rad(degB + perDeg * i)) * r, -sin(_rad(degB + perDeg * i)) * r);
    }
    path.close();
    return path;
  }

  double _rad(double deg) {
    return deg * pi / 180;
  }

  /*
   * 画正n角星的路径:
   *
   * @param num 角数
   * @param R   外接圆半径
   * @return 画正n角星的路径
   */
  Path regularStarPath(int num, double R) {
    double degA, degB;
    if (num % 2 == 1) {
      //奇数和偶数角区别对待
      degA = 360 / num / 2 / 2;
      degB = 180 - degA - 360 / num / 2;
    } else {
      degA = 360 / num / 2;
      degB = 180 - degA - 360 / num / 2;
    }
    double r = R * sin(_rad(degA)) / sin(_rad(degB));
    return nStarPath(num, R, r);
  }

  /*
   * 画正n边形的路径
   *
   * @param num 边数
   * @param R   外接圆半径
   * @return 画正n边形的路径
   */
  Path regularPolygonPath(int num, double R) {
    double r = R * cos(_rad(360 / num / 2)); //!!一点解决
    return nStarPath(num, R, r);
  }
}
