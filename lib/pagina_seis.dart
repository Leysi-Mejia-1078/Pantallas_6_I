import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6c4a72), // Fondo morado
        title: const Text(
          'Ejemplo 5',
          style: TextStyle(
            color: Color(0xff000000), // Letra negra
            fontSize: 20.0,
          ),
        ),
        centerTitle: true, // Centra el título en el AppBar
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Text(
              '$_count',
              style: const TextStyle(fontSize: 40),
              key: ValueKey(_count),
            ),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
          ),
          ElevatedButton(
            child: const Text('Add'),
            onPressed: () {
              setState(() {
                _count += 1;
              });
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
    );
  }
}
