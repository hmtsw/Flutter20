import 'package:flutter/material.dart';

class WarpDemo extends StatefulWidget {
  const WarpDemo({super.key});

  @override
  State<WarpDemo> createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {
  List<Widget> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ignore: deprecated_member_use, prefer_collection_literals, prefer_inlined_adds
    list = <Widget>[]..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("流式布局"),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: size.width,
            height: size.height / 2,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 26,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: 80,
          height: 80,
          color: Colors.black54,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.amber,
        child: const Center(
          child: Text("图片"),
        ),
      ),
    );
  }
}
