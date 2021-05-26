import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Inicio'),
        ),
        body: ListView(
          children: [
            _crearItem(context, Icons.select_all, 'Botones', 'botones'),
            Divider(indent: 20,endIndent: 20,),
            _crearItem(context, Icons.calendar_view_day, 'Contenedor', 'contenedores'),
            Divider(indent: 20,endIndent: 20,),
            _crearItem(context, Icons.call_to_action, 'Stack', 'stack'),
            Divider(indent: 20,endIndent: 20,),
            _crearItem(context, Icons.image, 'Imágenes', 'imagenes'),
            Divider(indent: 20,endIndent: 20,),
            _crearItem(context, Icons.library_books, 'Cards', 'cards'),
            Divider(indent: 20,endIndent: 20,),
            _crearItem(context, Icons.account_circle, 'Circle Avatar', 'circle'),
            Divider(indent: 20,endIndent: 20,),
            _crearItem(context, Icons.add_alert, 'Alertas', 'alert'),
            Divider(indent: 20,endIndent: 20,),
            _crearItem(context, Icons.format_align_center, 'Formularios', 'forms'),
            Divider(indent: 20,endIndent: 20,),
            _crearItem(context, Icons.list, 'List View', 'listview'),
          ],
        ),
      ),
    );
  }

  _crearItem(BuildContext context, IconData icon, String name, String link) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, link),
      leading: Icon(icon),
      title: Text(name),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }
}
