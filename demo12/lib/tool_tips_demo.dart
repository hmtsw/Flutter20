import 'dart:ui';

import 'package:flutter/material.dart';

class TollTipDemo extends StatelessWidget {
  const TollTipDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("toll tip demo")),
      body: Center(
        child: Tooltip(
          message: "我是派大星",
          child: Image.network(
              "https://img1.baidu.com/it/u=686983603,2855355517&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500"),
        ),
      ),
    );
  }
}
