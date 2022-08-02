import 'package:flutter/material.dart';
import 'package:day7/ColorSlider.dart';

class ColorSliderWithParams extends StatelessWidget {
  const ColorSliderWithParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
    ModalRoute.of(context)!.settings.arguments as
    MaterialAccentColor;

    return ColorSlider(color: data);
  }

}