import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ["uno", "dos", "tres", "Cuatro", "Cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItem() {
    List<Widget> lista = List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + "!"),
            subtitle: Text("Hola sub"),
            leading: Icon(Icons.add_comment),
            trailing: Icon(Icons.arrow_back_ios),
            onTap:(){ }
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
