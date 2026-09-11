import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double value = 20;

  void updateSlider(){
    setState(() {
      value = 20;
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
            Slider(
              value: value,
              min: 0,
              max: 100,
              divisions: 100,
              label: value.round().toString(),
              onChanged: (double newValue) {
                setState(() {
                  value = newValue;
                });
                Text('Value: ${value.round()}');
                ElevatedButton(
                  onPressed: updateSlider,
                  child: const Text('Set value to 50'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}