import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


class BigImage extends StatelessWidget {
  const BigImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ Padding(
        padding: const EdgeInsets.only(left:10.0,right:10),
        child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
                Radius.circular(15))
        ),
        child: SizedBox(
          height: 250,
          width: 400,
          child: ClipRRect(
            
            borderRadius: BorderRadius.all(
                Radius.circular(15)),
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              
              image:  'https://raw.githubusercontent.com/mazanaqvi/Images/main/bigImage.png',fit: BoxFit.cover,
            ),
          ),
        ),
  )),

],
    );
  }
}
