import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({super.key});

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  String unit = 'Rajkot';

  void setDropDownValue(){
    setState(() {
      unit = 'Jamanagar';
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
                DropdownMenuItem(value: 'Rajkot',child: Text('Rajkot'),),
                DropdownMenuItem(value: 'Jetpur',child: Text('Jetpur'),),
                DropdownMenuItem(value: 'Jamanagar',child: Text('Jamanagar'),),
              ],
              onChanged: (v) => setState(() {
                  unit = v!;
              }),
            ),
            Text('Selected Unit: $unit'),
            
            ElevatedButton(
              onPressed: setDropDownValue,
              child: const Text('Set value to Jetpur'),
            ),
          ],
        ),
      )
    );
  }
}