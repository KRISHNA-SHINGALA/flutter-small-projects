import 'package:flutter/material.dart';
import 'dart:async';


class MyStopWatch extends StatefulWidget {
  const MyStopWatch({super.key, required String name, required String email});


  @override
  State<MyStopWatch> createState() => _MyStopWatchState();
}


class _MyStopWatchState extends State<MyStopWatch> {
  int seconds = 0;
  late Timer timer;
  bool isRunning = false;
  int milliseconds = 0;
  final laps = <int>[];

  void lap() {
    setState((){
      laps.add(milliseconds);
      milliseconds = 0;
      print(laps);
    });
  }


  void clear() {
    setState(() {
      milliseconds = 0;
      laps.clear();
    });
  }


  void _startTimer() {
    if (!isRunning) {
      isRunning = true;
    }
  }


  void _stopTimer() {
    if (isRunning) {
      isRunning = false;
    }
  }


  void _onTick(Timer timer) {
    setState(() {
      if (isRunning) milliseconds += 100;
    });
  }


  String secondstotext(millis) {
    final seconds = millis / 1000;
    return '$seconds seconds';
  }


  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 100), _onTick);
  }


Widget buildCounter(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Lap ${laps.length + 1}',
          style: Theme.of(context).textTheme.headlineLarge),

          SizedBox(height: 10),
          Text(
            secondstotext(milliseconds),
            style: Theme.of(context).textTheme.headlineLarge,
          )
        ]
      ),
    );
  }

  Widget buildDisplay(){
    return ListView(children:[
      for (int millis in laps)
        ListTile(
          title: Text(
            secondstotext(millis),
            style: const TextStyle(fontSize: 20)
          ),
        )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stopwatch Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: buildCounter(context),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: controlPanel(),
            ),
            Expanded(
              child: buildDisplay(),
            )
          ],
        ));
  }

  Row controlPanel() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.green),
                      foregroundColor:
                          WidgetStateProperty.all<Color>(Colors.white)),
                  onPressed: _startTimer,
                  child: const Text("Start")),
              const SizedBox(width: 20),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.red),
                      foregroundColor:
                          WidgetStateProperty.all<Color>(Colors.white)),
                  onPressed: _stopTimer,
                  child: const Text("Stop")),
              const SizedBox(width: 20),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(const Color.fromARGB(255, 212, 199, 75)),
                      foregroundColor:
                          WidgetStateProperty.all<Color>(Colors.white)),
                  onPressed: lap,
                  child: const Text("Lap")),
              const SizedBox(width: 20),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.blue),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white)),
                onPressed: clear,
                child: const Text("Clear"),
              )
            ],
          );
  }
}