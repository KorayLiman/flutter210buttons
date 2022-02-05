import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/red_page.dart';
import 'package:flutter_application_4/pages/yellow_page.dart';
import 'package:flutter_application_4/student_details.dart';
import 'package:flutter_application_4/student_list.dart';

class RouteGenerator {
  static Route<dynamic>? _generateRoute(
      Widget PageName, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          builder: (context) => PageName, settings: settings);
    } else {
      return CupertinoPageRoute(
          builder: ((context) => PageName), settings: settings);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "Red Page":
        return _generateRoute(RedPage(), settings);

      case "StudentList":
        return _generateRoute(StudentList(), settings);

      case "StudentDetails":
        return _generateRoute(
            StudentDetails(selectedStudent: settings.arguments as Student),
            settings);

      default:
        return _generateRoute(YellowPage(), settings);
    }
  }
}
