import 'package:flutter/material.dart';
import 'package:mejiarutas/pagina_inicial.dart';
import 'package:mejiarutas/pagina_dos.dart';
import 'package:mejiarutas/pagina_tres.dart';

void main() => runApp(MisRutas());

class MisRutas extends StatelessWidget {
  const MisRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),

        '/pantalla3': (context) => const PantallaTres(),
      },
    );
  }
}
