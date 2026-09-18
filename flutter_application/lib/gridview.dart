import 'package:flutter/material.dart';

class GridExample extends StatefulWidget {
  const GridExample({super.key});

  @override
  State<GridExample> createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  final topics = [
    'topic 1',
    'topic 2',
    'topic 3',
    'topic 4',
    'topic 5',
    'topic 6',
    'topic 7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          children: [
            for (final topic in topics)
            Card(
              color: Colors.blue,
              child: Center(
                child: Text(topic),
            ),
          ),
         ],
        ),
      ),
    );
  }
}