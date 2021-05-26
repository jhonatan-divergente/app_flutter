import 'package:flutter/material.dart';

class CirclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _crearContacto(context),
              _crearContacto(context),
              _crearContacto(context),
              _crearContacto(context),
              _crearContacto(context),
              _crearContacto(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearContacto(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 70,
          child: CircleAvatar(
            child: Text('JV', style: TextStyle(fontSize: 30)),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text('321 694 6571', style: Theme.of(context).textTheme.subtitle1),
              SizedBox(height: 5),
              Text('Jhonatan Vanegas', style: Theme.of(context).textTheme.subtitle2)
            ],
          ),
        ),
      ],
    );
  }
}
