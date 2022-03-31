import 'package:flutter/material.dart';
import 'package:insta_follower/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
      );
  }
}
