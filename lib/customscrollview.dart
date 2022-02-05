import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapseToolBarExample extends StatelessWidget {
  const CollapseToolBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
          floating: true,
          title: const Text("Sliver App Bar"),
          backgroundColor: Colors.blue,
          expandedHeight: 100),
      SliverList(delegate: SliverChildListDelegate(Containersss)),
      SliverPadding(
        padding: EdgeInsets.all(20),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                  alignment: Alignment.center,
                  height: 200,
                  color: RandomColor(),
                  child: Text("Hello $index")),
              childCount: 10),
        ),
      ),
      SliverPadding(
          padding: EdgeInsets.all(30),
          sliver: SliverFixedExtentList(
            delegate: SliverChildListDelegate(Containersss),
            itemExtent: 300,
          )),
      SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                  alignment: Alignment.center,
                  height: 200,
                  color: RandomColor(),
                  child: Text("Hello $index")),
              childCount: 10),
          itemExtent: 200)
    ]);
  }

  List<Widget> get Containersss {
    return [
      Container(
          alignment: Alignment.center,
          height: 200,
          color: Colors.red,
          child: Text("Hello")),
      Container(
          alignment: Alignment.center,
          height: 200,
          color: Colors.blue,
          child: Text("Hello")),
      Container(
          alignment: Alignment.center,
          height: 200,
          color: Colors.yellow,
          child: Text("Hello")),
      Container(
          alignment: Alignment.center,
          height: 200,
          color: Colors.green,
          child: Text("Hello")),
      Container(
          alignment: Alignment.center,
          height: 200,
          color: Colors.red,
          child: Text("Hello")),
      Container(
          alignment: Alignment.center,
          height: 200,
          color: Colors.red,
          child: Text("Hello")),
      Container(
          alignment: Alignment.center,
          height: 200,
          color: Colors.red,
          child: Text("Hello")),
      Container(
          alignment: Alignment.center,
          height: 200,
          color: Colors.red,
          child: Text("Hello")),
    ];
  }

  Color RandomColor() => Color.fromRGBO(math.Random().nextInt(255),
      math.Random().nextInt(255), math.Random().nextInt(255), 1);
}
