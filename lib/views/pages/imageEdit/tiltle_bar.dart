import 'package:flutter/material.dart';


class TitleBar extends StatelessWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
                    Padding(
                      padding: const EdgeInsets.only(left:18,right: 18),
                      child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                  
                       IconButton(onPressed: ()=>{}, icon:  Icon(Icons.grid_4x4),),
                        Text("Editing Image 21347",style: TextStyle(fontSize: 15)),
                        IconButton(onPressed: ()=>{}, icon:  Icon(Icons.topic),),
                      
                   ],
                   
                   ),
                    ),

],
    );
  }
}
