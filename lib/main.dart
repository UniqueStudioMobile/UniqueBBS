import 'package:flutter/material.dart';

import 'config/route.dart';

void main() => runApp(BBSApp());

class BBSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Color(0xfffafafa),
          iconTheme: IconThemeData(
            color: Color(0xff999999),
          ),
        ),
        accentColor: Color(0xff555555),
        indicatorColor: Color(0xff7966ff),
        primaryTextTheme:
        TextTheme(body2: TextStyle(color: Color(0xff7966ff))),
        iconTheme: IconThemeData(color: Color(0xff7966ff)),
        primaryColor: Color(0xff7966ff),
        primaryColorLight: Color(0xFFFFDFFD),
        unselectedWidgetColor: Color(0xff999999)),
      home: BBSRoute.buildPage(BBSRoute.main, null),
      onGenerateRoute: (settings) =>
        MaterialPageRoute(
          builder: (context) =>
            BBSRoute.buildPage(settings.name, settings.arguments)),
    );
  }
}
