import 'package:flutter/material.dart';

class CollapseToolBarExample extends StatelessWidget {
  const CollapseToolBarExample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(),
        SliverList(),
        SliverFixedExtentList(delegate: delegate, itemExtent: itemExtent)
        SliverGrid(delegate: delegate, gridDelegate: gridDelegate)
      ]
    );
  }
}