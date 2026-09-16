import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({super.key});

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  String unit = 'unit 1';

  void setDropDownValue(){
    setState(() {
      unit = 'unit 3';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: unit,
              isExpanded: true,
              items: const [
                DropdownMenuItem(value: 'unit 1',child: Text('Unit 1'),),
                DropdownMenuItem(value: 'unit 2',child: Text('Unit 2'),),
                DropdownMenuItem(value: 'unit 3',child: Text('Unit 3'),),
              ],
              onChanged: (v) => setState(() {
                  unit = v!;
              }),
            ),
            Text('Selected Unit: $unit'),
            
            ElevatedButton(
              onPressed: setDropDownValue,
              child: const Text('Set value to unit 3'),
            ),
          ],
        ),
      )
    );
  }
}