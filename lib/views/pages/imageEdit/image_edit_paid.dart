
import 'package:flutter/material.dart';
import 'package:hairstyle/views/pages/imageEdit/ads.dart';
import 'package:hairstyle/views/pages/imageEdit/big_image.dart';
import 'package:hairstyle/views/pages/imageEdit/icons_tray.dart';
import 'package:hairstyle/views/pages/imageEdit/tiltle_bar.dart';
import 'package:hairstyle/views/pages/imageEdit/my_slider.dart';
import 'hair_styles.dart';
import 'navigation_bar.dart';
class ImageEdit extends StatefulWidget {
  const ImageEdit({ Key? key }) : super(key: key);

  @override
  State<ImageEdit> createState() => _ImageEditState();
}

class _ImageEditState extends State<ImageEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
          child: Column(
            children: [
             
              ListView(
        children: [
               BigImage(),
              IconTray()
        ],
      ),
      
            ],
          )),
       bottomNavigationBar:const MyBottomBar()
    );

  }
}