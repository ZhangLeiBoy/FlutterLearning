import 'package:flutter/material.dart';

//GridView.count({
//          Key key,
//          Axis scrollDirection = Axis.vertical,
//          bool reverse = false,
//          ScrollController controller,
//          bool primary,
//          ScrollPhysics physics,
//          bool shrinkWrap = false,
//          EdgeInsetsGeometry padding,
//          @required int crossAxisCount,//几列或几行
//          double mainAxisSpacing = 0.0,
//          double crossAxisSpacing = 0.0,
//          double childAspectRatio = 1.0,
//          bool addAutomaticKeepAlives = true,
//          bool addRepaintBoundaries = true,
//          bool addSemanticIndexes = true,
//          double cacheExtent,
//          List<Widget> children = const <Widget>[],
//          int semanticChildCount,


var gridViewVertical = GridView.count(
    crossAxisCount: 4,
    children: List.generate(100, (index){
      return Card(
        child: Center(child: Text("GridView $index"))
      );
    }),
);

var gridViewHorizontal = GridView.count(
  crossAxisCount: 4,
  scrollDirection: Axis.horizontal,
  children: List.generate(100, (index){
    return Card(
        child: Center(child: Text("GridView $index"))
    );
  }),
);