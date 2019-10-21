import 'package:components/src/Pages/alert_page.dart';
import 'package:components/src/utils/icon_string_utils.dart';
import 'package:flutter/material.dart';
import 'package:components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compoenentes"),
      ),
      body: _list(),
    );
  }

  Widget _list() {
//
    return FutureBuilder(
      future: menuProvider.cargarData(),
      //initialData:[],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);
        
        return ListView(
          children: _listaItems(snapshot.data,context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data,BuildContext context) {
    final List<Widget> opciones =[];
    data.forEach((opt){
      final widgetTemp=ListTile(
        title: Text(opt['texto']),
        leading:getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
        onTap:(){
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgetTemp)
      ..add(Divider());
    });
    return opciones;
  }
}
