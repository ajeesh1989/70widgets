import 'package:flutter/material.dart';
import 'package:flutter_mapstuts/colors.dart';

class WidgetReorderableListView extends StatefulWidget {
  const WidgetReorderableListView({super.key});

  @override
  State<WidgetReorderableListView> createState() =>
      _WidgetReorderableListViewState();
}

class _WidgetReorderableListViewState extends State<WidgetReorderableListView> {
  final List<int> items = List<int>.generate(30, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: const Text('Reorderable Listview'),
      ),
      backgroundColor: scaffoldfColor,
      body: ReorderableListView(
        children: List.generate(
            items.length,
            (index) => ListTile(
                  key: Key('$index'),
                  tileColor:
                      items[index].isOdd ? Colors.white12 : Colors.white30,
                  title: Text('Item ${items[index]}'),
                  trailing: const Icon(Icons.drag_handle_sharp),
                )),
        onReorder: (oldIndex, newIndex) {
          setState(
            () {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            },
          );
        },
      ),
    );
  }
}
