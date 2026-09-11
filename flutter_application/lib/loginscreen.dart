import 'package:flutter/material.dart';
import 'package:flutter_application/stopwatchex.dart';

class LoginScreenPart extends StatefulWidget {
  const LoginScreenPart({super.key});

  @override
  State<LoginScreenPart> createState() => _LoginScreenPartState();
}

class _LoginScreenPartState extends State<LoginScreenPart> {
  String name1 = "", email1 = "";
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _loginScreen());
  }

  Widget _loginScreen() {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: t1,
              decoration: const InputDecoration(
                labelText: "User Name",
                border: OutlineInputBorder(),
              ),
              validator: (xyz) =>
                  xyz!.isEmpty ? "Please enter your name" : null,
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: t2,
              decoration: const InputDecoration(
                labelText: "Email Address",
                border: OutlineInputBorder(),
              ),
              validator: (xyz) {
                if (xyz!.isEmpty) {
                  return "Email cannot be blank";
                }
                final regex = RegExp(
                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                );
                if (!regex.hasMatch(xyz)) {
                  return "Email address is not in valid format";
                }
                return null;
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: _validate, child: const Text("Login")),
          ],
        ),
      ),
    );
  }

  void _validate() {
    var form = _formkey.currentState;
    if (form?.validate() == true) {
      name1 = t1.text;
      email1 = t2.text;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => MyStopWatch(name: name1, email: email1),
        ),
      );
      print("Form is valid");
    } else {
      print("Form is not valid");
    }
  }
}
