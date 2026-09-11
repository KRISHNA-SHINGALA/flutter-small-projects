import 'package:flutter/material.dart';

class ChkBoxExam extends StatefulWidget {
  const ChkBoxExam({super.key});

  @override
  State<ChkBoxExam> createState() => _ChkBoxExamState();
}

class _ChkBoxExamState extends State<ChkBoxExam> {
  bool isChecked = false;

  void updateChkBox() {
    setState(() {
      isChecked = !isChecked;
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
            CheckboxListTile(
              title: const Text('Check Box'),
              value: isChecked,
              onChanged: (v) => setState(() {
                isChecked = v!;
              }),
            ),
            Text('Checkbox is ${isChecked ? 'Agree' : 'Disagree'}'),
            ElevatedButton(
              onPressed: updateChkBox,
              child: const Text('Agree/Disagree'),
            ),
          ],
        ),
      ),
    );
  }
}
