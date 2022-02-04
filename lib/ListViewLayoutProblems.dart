import 'package:flutter/material.dart';

class ListViewLayoutProblems extends StatelessWidget {
  const ListViewLayoutProblems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Problems"),
      ),
      body: Container(
        child: Column(
          children: [
            const Text("Start"),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    color: Colors.red,
                  ),
                  Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            const Text("End")
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.red, width: 4)),
      ),
    );
  }
}
