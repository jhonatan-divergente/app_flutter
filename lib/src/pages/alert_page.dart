import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => mostrarAlerta(context),
                );
              },
              child: Text('Mostrar alerta predeterminada', style: TextStyle(color: Colors.black45)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amberAccent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => mostrarAlerta2(context),
                );
              },
              child: Text('Mostrar alerta personalizada', style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Hola soy un snackbar para mostrar'),
                    ),
                  );
                },
              child: Text('Mostrar Snackbar'),
            ),
          ],
        ),
      ),
    );
  }


  Widget mostrarAlerta(BuildContext context) {

    return AlertDialog(
      title: Text('Hola'),
      content: Text('Soy una alerta'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Okay'),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
        ),
      ],
    );

  }

  Widget mostrarAlerta2(BuildContext context) {

    return AlertDialog(
      title: Text('Hola', style: TextStyle(color: Colors.white)),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.deepPurple,
      content: Text('Soy una alerta personalizada', style: TextStyle(color: Colors.white)),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Okay'),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
        ),
      ],
    );

  }




}
