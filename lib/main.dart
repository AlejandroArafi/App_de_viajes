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
    {'name': 'Tokio', 'image': 'tokio.webp'},
    {'name': 'Paris', 'image': 'paris.jpg'},
    {'name': 'Nueva York', 'image': 'new_york.jpg'},
    {'name': 'Londres', 'image': 'londres.jpg'},
    {'name': 'Roma', 'image': 'roma.jpg'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lugares Turisticos'),
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
                      lugares[index]['name']!, lugares[index]['image']!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
