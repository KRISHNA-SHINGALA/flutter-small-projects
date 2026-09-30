import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Formlist extends StatefulWidget {
  const Formlist({super.key});

  @override
  State<Formlist> createState() => _FormlistState();
}

class _FormlistState extends State<Formlist> {
  final nameCtrl = TextEditingController();

  String gender = "M";
  bool agree = false;

  List<Map<String, dynamic>> items = [];

  static const _key = 'entries';

  Future<void> _load() async {
    final pref = await SharedPreferences.getInstance();
    final raw = pref.getString(_key);

    if (raw == null) return;

    final list = jsonDecode(raw) as List;

    setState(() {
      items = list.cast<Map<String, dynamic>>();
    });
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    nameCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (nameCtrl.text.trim().isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please enter name")));
      return;
    }

    items.add({'name': nameCtrl.text, 'gender': gender, 'agree': agree});

    final pref = await SharedPreferences.getInstance();

    await pref.setString(_key, jsonEncode(items));

    nameCtrl.clear();

    setState(() {
      gender = 'M';
      agree = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form List")),

      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(
          children: [
            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),

            RadioListTile<String>(
              title: const Text('Male'),
              value: 'M',
              groupValue: gender,
              onChanged: (v) {
                setState(() {
                  gender = v!;
                });
              },
            ),

            RadioListTile<String>(
              title: const Text('Female'),
              value: 'F',
              groupValue: gender,
              onChanged: (v) {
                setState(() {
                  gender = v!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("I Agree"),
              value: agree,
              onChanged: (v) {
                setState(() {
                  agree = v!;
                });
              },
            ),

            ElevatedButton(onPressed: _save, child: const Text("Save")),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return Card(
                    child: ListTile(
                      title: Text(item['name']),
                      subtitle: Text(
                        "Gender: ${item['gender']}\n"
                        "Agree: ${item['agree']}",
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}