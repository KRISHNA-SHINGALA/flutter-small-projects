import 'package:flutter/material.dart';
import 'package:flutter_application/resources/imagestring.dart';


class Tabview1 extends StatefulWidget {
  const Tabview1({super.key});

  @override
  State<Tabview1> createState() => _Tabview1State();
}

class _Tabview1State extends State<Tabview1> {
  Widget ScrollDisp(){
    return SizedBox(
      height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: i2.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(i2[index]),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          )
        );
      }
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollDisp()
        ),
      );
    
  }
}