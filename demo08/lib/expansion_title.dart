import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  const ExpansionTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ExpansionTileDemo")),
      body: const Center(
        child: ExpansionTile(
          title: Text("ExpansionTile"),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: [
            ListTile(
              title: Text("list title"),
              subtitle: Text("subtitle"),
            )
          ],
          initiallyExpanded: false,
        ),
      ),
    );
  }
}
