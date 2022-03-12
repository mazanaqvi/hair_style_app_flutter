import 'package:flutter/material.dart';
import 'package:hairstyle/views/pages/imageEdit/image_edit_unpaid.dart';

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
