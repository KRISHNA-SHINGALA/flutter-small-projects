import 'package:flutter/material.dart';
import 'package:flutter_application/tabview1.dart';

class Registration1 extends StatefulWidget {
  const Registration1({super.key});

  @override
  State<Registration1> createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  //------------ FOR DEPARTMENT---------
  String dpt = 'CE';

//----------------FOR TECH OR NONTECH CHECKBOX-------------
  bool tech = false;
  bool nontech = false;

  void updateChkBox() {
    setState(() {
      tech = !tech;
      nontech = !nontech;
    });
  }
  

//-------------- FOR DATE -----------

  DateTime? data;
    Future<void> pickData() async {
      final picked = await showDatePicker(
        context: context,
        initialDate: data ?? DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if(!mounted || picked == null) return;
      setState(() => data = picked);
    }

void setDatevalue(){
  setState(() {
    data = DateTime(2024, 6, 15);
  });
}

//----------- for drop down list-------
String unit = 'Figma';

  void setDropDownValue(){
    setState(() {
      unit = 'Coder';
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Column(
        
        children: [
          //----------- DEPARTMENT---------

          Text('Department'),

        RadioListTile<String>(
          title: const Text('CE'),
          value: 'CE',
          groupValue: dpt,
          onChanged: (value) {
            setState(() {
              dpt = value!;
            });
          },
        ),

        RadioListTile<String>(
          title: const Text('IT'),
          value: 'IT',
          groupValue: dpt,
          onChanged: (value) {
            setState(() {
              dpt = value!;
            });
          },
        ),

        RadioListTile<String>(
          title: const Text('Mechanicle'),
          value: 'Mechanicle',
          groupValue: dpt,
          onChanged: (value) {
            setState(() {
              dpt = value!;
            });
          },
        ),

        Text('Selected Gender: $dpt'),
        SizedBox(height: 10,),

        //----------CHECK BOX-----------

        Text('Check box'),

        CheckboxListTile(
              title: const Text('Tech'),
              value: tech,
              onChanged: (v) => setState(() {
                tech = v!;
              }),
            ),

        CheckboxListTile(
              title: const Text('Non Tech'),
              value: nontech,
              onChanged: (v) => setState(() {
                nontech = v!;
              }),
            ),

            SizedBox(height: 10,),

            //---------- DATE --------------

            Text('Event date'),
            ElevatedButton(
              onPressed: pickData,
              child: const Text('Pick Date'),
            ),
            ElevatedButton(
              onPressed: setDatevalue,
              child: const Text('Set Date to 15/06/2024'),
            ),

            SizedBox(height: 10,),

            //---------- PARTICIPANT NAME--------
            Text('Participent name'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                    
                    decoration: const InputDecoration(
                      labelText: "User Name",
                      border: OutlineInputBorder(),
                    ),
              ),
            ),

            SizedBox(height: 10,),

            //--------EVENT NAME-----------
            Text('Choose your Event'),
        DropdownButton<String>(
              value: unit,
              isExpanded: true,
              items: const [
                DropdownMenuItem(value: 'Figma',child: Text('Figma'),),
                DropdownMenuItem(value: 'TechRace',child: Text('TechRace'),),
                DropdownMenuItem(value: 'Coder',child: Text('Coder'),),
              ],
              onChanged: (v) => setState(() {
                  unit = v!;
              }),
            ),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: _validate, child: const Text("Login")),
            

      ],

      ),
    );
  }
  void _validate() {
    
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => Tabview1(),
        ),
      );
  }
}