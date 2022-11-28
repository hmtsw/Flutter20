import 'package:demo08/expansion_panel_list.dart';
import 'package:demo08/expansion_title.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ExpansionTileDemo(),
      home: const ExpansionPanelListDemo(),
    );
  }
}
