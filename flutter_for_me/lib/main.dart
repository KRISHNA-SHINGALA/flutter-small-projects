import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        
        colorScheme: .fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      home: const MyHomePage(title: 'My practice app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 1. Text aur Color dono ke variables bana diye
  String boxText = 'One';
  Color boxColor = Colors.red; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              // 2. Yahan Colors.red ki jagah apna variable laga diya
              color: boxColor, 
              alignment: Alignment.center,
              child: Text(boxText, style: const TextStyle(color: Colors.white, fontSize: 20)),
            ),
            
            const SizedBox(width: 20),
            
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // 3. Jaise hi button dabega, text aur color dono badal jayenge!
                  boxText = 'Daba Diya!'; 
                  boxColor = Colors.green; 
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 38),
              ),
              child: const Text('Click Me', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
