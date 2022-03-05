import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:hairstyle/views/styles/styles.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class HairStyles extends StatelessWidget {
  const HairStyles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/mainhair.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/ladyhair.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/mainhair.png',
];
    return Container(child: Column(
      children: [
        Stack(
                
               children: [ Padding(
                  padding:const EdgeInsets.only(left: (10.0),right:10),
                 child:
                  Column(children: [
                              SizedBox(
                       width: double.infinity,
              height: 150,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                 
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                  ),
                  itemCount: imageList.length,
                 itemBuilder: (context, index) {
  return SizedBox(
    height: 10,
    child: Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                  Radius.circular(15))
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
                Radius.circular(15)),
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: imageList[index],fit: BoxFit.cover,
            ),
          ),
    ),
  );
},
                ),
                    )
                  ],)
               ),
               ],
              ),
          
      ],
      
    ),
      
    );
  }
}
