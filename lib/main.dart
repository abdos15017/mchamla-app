import 'package:first_app/global/global.params.dart';
import 'package:flutter/material.dart';
import 'package:first_app/ui/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Sofia Sans'),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: GlobalParameters.routes,
    );
  }
}