import 'package:flutter/material.dart';
import 'package:flutter_application_4/CardListTile.dart';
import 'package:flutter_application_4/GridViewUsage.dart';
import 'package:flutter_application_4/ListViewLayoutProblems.dart';
import 'package:flutter_application_4/ListviewUsage.dart';
import 'package:flutter_application_4/dropdownbutton.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'buttons.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: const TextTheme(
              headline1:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
          outlinedButtonTheme:
              OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)))),
      home: GridViewExample(),
    );
  }
}
