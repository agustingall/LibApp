// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SliderComponent extends StatelessWidget {
  const SliderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 30),
      child: const Image(image: AssetImage('assets/images/imagen1.jpg')),
      width: 400,
      height: 150,
    );
  }
}
