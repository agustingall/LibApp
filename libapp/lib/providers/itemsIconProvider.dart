// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import "package:flutter/services.dart" show rootBundle;
import 'dart:convert';

// ignore: unused_element
class _ItemIconProvider {
  List<dynamic> opciones = [];

  _ItemIconProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    opciones = dataMap['items'];

    return opciones;
  }
}
