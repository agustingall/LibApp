// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 20),
        child: TextField(
            decoration: InputDecoration(
          hintText: 'Buscar Libro',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.bookmark_add_rounded),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        )));
  }
}
