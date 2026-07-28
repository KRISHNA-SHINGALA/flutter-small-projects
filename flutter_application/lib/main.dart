import 'package:flutter/material.dart';
import 'package:flutter_application/stopwatchex.dart';

void main() {
  runApp(const StopwatchExample());
}

class StopwatchExample extends StatelessWidget {
  const StopwatchExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStopWatch(),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//       ),
//       home: const MyHomePage(title: 'flutter demo'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title, style: const TextStyle(color: Colors.black)),
//       ),
//       body: SafeArea(
//         child: Center(
//           // SingleChildScrollView lagaya hai taaki agar screen choti ho toh scroll ho sake
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
                
//                 // ==========================================
//                 // PATTERN 1: Rotate Wale Squares (Upar wala)
//                 // ==========================================
//                 Stack(
//                   alignment: Alignment.center,
//                   children: <Widget>[
//                     Container(
//                       height: 250,
//                       width: 250,
//                       decoration: BoxDecoration(
//                         color: Colors.red,
//                         border: Border.all(color: Colors.black, width: 3),
//                       ),
//                     ),
//                     Transform.rotate(
//                       angle: 0.785, 
//                       child: Container(
//                         height: 176,
//                         width: 176,
//                         decoration: BoxDecoration(
//                           color: Colors.orange,
//                           border: Border.all(color: Colors.black, width: 3),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: 125,
//                       width: 125,
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         border: Border.all(color: Colors.black, width: 3),
//                       ),
//                     ),
//                     Transform.rotate(
//                       angle: 0.785, 
//                       child: Container(
//                         height: 88,
//                         width: 88,
//                         decoration: BoxDecoration(
//                           color: Colors.lightBlue,
//                           border: Border.all(color: Colors.black, width: 3),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 // Dono patterns ke beech mein thodi jagah (gap) dene ke liye
//                 const SizedBox(height: 50),

//                 // ==========================================
//                 // PATTERN 2: Hearts Wala Box (Neeche wala)
//                 // ==========================================
//                 Container(
//                   height: 220,
//                   width: 220,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     // Light Blue color ki thodi moti border
//                     border: Border.all(color: Colors.lightBlue, width: 4),
//                   ),
//                   // Padding di hai taaki hearts border se bilkul chipak na jayein
//                   padding: const EdgeInsets.all(16),
                  
//                   // Box ke andar humne Stack lagaya taaki hearts ko kono par set kar sakein
//                   child: const Stack(
//                     children: [
//                       // Top-Left (Upar Bayein)
//                       Align(
//                         alignment: Alignment.topLeft,
//                         child: Icon(Icons.favorite, color: Colors.black, size: 35),
//                       ),
//                       // Top-Right (Upar Dayein)
//                       Align(
//                         alignment: Alignment.topRight,
//                         child: Icon(Icons.favorite, color: Colors.black, size: 35),
//                       ),
//                       // Bottom-Left (Neeche Bayein)
//                       Align(
//                         alignment: Alignment.bottomLeft,
//                         child: Icon(Icons.favorite, color: Colors.black, size: 35),
//                       ),
//                       // Bottom-Right (Neeche Dayein)
//                       Align(
//                         alignment: Alignment.bottomRight,
//                         child: Icon(Icons.favorite, color: Colors.black, size: 35),
//                       ),
//                     ],
//                   ),
//                 ),
                
//                 const SizedBox(height: 30), // Neeche thodi extra space
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }