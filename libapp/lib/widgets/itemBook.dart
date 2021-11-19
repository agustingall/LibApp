// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ItemBook extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final double precio;
  final String urlImagen;
  final String nombreAutor;
  const ItemBook(
      {Key? key,
      required this.titulo,
      required this.descripcion,
      required this.precio,
      required this.urlImagen,
      required this.nombreAutor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(titulo,
          style: const TextStyle(
              height: 5, fontFamily: 'Quicksand', color: Color(0xff11324D))),
      SizedBox(
        width: 200,
        height: 250,
        child: Image(image: NetworkImage(urlImagen)),
      ),
      Text(nombreAutor,
          style: const TextStyle(
              height: 5, fontFamily: 'Quicksand', color: Color(0xff0F52BA))),
      Text(descripcion,
          style: const TextStyle(
              color: Color(0xff334257), fontFamily: 'NotoSans')),
      Text("\$ " + precio.toString(),
          style: const TextStyle(
              height: 2, color: Color(0xff064420), fontFamily: 'Roboto'))
    ]);
  }
}
