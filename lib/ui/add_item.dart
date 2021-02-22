import 'package:flutter/material.dart';

import 'package:lista_compras/models/item.dart';

class AddItem extends StatelessWidget {
  final itemC = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Adicionar Item'),
      content: TextField(
        autofocus: true,
        controller: itemC,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancelar'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        FlatButton(
          child: Text('Adicionar'),
          onPressed: () {
            final item = new Item(title: itemC.value.text);
            itemC.clear();

            Navigator.of(context).pop(item);
          },
        ),
      ],
    );
  }
}
