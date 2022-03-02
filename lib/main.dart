import 'package:flutter/material.dart';
import 'package:hairstyle/views/pages/home/all_your_edits.dart';
import 'package:hairstyle/views/pages/home/photo_gallery.dart';
import 'package:hairstyle/views/pages/home/tob_bar.dart';

void main() {
  runApp(HairApp());
}

class HairApp extends StatefulWidget {
  const HairApp({ Key? key }) : super(key: key);

  @override
  _HairAppState createState() => _HairAppState();
}

class _HairAppState extends State<HairApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        body: SafeArea(child: ListView(
          children: [
             Topbar(),
             PhotoGallery(),
             AllEdits()
          ],
        )),
    
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.greenAccent
      ),
      ),
    );
  }
}