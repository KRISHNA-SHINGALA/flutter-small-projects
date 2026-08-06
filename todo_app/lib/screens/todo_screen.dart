import 'dart:developer';

import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController txtTitle = TextEditingController();
  int selIndx = -1;
  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: txtTitle,
                  decoration: InputDecoration(
                    hintText: "Enter title",
                    labelText: "Title",
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  log(txtTitle.text);
                  if (txtTitle.text.isNotEmpty) {
                   if(selIndx==-1)
                    {tasks.add(txtTitle.text);}
                    else{
                      tasks[selIndx] = txtTitle.text;
                      selIndx = -1;
                    }
                    txtTitle.text = "";
                    setState(() {});
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
                          txtTitle.text = tasks[index];
                          selIndx = index;
                          setState(() {});
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          tasks.removeAt(index);
                          setState(() {});
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
      ),
    );
  }
}