import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedores'),
      ),
      body: Container(
        child: Center(
          child: Container(
            height: 200.0,
            width: 200.0,
            color: Colors.purpleAccent,
            child: Center(
              child: Text('Este es el texto del container', style: TextStyle(color: Colors.white),)
            ),
          ),
        ),
      ),
    );
  }
}
