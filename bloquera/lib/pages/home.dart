import 'package:flutter/material.dart';
import 'package:bloquera/routes/paginas.dart';
import 'package:bloquera/routes/routes.dart';
import 'package:bloquera/pages/home.dart';
import 'package:bloquera/pages/materiales.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Bloquera'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Bienvenido a  La Bloquera Cuevas',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Stock de Bloques:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
                    children: [

                      ListTile(
                        leading: Icon(Icons.add_box),
                      title: const Text('Bloque del 10 '),
                      subtitle: Text('Cantidad: 100'),
                      trailing: IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: () {
                      // Acción al presionar el botón de agregar bloques
                      },
                      ),
                      ),
                      

                    ],
                
                ),
            )
          ]
            ),
          
      
    
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Acción al presionar el botón de agregar un nuevo bloque
        },
      ),
    );
  }
}
class Bloque {
  final int id;
  final String nombre;
  int cantidad;

  Bloque({required this.id, required this.nombre, required this.cantidad});
}