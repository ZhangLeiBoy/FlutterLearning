import 'package:flutter/material.dart';

//A widget that arranges its children sequentially along a given axis,
//forcing them to the dimension of the parent in the other axis.
//一个widget，它按照给定的轴顺序排列它的子部件，并迫使它们位于另一个轴上的父轴的维度。
//
//ListBody({
//        Key key,
//        this.mainAxis = Axis.vertical,
//        this.reverse = false,
//        List<Widget> children = const <Widget>[],


var listViewVertical = ListView.builder(
    itemCount: 50,
    padding: EdgeInsets.all(8.0),
    itemExtent: 60.0,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: Center(
          child: Text("toly $index"),
        ),
      );
    });

var listViewHorizontal = ListView.builder(
    itemCount: 50,
    padding: EdgeInsets.all(8.0),
    itemExtent: 60.0,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: Center(
          child: Text("toly $index"),
        ),
      );
    });
