import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:hairstyle/views/styles/styles.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'my_slider.dart';

class HairStyles extends StatefulWidget {
  final List<String> imageList;
  final List<String> colorList;
  final List<String> ajustmentList;
  const HairStyles(
      {Key? key,
      required this.imageList,
      required this.colorList,
      required this.ajustmentList})
      : super(key: key);

  @override
  State<HairStyles> createState() => _HairStylesState();
}

class _HairStylesState extends State<HairStyles> {
  List<String> currentList=[
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/mainhair.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/ladyhair.png',
  'https://raw.githubusercontent.com/mazanaqvi/Images/main/mainhair.png',];
    String tabText = "Hair Styles";
    String sliderText = "Style 1";

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () => {
                                setState(() {
                                   tabText = "Hair Styles";
                                  sliderText="Style 1";
                                  currentList = widget.imageList;
                                })
                              },
                          icon: ImageIcon(
                            AssetImage("assets/hairStyle.png"),
                            color: mainColor,
                            size: 60,
                          )),
                      IconButton(
                          onPressed: () => {
                                setState(() {
                                  tabText = "Colors";
                                  sliderText="Blonde";
                                  currentList = widget.colorList;
                                })
                              },
                          icon: Icon(Icons.circle_outlined, color: thirdColor)),
                      IconButton(
                          onPressed: () => {
                                setState(() {
                                  sliderText = "Long";
                                  tabText = "Hair Adjustment";
                                  currentList = widget.ajustmentList;
                                })
                              },
                          icon: ImageIcon(
                            AssetImage("assets/sessior.png"),
                            color: thirdColor,
                            size: 60,
                          )),
                      IconButton(
                          onPressed: () => {},
                          icon: ImageIcon(
                            AssetImage("assets/settings.png"),
                            color: thirdColor,
                            size: 60,
                          )),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.arrow_left),
                    ),
                    Text(tabText, style: TextStyle(fontSize: 15)),
                    IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.arrow_right_sharp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: (10.0), right: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 5.0,
                          ),
                          itemCount: currentList.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  child: FadeInImage.memoryNetwork(
                                    placeholder: kTransparentImage,
                                    image: currentList[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )),
            ],
          ),
          MySlider( text: sliderText,),
        ],
      ),
    );
  }
}
