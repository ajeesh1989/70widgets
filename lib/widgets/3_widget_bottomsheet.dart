import 'package:flutter/material.dart';
import 'package:flutter_mapstuts/colors.dart';

class ShowModelBottomSheet extends StatelessWidget {
  const ShowModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldfColor,
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: const Text('Show model Bottomsheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.grey.shade900,
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 400,
                  child: Center(
                    child: Card(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Close',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Modal bottomsheet'),
        ),
      ),
    );
  }
}
