import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final nombre = TextEditingController();
  final apellido = TextEditingController();
  final telefono = TextEditingController();
  final nroRegistro = TextEditingController();

  Formulario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xffffffff),
        padding:
            const EdgeInsets.only(left: 35.0, right: 35.0, top: 35, bottom: 35),
        child: Column(children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _input("Nombre", nombre),
                _input("Apellido", apellido),
                _input("email", email),
                _input("Telefono", telefono),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffffffff)),
                      foregroundColor:
                          MaterialStateProperty.all(const Color(0x00000000)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 80.0)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Mensaje Enviado')),
                        );
                      }
                    },
                    child: const Text('Enviar',
                        style: TextStyle(color: Color(0xff345b63))),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

TextFormField _input(String text, TextEditingController controlador) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor, llena el campo';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: text,
    ),
    controller: controlador,
  );
}
