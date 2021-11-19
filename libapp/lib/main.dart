import 'package:flutter/material.dart';
import 'widgets/formulario.dart';
import 'widgets/header.dart';
import 'widgets/itemIconPage.dart';
import 'widgets/searchBar.dart';
import 'widgets/slider.dart';
import 'widgets/frase.dart';
import 'widgets/itemBookPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LibApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'LibApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: const [
            Header(),
            SearchBar(),
            SliderComponent(),
            Frase(),
            ItemBookPage(),
            /* ItemIconPage(i: Icons.car_rental, texto: 'Envio a todo el pais'),
            ItemIconPage(
                i: Icons.departure_board_outlined, texto: 'Envios en 24hs'),
            ItemIconPage(i: Icons.credit_card, texto: 'Pagá con tus tarjetas'),
            ItemIconPage(
                i: Icons.check_circle_outline_rounded,
                texto: 'Compra Protegida'), */
          ],
        ));
  }
}
