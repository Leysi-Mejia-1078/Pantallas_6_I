import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6c4a72), // Fondo morado
        title: const Text(
          'Ejemplo 1',
          style: TextStyle(
            color: Color(0xff000000), // Letra negra
            fontSize: 20.0,
          ),
        ),
        centerTitle: true, // Centra el título en el AppBar
      ),
      body: Center(
        // Envuelve el Column en un Center para centrarlo horizontalmente
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra los elementos verticalmente
          crossAxisAlignment: CrossAxisAlignment
              .center, // Centra los elementos horizontalmente (dentro del Column)
          children: [
            ElevatedButton(
              child: const Text('Show Alert Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                    title: const Text('Flutter Mapp'),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('This is the Alert Dialog'),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla Inicial!'),
            ),
          ],
        ),
      ),
    );
  }
}
