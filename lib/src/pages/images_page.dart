import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Imágenes'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Image(
                  image: NetworkImage('https://i.pinimg.com/originals/dd/7e/7a/dd7e7ab161696bad4732153fdb25a70c.jpg'),
                ),
                FadeInImage(
                  placeholder: AssetImage('assets/loading.gif'), //Con este widget lo que hace es cargar un gif antes de cargar la imagen
                  image: NetworkImage('https://i.pinimg.com/originals/dd/7e/7a/dd7e7ab161696bad4732153fdb25a70c.jpg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}