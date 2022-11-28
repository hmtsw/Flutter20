import 'package:demo04/frosted_glass_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(body: FrostedGlassDemo()),
    );
  }
}
