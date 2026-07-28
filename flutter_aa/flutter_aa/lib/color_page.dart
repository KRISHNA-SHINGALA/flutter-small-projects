import 'package:flutter/material.dart';

class ColorPage extends StatefulWidget {
  ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  var colors = [const Color.fromARGB(255, 244, 110, 100), const Color.fromARGB(255, 250, 234, 92), const Color.fromARGB(255, 105, 187, 255), const Color.fromARGB(255, 114, 249, 118)];

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Page')),
      body: Column(
        children: [
          Expanded(child: Container(color: colors[(0 + count) % 4])),
          Expanded(child: Container(color: colors[(1 + count) % 4])),
          Expanded(child: Container(color: colors[(2 + count) % 4])),
          Expanded(child: Container(color: colors[(3 + count) % 4])),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                count++;
                setState(() {});

                print("Button clicked $count");
              },
              child: Text("Change"),
            ),
          ),
        ],
      ),
    );
  }
}

// create calculator to calculate GST and reverse GST
// amt = 100
// gst % 18
// total = amt + (amt * gst * 0.01)

// total = 236
// gst = 18%
// amt = total / ( 1 + (0.01 * gst) )