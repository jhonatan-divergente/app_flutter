import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  print('Click');
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child:
                    Text('TextButton', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () {
                  print('Click');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    // side: BorderSide(color: Colors.red), //Descomentar esta línea si se quiere colocar un color al borde
                  )),
                ),
                child:
                    Text('Rounded Button', style: TextStyle(color: Colors.white)),
              ),
              FloatingActionButton(
                onPressed: () => print('Click!'),
                child: Icon(Icons.settings),
              ),
              ElevatedButton(
                onPressed: () => print('Click!'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                child: Text('ElevatedButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
