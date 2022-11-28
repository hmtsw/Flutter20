import 'package:demo03/custom_router.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "FirstPage",
          style: TextStyle(fontSize: 36),
        ),
        elevation: 0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
          child: const Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
        title: const Text(
          "SecondPage",
          style: TextStyle(fontSize: 36),
        ),
        elevation: 0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64,
          ),
        ),
      ),
    );
    ;
  }
}
