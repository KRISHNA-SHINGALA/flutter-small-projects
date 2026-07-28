import 'dart:developer';

import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController txtTitle = TextEditingController();
  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body : Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: txtTitle,
                  decoration: InputDecoration(
                    hintText: 'Enter Title',
                    labelText: 'Title',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  log(txtTitle.text);
                  if(txtTitle.text.isNotEmpty){
                  tasks.add(txtTitle.text);
                  txtTitle.text = "";
                  setState((){});
                  }
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text(tasks[index]),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                        IconButton(
                        onPressed: () {
                          tasks.removeAt(index);
                          setState((){});
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          tasks.removeAt(index);
                          setState((){});
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: tasks.length,
              ),
            ),
        ],
      )
    );
  }
}