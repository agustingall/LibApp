// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:libapp/Model/database.dart';
import 'package:libapp/Model/model.dart';
import 'itemBook.dart';

class ItemBookPage extends StatelessWidget {
  final String s;
  const ItemBookPage({
    this.s = "Recomendaciones para ti",
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List l = [];
    findAllLibros().then((value) => l = value).whenComplete(() {
      print(l);
    });
    //print("auxiliar");
    // print(auxiliar());
    return Container(
        margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 30),
        child: Column(children: [
          Text(s, style: const TextStyle(color: Color(0xff032541)))
        ]));
  }

  auxiliar() {
    findAllLibros().then((value) {
      return value;
    });
  }

  Future<List> findAllLibros() async {
    conection a = conection();
    await a.conect();
    List l = await a.findAll();
    l = l.map((e) => objectToItemBook(e)).toList();
    // l.insert(0, Text(s, style: const TextStyle(color: Color(0xff032541))));
    return l;
  }

  objectToItemBook(Libro libro) {
    return ItemBook(
        titulo: libro.titulo,
        descripcion: libro.descripcion,
        precio: libro.precio,
        urlImagen: libro.urlImagen,
        nombreAutor: libro.nombreAutor);
  }
}
