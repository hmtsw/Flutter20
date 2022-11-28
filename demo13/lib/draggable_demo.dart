import 'package:flutter/material.dart';
import 'draggable_widget.dart';

class DraggableDemo extends StatefulWidget {
  const DraggableDemo({super.key});

  @override
  State<DraggableDemo> createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _draggableColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DraggableWidget(Offset(80.0, 80.0), Colors.tealAccent),
          DraggableWidget(Offset(180.0, 80.0), Colors.redAccent),
          Center(
            child: DragTarget(
              onAccept: (Color color) {
                _draggableColor = color;
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 200,
                  height: 200,
                  color: _draggableColor,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
