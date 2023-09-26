import 'package:flutter/material.dart';
import 'package:flutter_mapstuts/widgets/1_widget_materialBanner.dart';
import 'package:flutter_mapstuts/widgets/2_widget_preferredSize.dart';
import 'package:flutter_mapstuts/widgets/3_widget_bottomsheet.dart';
import 'package:flutter_mapstuts/widgets/4_widget_longpressdraggable.dart';
import 'package:flutter_mapstuts/widgets/5_widget_interactivemove.dart';
import 'package:flutter_mapstuts/widgets/6_widget_reorderableListview.dart';
import 'package:flutter_mapstuts/widgets/7_widget_checkBox_listtile.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> homeItems = [
    'Material Banner',
    'Preffered Size',
    'Showmodel Bottom sheet',
    'Longpress draggable',
    'InteractiveViewer',
    'Reorderable Listview',
    'CheckBoxListTile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 34, 41),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: const Text('Flutter Maps Tutorials'),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blueGrey.shade400,
            child: GridTile(
              child: TextButton(
                onPressed: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WidgetOneMaterialBanner(),
                      ),
                    );
                  } else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const WidgetTwoPrefferedSize(), // Navigate to the new page
                      ),
                    );
                  } else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ShowModelBottomSheet(), // Navigate to the new page
                      ),
                    );
                  } else if (index == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const WidgetLongPressDraggable(), // Navigate to the new page
                      ),
                    );
                  } else if (index == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const WidgetInteractiveViewer(), // Navigate to the new page
                      ),
                    );
                  } else if (index == 5) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const WidgetReorderableListView(), // Navigate to the new page
                      ),
                    );
                  } else if (index == 6) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const WidgetCheckBoxListTile(), // Navigate to the new page
                      ),
                    );
                  }
                },
                child: Text(
                  '${index + 1} ${homeItems[index]}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: homeItems.length,
      ),
    );
  }
}
