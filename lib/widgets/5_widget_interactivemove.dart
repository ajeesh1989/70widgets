import 'package:flutter/material.dart';
import 'package:flutter_mapstuts/colors.dart';

class WidgetInteractiveViewer extends StatelessWidget {
  const WidgetInteractiveViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('Interactive viewer'),
        backgroundColor: appbarColor,
      ),
      body: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(double.infinity),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Ajeesh flutter dev'),
            ),
          )),
    );
  }
}
