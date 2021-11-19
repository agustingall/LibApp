// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ItemIconPage extends StatelessWidget {
  final IconData i;
  final String texto;
  const ItemIconPage({Key? key, required this.i, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(i, size: 75),
            Container(
                padding: const EdgeInsets.only(left: 13.0),
                child: Flexible(
                    child: Text(
                  texto,
                  style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      color: Color(0xff552003)),
                ))),
          ],
        ));
  }
}
