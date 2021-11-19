class Libro {
  final String titulo;
  final String descripcion;
  final int cantPag;
  final double precio;
  final String nombreAutor;
  final String urlImagen;

  Libro(
      {required this.titulo,
      required this.descripcion,
      required this.cantPag,
      required this.precio,
      required this.nombreAutor,
      required this.urlImagen});

  Map<String, dynamic> toMap() {
    return {
      'titulo': titulo,
      'descripcion': descripcion,
      'cantPag': cantPag,
      'precio': precio,
      'nombreAutor': nombreAutor,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Titulo : " + titulo + "\nnombre del Autor: " + nombreAutor;
  }
}
