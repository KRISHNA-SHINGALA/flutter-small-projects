import 'package:flutter/material.dart';
import 'package:todo_app/screens/todo_screen.dart';

void main() {
  runApp(todo_app());
}

class todo_app extends StatelessWidget {
  const todo_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TodoScreen(), 
    debugShowCheckedModeBanner: false,
    );
  }
}
