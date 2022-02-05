import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridViewUsage"),
      ),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.orange, offset: Offset(10, 5))
                    ],
                    border: Border(
                      top: BorderSide(
                          color: Colors.orange,
                          width: 6,
                          style: BorderStyle.solid),
                      bottom: BorderSide(
                          color: Colors.orange,
                          width: 6,
                          style: BorderStyle.solid),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.britannica.com/w:400,h:300,c:crop/97/158797-050-ABECB32F/North-Cascades-National-Park-Lake-Ann-park.jpg"),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter),
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.green],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        tileMode: TileMode.repeated)),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Hi Flutter $index",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              onTap: () => debugPrint("Clickled $index"),
            );
          }),
    );
  }

  GridView GridViewCountExample() {
    return GridView.count(
      crossAxisCount: 3,
      primary: false,
      padding: EdgeInsets.all(15),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            "Hi Flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
