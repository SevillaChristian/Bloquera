import 'package:flutter/material.dart';
import 'package:bloquera/routes/routes.dart';
import 'package:bloquera/pages/home.dart';

abstract class Paginas {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home: (BuildContext context) => Home(),
  
  };
}