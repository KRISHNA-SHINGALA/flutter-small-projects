import 'package:flutter/material.dart';
import 'package:flutter_application/resources/imagestring.dart';

class ScrollImage extends StatefulWidget {
  const ScrollImage({super.key});

  @override
  State<ScrollImage> createState() => _ScrollImageState();
}

class _ScrollImageState extends State<ScrollImage> {

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