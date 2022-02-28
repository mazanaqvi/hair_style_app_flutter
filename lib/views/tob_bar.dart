import 'package:flutter/material.dart';
import 'package:hairstyle/views/styles/styles.dart';

class Topbar extends StatelessWidget {
  const Topbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Stack(
            
           children: [ Padding(
             padding: const EdgeInsets.all(25.0),
             child:
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(child: IconButton(onPressed: ()=>{}, icon:  Icon(Icons.menu),)),
                Text("Home",style: home,),
                 IconButton(onPressed: ()=>{}, icon:  Icon(Icons.camera_alt_outlined),),
               ],
               
               ),

           ),
           ],
          ),
      
    );
  }
}
