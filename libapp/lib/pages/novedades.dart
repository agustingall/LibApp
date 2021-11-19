import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/itemIconPage.dart';
import '../widgets/searchBar.dart';
import '../widgets/slider.dart';
import '../widgets/frase.dart';
import '../widgets/itemBookPage.dart';

class NovedadesPage extends StatelessWidget {
  const NovedadesPage({Key? key}) : super(key: key);

  final String title = "Novedades";

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        Header(),
        SearchBar(),
        ItemBookPage(s: "Novedades"),
      ],
    ));
  }
}
