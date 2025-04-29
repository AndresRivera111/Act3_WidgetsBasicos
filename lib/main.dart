import 'package:flutter/material.dart';
import 'package:rivera/pagina_siete.dart';
import 'package:rivera/pagina_seis.dart';
import 'package:rivera/pagina_cinco.dart';
import 'package:rivera/pagina_cuatro.dart';
import 'package:rivera/pagina_uno.dart';
import 'package:rivera/pagina_dos.dart';
import 'package:rivera/pagina_tres.dart';

void main() => runApp(MyRoutesApp());

class MyRoutesApp extends StatelessWidget {
  const MyRoutesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre paginas routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/Pantalla Dos': (context) => const PantallaDos(),
        '/Pantalla Tres': (context) => const PantallaTres(),
        '/Pantalla Cuatro': (context) => const PantallaCuatro(),
        '/Pantalla Cinco': (context) => const PantallaCinco(),
        '/Pantalla Seis': (context) => const PantallaSeis(),
        '/Pantalla Siete': (context) => const PantallaSiete(),
      },
    );
  }
}
