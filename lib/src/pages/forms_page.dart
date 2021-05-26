import 'package:flutter/material.dart';

class FormsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formularios'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              _crearInput1(),
              SizedBox(height: 20),
              _crearInput2(),
              SizedBox(height: 20),
              _crearInput3(),

              ElevatedButton(
                onPressed: () {},
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearInput1() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        decoration:
            InputDecoration(labelText: 'Nombre Completo', hintText: 'Nombre'),
      ),
    );
  }

  Widget _crearInput3() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        obscureText: true,
        decoration:
            InputDecoration(labelText: 'Correo electrónico', hintText: 'Correo', icon: Icon(Icons.email)),
      ),
    );
  }

  Widget _crearInput2() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        obscureText: true,
        decoration:
            InputDecoration(labelText: 'Contraseña', hintText: 'Contraseña'),
      ),
    );
  }
}
