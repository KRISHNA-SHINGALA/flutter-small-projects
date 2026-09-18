import 'package:flutter/material.dart';
import 'package:flutter_application/controls/scrollviewimage.dart';
import 'package:flutter_application/loginscreen.dart';

class TabExample extends StatefulWidget {
  const TabExample({super.key});

  @override
  State<TabExample> createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
              Tab(icon: Icon(Icons.message_sharp), text: "Messages"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: LoginScreenPart()),
            Center(child: ScrollImage()),
            Center(child: Text("Messages")),
          ],
        ),
      ),
    );
  }
}