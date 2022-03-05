import 'package:flutter/material.dart';
import 'package:hairstyle/views/pages/home/all_your_edits.dart';
import 'package:hairstyle/views/pages/home/home.dart';
import 'package:hairstyle/views/pages/home/photo_gallery.dart';
import 'package:hairstyle/views/pages/home/tob_bar.dart';
import 'package:hairstyle/views/pages/imageEdit/image_edit.dart';

void main() {
  runApp(HairApp());
}

class HairApp extends StatefulWidget {
  const HairApp({Key? key}) : super(key: key);

  @override
  _HairAppState createState() => _HairAppState();
}

class _HairAppState extends State<HairApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ImageEdit());
  }
}
