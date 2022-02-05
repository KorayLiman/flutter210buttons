import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int? _randomNumber;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() {
        _randomNumber = Random().nextInt(10);
        Navigator.pop(context, _randomNumber);
        print(_randomNumber);
        return Future.value(false);
      }),
      child: Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: const Text("Red Page"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              const Text(
                "Red Page",
                style: TextStyle(color: Colors.red),
              ),
              ElevatedButton(
                  onPressed: () {
                    _randomNumber = Random().nextInt(10);
                    Navigator.pop(context, _randomNumber);
                  },
                  child: const Text("Go Back")),
              ElevatedButton(
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      //Navigator.pop(context);
                    }
                  },
                  child: const Text("Can Pop")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: const Text("Pop Until")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context,
                        (route) => route.settings.name == "Yellow Page");
                  },
                  child: const Text("Pop Until"))
            ],
          ),
        ),
      ),
    );
  }
}
