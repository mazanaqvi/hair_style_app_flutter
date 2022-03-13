import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HairColors extends StatelessWidget {
  const HairColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/pink.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/blonde.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/red.png',
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
