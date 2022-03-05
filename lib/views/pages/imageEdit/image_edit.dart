
import 'package:flutter/material.dart';
import 'package:hairstyle/views/pages/imageEdit/ads.dart';
import 'package:hairstyle/views/pages/imageEdit/big_image.dart';
import 'package:hairstyle/views/pages/imageEdit/bottom_bar.dart';
import 'package:hairstyle/views/pages/imageEdit/icons_tray.dart';
import 'package:hairstyle/views/pages/imageEdit/image_edit_top_bar.dart';

import '../home/all_your_edits.dart';
import '../home/photo_gallery.dart';
import 'hair_styles.dart';


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
          child: ListView(
        children: [
          EditPageTopBar(), BigImage(),
          IconTray(),HairStyles(),Ads(),BottomBar()
        ],
      )),
      
    );

  }
}