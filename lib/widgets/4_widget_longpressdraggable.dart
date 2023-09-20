import 'package:flutter/material.dart';
import 'package:flutter_mapstuts/colors.dart';

class WidgetLongPressDraggable extends StatefulWidget {
  const WidgetLongPressDraggable({super.key});

  @override
  State<WidgetLongPressDraggable> createState() =>
      _WidgetLongPressDraggableState();
}

class _WidgetLongPressDraggableState extends State<WidgetLongPressDraggable> {
  Offset _offset = const Offset(200, 250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldfColor,
      appBar: AppBar(
        title: const Text('Long press Draggable'),
        backgroundColor: appbarColor,
      ),
      body: Center(child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                left: _offset.dx,
                top: _offset.dy,
                child: LongPressDraggable(
                  feedback: Image.network(
                    'https://e1.pxfuel.com/desktop-wallpaper/832/138/desktop-wallpaper-wwe-hhh-triple-h-wrestling-triple-h-thumbnail.jpg',
                    height: 200,
                    color: Colors.orangeAccent,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/e/e7/Shawn_Michaels_at_WrestleMania_XXIV.jpg',
                      height: 200),
                  onDragEnd: (details) {
                    setState(() {
                      double adjustment = MediaQuery.of(context).size.height -
                          constraints.maxHeight;
                      _offset = Offset(
                          details.offset.dx, details.offset.dy - adjustment);
                    });
                  },
                ),
              )
            ],
          );
        },
      )),
    );
  }
}
