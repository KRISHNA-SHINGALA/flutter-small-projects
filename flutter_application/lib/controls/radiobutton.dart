import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<String>(
          title: const Text('Male'),
          value: 'Male',
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),

        RadioListTile<String>(
          title: const Text('Female'),
          value: 'Female',
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),

        Text('Selected Gender: $gender'),
      ],
    );
  }
}