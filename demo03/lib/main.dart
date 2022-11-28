import 'package:demo03/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter app",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstPage(),
    );
  }
}
