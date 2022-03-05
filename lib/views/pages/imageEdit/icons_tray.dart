import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class IconTray extends StatelessWidget {
  const IconTray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0,right:10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(
                    Radius.circular(15)) ,
            color: Colors.white,
            shape: BoxShape.rectangle,                ),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: ()=>{}, icon:  Icon(Icons.face),),
                IconButton(onPressed: ()=>{}, icon:  Icon(Icons.circle_outlined),),
                IconButton(onPressed: ()=>{}, icon:  Icon(Icons.style),),
                IconButton(onPressed: ()=>{}, icon:  Icon(Icons.settings),),
              ],
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: ()=>{}, icon:  Icon(Icons.arrow_left),),
                Text("Hair Styles",style: TextStyle(fontSize: 15)),
                IconButton(onPressed: ()=>{}, icon:  Icon(Icons.arrow_right_sharp),),
              ],
            ),
        ],
      ),
    );
  }
}
