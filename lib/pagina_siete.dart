import 'package:flutter/material.dart';

class PantallaSiete extends StatelessWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6c4a72), // Fondo morado
        title: const Text(
          'Ejemplo 6',
          style: TextStyle(
            color: Color(0xff000000), // Letra negra
            fontSize: 20.0,
          ),
        ),
        centerTitle: true, // Centra el título en el AppBar
      ),
      body: Column(
        children: [
          Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return listItems.where((String item) {
                return item.contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (String item) {
              print('The $item was selected');
            },
          ),
          const SizedBox(
            height: 20,
          ), // Añade un espacio entre los widgets
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
