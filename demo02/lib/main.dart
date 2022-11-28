import 'package:demo01/pages/tabs.dart';
import 'package:demo01/routers/routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData.light(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      home: Tabs(),
    );
  }
}
