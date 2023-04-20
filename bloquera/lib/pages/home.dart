import 'package:bloquera/pages/login.dart';
import 'package:bloquera/routes/paginas.dart';
import 'package:bloquera/routes/routes.dart';
import 'package:bloquera/pages/home.dart';
import 'package:bloquera/pages/materiales.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi App'),
      ),
      drawer: Drawer(
        child: ListView(
          
          children: [
            
            ListTile(
            leading: Icon(Icons.block),
            title: Text('hola'),
            onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Materiales()));
                    }, //el ontap es para que al pulsar se valla
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Bienvenido a mi App'),
      ),
    );
  }
}


//ABAJO DA ERROR EN NO SE QUE COSA

/*
void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   return SafeArea(
    child: Scaffold(
      drawer: Drawer(
        child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'Menú',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Inicio'),
        onTap: () {
          // Acción al presionar el elemento del menú
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Configuración'),
        onTap: () {
          // Acción al presionar el elemento del menú
        },
      ),
    ]
    ),
      ),
    ),
   );
  }

}
*/
