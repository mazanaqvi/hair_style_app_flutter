import 'package:flutter/material.dart';


class EditPageTopBar extends StatelessWidget {
  const EditPageTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ Padding(
        padding: const EdgeInsets.only(left:10,right:10),
        child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                     Container(
                      decoration: BoxDecoration(
                      
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      ),
                      child:
                       IconButton(onPressed: ()=>{}, icon:  Icon(Icons.arrow_back_sharp),),
                     ),
                      CircleAvatar(
                        
                   backgroundImage: NetworkImage('https://raw.githubusercontent.com/mazanaqvi/Images/main/myhair360-01.png'),
                      
                    radius: 30,
                          ),
                      Container(
                      decoration: BoxDecoration(
                      
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      ),
                      child:
                       IconButton(onPressed: ()=>{}, icon:  Icon(Icons.more_vert),),
                     ),
   
                     ],
                     
                     ),
      ),
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
