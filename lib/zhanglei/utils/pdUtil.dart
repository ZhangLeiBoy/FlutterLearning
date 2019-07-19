import 'package:flutter/material.dart';

pd(Widget w, {double l, double t, double r, double b}) {
  return Padding(
    child: w,
    padding: EdgeInsets.fromLTRB(l ?? 0, t ?? 0, r ?? 0, b ?? 0),
  );
}

//全部padding
pda(Widget w, double a) {
  return Padding(
    child: w,
    padding: EdgeInsets.all(a),
  );
}

//水平、竖直的两个padding
pdhv(Widget w, {double h, double v}) {
  return Padding(
    child: w,
    padding: EdgeInsets.fromLTRB(h ?? 0, v ?? 0, h ?? 0, v ?? 0),
  );
}
