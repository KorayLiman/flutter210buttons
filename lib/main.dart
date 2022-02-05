import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/main2.dart';
import 'package:flutter_application_4/pages/red_page.dart';
import 'package:flutter_application_4/pages/yellow_page.dart';
import 'package:flutter_application_4/route_generator.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomeScreen(),
      onGenerateRoute: RouteGenerator.routeGenerator,
      // routes: {
      //   "Red Page": (context) => RedPage(),
      //   "Yellow Page": (context) => YellowPage()
      // },
      // onUnknownRoute: (settings) => MaterialPageRoute(
      //     builder: (context) => Scaffold(
      //           appBar: AppBar(
      //             title: const Text("OnUnknowRoute Page"),
      //           ),
      //           body: Center(
      //             child: const Text("Error"),
      //           ),
      //         )),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar Title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                int result = await Navigator.push(context,
                    CupertinoPageRoute(builder: ((context) => RedPage())));
                print(result);
              },
              child: const Text("Red Page IOS"),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RedPage()))
                    .then((value) => print(value));
              },
              child: const Text("Red Page Android"),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            ElevatedButton(
                onPressed: () => Navigator.maybePop(context),
                child: const Text("Maybe Pop")),
            ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    print("yes");
                  } else {
                    print("no");
                  }
                },
                child: const Text("Can Pop")),
            ElevatedButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) => RedPage()))),
                child: const Text("Push Replacement")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Red Page");
                  //Navigator.pushNamed(context, "Red Page11");
                },
                child: const Text("Push Named")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "StudentList", arguments: 60);
                },
                child: const Text("Create List")),
            ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text("Pop Until")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "Yellow Page", (route) => route.isFirst);
                },
                child: const Text("PushNamedandRemoveUntil"))
          ],
        ),
      ),
    );
  }
}
