import 'package:mysql1/mysql1.dart';
import 'model.dart';

class conection {
  MySqlConnection? conn;

  Future conect() async {
    var s = ConnectionSettings(
      user: "agustin", // todo: nombre de usuario
      password: "1hIzAFP*K.c*I)q5", // todo: contraseña
      host: "192.168.1.41", // todo: la ip local de la computadora en flutter
      port: 3306, // todo: puerto
      db: "libapp", // todo: la base de datos a conectar
    );
    conn = await MySqlConnection.connect(s);
    print("Conectado Exitosamente");
  }

  Future findAll() async {
    Results? j = await query();

    if (j != null) {
      List l = [];

      j.toList().forEach((e) {
        String titulo = e[0];
        String descripcion = e[1].toString();
        int cantPag = e[2];
        double precio = e[3];
        String nombreAutor = e[4] + " " + e[5];
        String urlImagen = e[6].toString();
        l.add(Libro(
            titulo: titulo,
            descripcion: descripcion,
            cantPag: cantPag,
            precio: precio,
            nombreAutor: nombreAutor,
            urlImagen: urlImagen));
      });

      return l;
    }
    return null;
  }

  Future<Results?> query() async {
    if (conn != null) {
      return (await conn!.query(
          'select titulo, descripcion, cant_pag, precio, nom_aut, apell_autor, urlImagen from libro natural join autor'));
    } else
      return null;
  }
}
