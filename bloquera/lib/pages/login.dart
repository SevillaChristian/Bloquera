import 'package:bloquera/pages/home.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido()
        ],//children
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});
  @override
  State<Contenido> createState() => _ContenidoState();
}
class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Bienvenido',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        'Bloquera Cuevas',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 1.5,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Datos(),
    ],//children
    ),
    );
  }
}
class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade100,
            Colors.blue.shade200,
            Colors.blue,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
    );
  }
}
class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Correo',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'email@email.com',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Contraseña',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'password',
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye_outlined),
                onPressed: () {
                  setState(() {
                    obs == true ? obs = false : obs = true;
                  });
                },
                ),
            ),
          ),
          Remember(),
          SizedBox(
            height: 30,
          ),
          Botones(),

        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
    );
  }
}
class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool valor = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: valor,
          onChanged: (value) {
            setState(() {
              valor == false ? valor = true : valor = false;
            });
          },
          ),
        Text('Recuerdame'),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text('Olvidaste la clave?'),
        ),
      ],
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            //apartir de aqui inicia la funcion del boton login 
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home())
              );
              
            //aqui acaba la funcion del boton login
            },
            child: Text(
              'login',
              style: TextStyle(
                color: Colors.white
              ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xff142047)),
              ),
          ),
        ),
        SizedBox(
          height: 25,
          width: double.infinity,
        ),
        /*
        Text(
          'O entra con: ',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 25,
          width: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              'Sing With Google',
              style: TextStyle(
                color: Color(0xff142047),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(),
        Container(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Sign with Facebook',
            style: TextStyle(
              color: Color(0xff142047),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
          ),
        ), */
      ],
    );
  }
}
/*
Remember
*/

