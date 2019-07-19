import 'dart:math';

import 'package:flutter/material.dart';

bg(Widget w, [Color color]) {
  return Container(color: color ?? randomARGB(), child: w);
}

Color randomARGB() {
  Random random = new Random();
  int r = 30 + random.nextInt(200);
  int g = 30 + random.nextInt(200);
  int b = 30 + random.nextInt(200);
  int a = 50 + random.nextInt(200);
  return Color.fromARGB(a, r, g, b);
}
