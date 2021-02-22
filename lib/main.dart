import 'package:flutter/material.dart';

import 'package:lista_compras/ui/ListScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Compras',
      home: new ListScreen(),
    );
  }
}
