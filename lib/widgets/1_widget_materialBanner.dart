import 'package:flutter/material.dart';

class WidgetOneMaterialBanner extends StatelessWidget {
  const WidgetOneMaterialBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                backgroundColor: Colors.blueGrey.shade800,
                leading: const Icon(Icons.flutter_dash),
                content: const Text('This is material banner'),
                actions: [
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child: const Text('Dismiss'),
                  )
                ],
              ),
            );
          },
          child: const Text('Open'),
        ),
      ),
    );
  }
}
