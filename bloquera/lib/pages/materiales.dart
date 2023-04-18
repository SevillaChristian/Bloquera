import 'package:flutter/material.dart';

void main() => runApp(const Materiales());

class Materiales extends StatelessWidget {
  const Materiales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          icon: Icon(
              Icons.arrow_back_ios_new_rounded), //esta es la flecha estilo ios
        ),
      ),
    );
  }//fin del build
}//fin de la pagina 