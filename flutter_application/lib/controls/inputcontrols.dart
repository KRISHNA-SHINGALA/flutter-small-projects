import 'package:flutter/material.dart';

class TextBoxDemo extends StatefulWidget {
  const TextBoxDemo({super.key});

  @override
  State<TextBoxDemo> createState() => _TextBoxDemoState();
}

class _TextBoxDemoState extends State<TextBoxDemo> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void setText() {
    setState(() {
      textController.text = "Hello, World!";
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
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                labelText: "Enter text",
                border: OutlineInputBorder(),
              ),
              onChanged: (_) => setState(() {}),
            ),
            Text('Read Text: ${textController.text}'),
            ElevatedButton(
              onPressed: setText,
              child: const Text("Set Text"),
            ),
          ],
        ),
      ),
    );
  }
}