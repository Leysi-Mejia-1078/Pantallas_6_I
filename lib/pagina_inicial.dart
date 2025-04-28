import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3f1b93), // Fondo morado
        title: const Center(
          child: Text(
            'Pantalla Inicial',
            style: TextStyle(
              color: Color(0xffffffff), // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Center(
        // Envuelve el Column con Center para centrarlo horizontalmente
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra los elementos verticalmente
          crossAxisAlignment: CrossAxisAlignment
              .center, // Centra los elementos horizontalmente (dentro del Column)
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Ejemplo 1'),
            ),
            SizedBox(height: 15), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Ejemplo 2'),
            ),
            SizedBox(height: 15), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('Ejemplo 3'),
            ),
            SizedBox(height: 15), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('Ejemplo 4'),
            ),
            SizedBox(height: 15), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('Ejemplo 5'),
            ),
            SizedBox(height: 15), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              child: const Text('Ejemplo 6'),
            ),
          ],
        ),
      ),
    );
  }
}
