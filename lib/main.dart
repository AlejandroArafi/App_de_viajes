import 'package:flutter/material.dart';
import 'detalle_lugar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Turistica',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LugaresPage(),
    );
  }
}

class LugaresPage extends StatelessWidget {
  final List<Map<String, String>> lugares = const [
    {
      'name': 'Tokio',
      'image': 'tokio.webp',
      'descripcion':
          'Tokio, la capital de Japón, combina lo moderno y lo tradicional, desde los rascacielos iluminados por neón hasta los templos históricos. El opulento Santuario Meiji es un importante santuario sintoísta que es frecuentemente visitado por los turistas.'
    },
    {
      'name': 'Paris',
      'image': 'paris.jpg',
      'descripcion':
          'París, la capital de Francia, es una importante ciudad europea y un centro mundial del arte, la moda, la gastronomía y la cultura. Su paisaje urbano del siglo XIX está atravesado por amplios bulevares y el río Sena.'
    },
    {
      'name': 'Nueva York',
      'image': 'new_york.jpg',
      'descripcion':
          'Nueva York es la ciudad más poblada de los Estados Unidos y uno de los centros neurálgicos más importantes del mundo. Es conocida por sus rascacielos, como el Empire State y los enormes parques, como Central Park.'
    },
    {
      'name': 'Londres',
      'image': 'londres.jpg',
      'descripcion':
          'Londres, la capital de Inglaterra y del Reino Unido, es una ciudad del siglo XXI con una historia que se remonta a la época romana. En su centro se encuentran el imponente Parlamento, la torre del reloj "Big Ben" y la Abadía de Westminster, lugar de las coronaciones británicas.'
    },
    {
      'name': 'Roma',
      'image': 'roma.jpg',
      'descripcion':
          'Roma, la capital de Italia, es una extensa ciudad cosmopolita que tiene casi 3.000 años de arte, arquitectura y cultura influyentes en todo el mundo. Sus ruinas como las del Foro y el Coliseo evocan el poder del antiguo Imperio Romano.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guia de viajes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: lugares.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lugares[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleLugarPage(
                    lugares[index]['name']!,
                    lugares[index]['image']!,
                    lugares[index]['descripcion']!, // Pasa la descripción aquí
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
