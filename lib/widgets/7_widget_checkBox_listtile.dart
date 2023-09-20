import 'package:flutter/material.dart';
import 'package:flutter_mapstuts/colors.dart';

class WidgetCheckBoxListTile extends StatefulWidget {
  const WidgetCheckBoxListTile({super.key});

  @override
  State<WidgetCheckBoxListTile> createState() => _WidgetCheckBoxListTileState();
}

class _WidgetCheckBoxListTileState extends State<WidgetCheckBoxListTile> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldfColor,
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: const Text('CheckBox Listtile'),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('Checkbox List tile'),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          tileColor: Colors.grey.shade700,
          subtitle: const Text('This is a subtitle'),
        ),
      ),
    );
  }
}
