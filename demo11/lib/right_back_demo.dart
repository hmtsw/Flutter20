import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RightBackDemo extends StatelessWidget {
  const RightBackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(
                builder: (BuildContext context) {
                  return RightBackDemo();
                },
              ));
            },
          ),
        ),
      ),
    );
  }
}
