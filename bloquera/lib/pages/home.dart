import 'package:bloquera/pages/gastos.dart';
import 'package:bloquera/pages/login.dart';
import 'package:bloquera/pages/ventas.dart';
import 'package:bloquera/routes/paginas.dart';
import 'package:bloquera/routes/routes.dart';
import 'package:bloquera/pages/home.dart';
import 'package:bloquera/pages/inventario.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Bienvenido !!'),
        
      ),
      drawer: Drawer(//AQUI INICIA EL MENU DE HAMBURGUESA
        child: ListView(
          
          children: [
            
            ListTile(
            leading: Icon(Icons.storage),
            title: Text('Inventario'),
            onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Inventario()));
                    }, //el ontap es para que al pulsar se valla
            ),

            ListTile(
            leading: Icon(Icons.sell),
            title: Text('Ventas'),
            onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ventas()));
                    }, //el ontap es para que al pulsar se valla
            ),

            ListTile(
            leading: Icon(Icons.wallet),
            title: Text('Gastos'),
            onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gastos()));
                    }, //el ontap es para que al pulsar se valla
            ),

            
          ],
        ),
      ),//AQUI TERMINA EL MENU DE HAMBURGUESA

      body: const Center(
        child: Text('Bienvenido CUEVOSO'),
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
