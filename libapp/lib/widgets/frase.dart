// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Frase extends StatelessWidget {
  const Frase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff032541),
        padding:
            const EdgeInsets.only(left: 35.0, right: 35.0, top: 35, bottom: 35),
        child: Column(
          children: const [
            Text(
                "Lorem ipsum dolor sit amet,consectetur adipiscing elit.Vestibulum interdum dapibus elit",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffD4CC8E),
                    fontFamily: 'Arvo')),
            Text("- Autor Autor",
                textAlign: TextAlign.right,
                style: TextStyle(
                    height: 3,
                    color: Color(0xff9A8ED4),
                    fontFamily: 'OpenSans'))
          ],
        ));
  }
}
