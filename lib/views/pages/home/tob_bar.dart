import 'package:flutter/material.dart';
import 'package:hairstyle/views/styles/styles.dart';

class Topbar extends StatelessWidget {
  const Topbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: Stack(
                
               children: [ Padding(
                 padding: const EdgeInsets.all(25.0),
                 child:
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Container(
                    decoration: BoxDecoration(
                    
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    ),
                    child:
                     IconButton(onPressed: ()=>{}, icon:  Icon(Icons.menu),),
                   ),
                    Text("Home",style: home,),

                    Container(
                    decoration: BoxDecoration(
                    
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    ),
                    child:
                     IconButton(onPressed: ()=>{}, icon:  Icon(Icons.camera_alt_outlined),),
                   ),
   
                   ],
                   
                   ),

               ),
               ],
              ),
          
        ),
             Align(
      alignment: Alignment.centerLeft,
      child: Container(
         padding:const EdgeInsets.only(left: (25.0),top: 10),
        child: Text(
          "Photo Gallery",
        ),
      ),
    ),
      ],
    );
  }
}
