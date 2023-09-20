import 'package:flutter/material.dart';

class WidgetTwoPrefferedSize extends StatelessWidget {
  const WidgetTwoPrefferedSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.orange.shade800],
            ),
          ),
          child: SafeArea(
            child: Center(
              child: ListTile(
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                title: const Text(
                  'Preffered size',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.grey.shade900, Colors.orange.shade800],
                ),
              ),
              height: 50,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This appbar is set with prefferd size',
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
