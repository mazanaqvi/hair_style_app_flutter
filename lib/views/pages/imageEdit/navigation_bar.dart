import 'package:flutter/material.dart';

import '../../styles/styles.dart';



class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: ImageIcon(
             
              const AssetImage("assets/left.png"),
              size:60,
              color: mainColor,),
            icon: ImageIcon(
              const AssetImage("assets/left.png"),
               size:60,
            ),
            label: '',
          ),
                  BottomNavigationBarItem(
            activeIcon: ImageIcon(
              const AssetImage("assets/photoIcon.png"),
              color: mainColor,
              size:60,
              ),
            icon: ImageIcon(
              const AssetImage("assets/photoIcon.png"),
              size:60,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: ImageIcon(
              const AssetImage("assets/tick.png"),
              color: mainColor,
              size:60,),
            icon: ImageIcon(
              const AssetImage("assets/tick.png"),
              size:60,
            ),
            label: '',
          ),
                  ],
        currentIndex: 0);
  }
}
