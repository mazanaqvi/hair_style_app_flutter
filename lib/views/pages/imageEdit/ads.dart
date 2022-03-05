import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Ads extends StatelessWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30.0,top:30,right:30),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(
                    Radius.circular(15)) ,
            color: Colors.white,
            shape: BoxShape.rectangle,                ),
            child:
            SizedBox(height: 60,width:double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,left:70),
                child: Text("Display Ads Here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ))
            ),
           
        ],
      ),
    );
  }
}
