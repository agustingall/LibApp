import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/contacto_page.dart';
import '../pages/mas_vendidos.dart';
import '../pages/novedades.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 35),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Logo(),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key, c = const Color(0xff552003)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(children: const [
        Icon(Icons.book_outlined, size: 60, color: Color(0xff552003)),
        Text("LibApp",
            style: TextStyle(color: Color(0xff552003), fontFamily: 'Roboto'))
      ]),
      Container(
          padding: const EdgeInsets.only(top: 15),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff552003)),
              ),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Icon(Icons.bookmark_outline_outlined, size: 75),
                  Text(
                    "Inicio",
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        color: Color(0xff552003)),
                    textAlign: TextAlign.right,
                  ),
                ],
              ))),
      Container(
          padding: const EdgeInsets.only(top: 15),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff552003)),
              ),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MasVendidos(
                              title: 'Mas vendidos',
                            )),
                  ),
              child: Row(
                children: const [
                  Icon(Icons.bookmark_outline_outlined, size: 75),
                  Text(
                    "Catalogo",
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        color: Color(0xff552003)),
                    textAlign: TextAlign.right,
                  ),
                ],
              ))),
      Container(
        padding: const EdgeInsets.only(top: 15),
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xff552003)),
            ),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactoPage()),
                ),
            child: Row(
              children: const [
                Icon(Icons.bookmark_outline_outlined, size: 75),
                Text(
                  "Contacto",
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      color: Color(0xff552003)),
                  textAlign: TextAlign.right,
                ),
              ],
            )),
      )
    ]);
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            onPressed: nada,
            padding: EdgeInsets.zero,
            iconSize: 50,
          )
        ]);
  }
}

void nada() {
  // ignore: avoid_print
  print("nada");
}
