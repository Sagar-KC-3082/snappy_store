import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {

  var _sliderValue = 10.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: AppColors.primaryDarkBlue,
      inactiveColor: Colors.grey.withOpacity(0.5),
      min: 5,
      max: 20,
      value: _sliderValue,
      onChanged: (value){
        setState(() {
          _sliderValue = value;
        });
      },
    );
  }
}
