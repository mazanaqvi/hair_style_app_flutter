import 'package:flutter/material.dart';
import 'package:hairstyle/views/pages/home/photo_gallery.dart';
import 'package:hairstyle/views/pages/home/tob_bar.dart';

import 'all_your_edits.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
          child: ListView(
        children: [Topbar(), PhotoGallery(), AllEdits()],
      )),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
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
      ], currentIndex: 1, selectedItemColor: Colors.greenAccent),
    );
  }
}
