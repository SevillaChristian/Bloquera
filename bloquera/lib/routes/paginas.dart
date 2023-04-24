import 'package:flutter/material.dart';
import 'package:bloquera/routes/routes.dart';
import 'package:bloquera/pages/home.dart';

import 'package:bloquera/pages/gastos.dart';
import 'package:bloquera/pages/ventas.dart';
import 'package:bloquera/pages/inventario.dart';

abstract class Paginas {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home: (BuildContext context) => Home(),
    Routes.page1: (BuildContext context) => Inventario(),
    Routes.page2: (BuildContext context) => Ventas(),
    Routes.page3: (BuildContext context) => Gastos(),
    

  };
}