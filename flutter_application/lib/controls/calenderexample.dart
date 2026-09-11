import 'package:flutter/material.dart';

class CalenderExample extends StatefulWidget {
  const CalenderExample({super.key});

  @override
  State<CalenderExample> createState() =>  CalenderExampleState();
}

class  CalenderExampleState extends State<CalenderExample> {
    DateTime? data;
    Future<void> pickData() async {
      final picked = await showDatePicker(
        context: context,
        initialDate: data ?? DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if(!mounted || picked == null) return;
      setState(() => data = picked);
    }

void setDatevalue(){
  setState(() {
    data = DateTime(2024, 6, 15);
  });
}

  @override
  Widget build(BuildContext context) {
    final text =
      data == null ? 'No date selected' : 'Selected date: ${data!.day}/${data!.month}/${data!.year}'; 
    return Scaffold(
      body : Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children : [
            Text(text),
            ElevatedButton(
              onPressed: pickData,
              child: const Text('Pick Date'),
            ),
            ElevatedButton(
              onPressed: setDatevalue,
              child: const Text('Set Date to 15/06/2024'),
            ),
          ]
        )
      )
    );

  }
}