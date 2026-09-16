import 'package:flutter/material.dart';
// import 'package:flutter_application/controls/calenderexample.dart';
// import 'package:flutter_application/controls/dropdown.dart';
// import 'package:flutter_application/controls/imagedisplay.dart';
import 'package:flutter_application/controls/scrollviewimage.dart';
// import 'package:flutter_application/controls/sliderexample.dart';
// import 'package:flutter_application/registration.dart';
// import 'package:flutter_application/loginscreen.dart';

// void main() {
//   runApp(const StopwatchExample(name: "", email: ""));
// }

// class StopwatchExample extends StatelessWidget {
//   const StopwatchExample({super.key, required String name, required String email});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginScreenPart(),
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScrollImage(),
    );
  }
}
