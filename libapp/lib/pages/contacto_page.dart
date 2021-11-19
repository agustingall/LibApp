import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/searchBar.dart';
import '../widgets/formulario.dart';

class ContactoPage extends StatelessWidget {
  ContactoPage({Key? key}) : super(key: key);

  final String title = "Contacto";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const Header(),
        const SearchBar(),
        Formulario(),
      ],
    ));
  }
}
