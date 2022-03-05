import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30.0,top:30,right:30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        
        ImageIcon(
          
     AssetImage("assets/left.png"),
     size: 40,
     color: Color.fromARGB(255, 27, 29, 28),
),
ImageIcon(
          
     AssetImage("assets/photoIcon.png"),
     size: 40,
     color: Colors.greenAccent,
),
ImageIcon(
          
     AssetImage("assets/tick.png"),
     size: 40,
     color: Color.fromARGB(255, 20, 20, 20),
),

      ],)
    );
  }
}
