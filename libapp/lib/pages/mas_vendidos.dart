import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/itemIconPage.dart';
import '../widgets/searchBar.dart';
import '../widgets/slider.dart';
import '../widgets/frase.dart';
import '../widgets/itemBookPage.dart';

class MasVendidos extends StatelessWidget {
  const MasVendidos({Key? key, required this.title}) : super(key: key);

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        Header(),
        SearchBar(),
        ItemBookPage(s: "Top Mas Vendidos"),
      ],
    ));
  }
}
