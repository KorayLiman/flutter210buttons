import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yellow Page"),backgroundColor: Colors.yellow,),
      body: Center(child: const Text("Yellow Page", style: TextStyle(color: Colors.yellow),),),
    );
  }
}