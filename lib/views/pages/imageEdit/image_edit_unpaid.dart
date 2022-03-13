import 'package:flutter/material.dart';
import 'package:hairstyle/views/pages/imageEdit/ads.dart';
import 'package:hairstyle/views/pages/imageEdit/big_image.dart';
import 'package:hairstyle/views/pages/imageEdit/bottom_bar.dart';
import 'package:hairstyle/views/pages/imageEdit/icons_tray.dart';
import 'package:hairstyle/views/pages/imageEdit/tiltle_bar.dart';
import 'package:hairstyle/views/pages/imageEdit/my_slider.dart';
import 'package:hairstyle/views/styles/styles.dart';

import '../home/all_your_edits.dart';
import '../home/photo_gallery.dart';
import 'hair_styles.dart';
import 'navigation_bar.dart';

class ImageEdit extends StatefulWidget {
  const ImageEdit({Key? key}) : super(key: key);

  get styleList => null;

  @override
  State<ImageEdit> createState() => _ImageEditState();
}

class _ImageEditState extends State<ImageEdit> {
     List<String> colorList = [
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/pink.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/blonde.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/red.png',
];
   List<String> adjustmentList = [
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/long.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/short.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/bald.png',
];
  @override
  Widget build(BuildContext context) {
    List<String> styleList = [
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/mainhair.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/ladyhair.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/mainhair.png',
];
    return Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        appBar: AppBar(
          backgroundColor: Color(0xffF9F9F9),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
                child: IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.black,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/mazanaqvi/Images/main/myhair360-01.png'),
                radius: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
                child: IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.more_vert),
                  color: Colors.black,
                ),
              ),

              // Your widgets here
            ],
          ),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            TitleBar(),
            BigImage(),
            
            HairStyles( imageList:styleList,colorList: colorList,ajustmentList: adjustmentList,),
            
            Ads()
          ],
        )),
        bottomNavigationBar: const MyBottomBar());
  }
}
