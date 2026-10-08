import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: DemoPage()));

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});
  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  final items = [
    'Buy milk',
    'Study Flutter',
    'Call mom',
    'Go to gym',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe to Delete'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Container(
        color: Colors.blueGrey[50],

        child: ListView(
          children: [
            for (final item in items)
              Dismissible(
                key: ValueKey(item),

                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),

                direction: DismissDirection.startToEnd,

                onDismissed: (_) {
                  setState(() {
                    items.remove(item);
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$item deleted'),
                    ),
                  );
                },

                child: Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: ListTile(
                    title: Text(item),
                    leading: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}