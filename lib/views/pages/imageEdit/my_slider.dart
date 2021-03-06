import 'package:flutter/material.dart';
import 'package:hairstyle/views/styles/styles.dart';

class MySlider extends StatefulWidget {
  final String text;
  const MySlider({Key? key,
  required this.text
  }) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 10, 10, 10),
      child: Row(
        children: [
          Text(widget.text),
          Expanded(
            child: Slider(
                value: _value.toDouble(),
                min: 1.0,
                max: 100.0,
                divisions: 100,
                activeColor: mainColor,
                inactiveColor: secondColor,
                label: 'Set slider value',
                onChanged: (double newValue) {
                  setState(() {
                    _value = newValue.round();
                  });
                }),
          ),
          Text(_value.toString()),
        ],
      ),
    );
  }
}
