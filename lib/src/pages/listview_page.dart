import 'dart:math';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  ScrollController _scroll = new ScrollController();
  List<int> listaNumeros = [];

  @override
  void initState() {
    super.initState();
    agregarNumerosRandom();
    _scroll.addListener(() {
      if(_scroll.position.pixels == _scroll.position.maxScrollExtent) {
        agregarNumerosRandom();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scroll.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.builder(

        controller: _scroll,

        itemBuilder: (context, i) {
          return Center(
            child: Text(listaNumeros[i].toString(),
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          );
        },
        itemCount: listaNumeros.length,
      ),
    );
  }

  void agregarNumerosRandom() {
    var rng = new Random();

    for (var i = 0; i < 40; i++) {
      listaNumeros.add(rng.nextInt(100));
      setState(() {});
    }
  }
}
