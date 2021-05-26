import 'package:flutter/material.dart';
import 'package:app_flutter/src/pages/home_page.dart';
import 'package:app_flutter/src/pages/botones_page.dart';
import 'package:app_flutter/src/pages/container_page.dart';
import 'package:app_flutter/src/pages/stack_page.dart';
import 'package:app_flutter/src/pages/images_page.dart';
import 'package:app_flutter/src/pages/cards_page.dart';
import 'package:app_flutter/src/pages/circle_page.dart';
import 'package:app_flutter/src/pages/alert_page.dart';
import 'package:app_flutter/src/pages/forms_page.dart';
import 'package:app_flutter/src/pages/listview_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'botones': (BuildContext context) => ButtonPage(),
        'contenedores': (BuildContext context) => ContainerPage(),
        'stack': (BuildContext context) => StackPage(),
        'imagenes': (BuildContext context) => ImagesPage(),
        'cards': (BuildContext context) => CardsPage(),
        'circle': (BuildContext context) => CirclePage(),
        'alert': (BuildContext context) => AlertPage(),
        'forms': (BuildContext context) => FormsPage(),
        'listview': (BuildContext context) => ListViewPage(),
      },
    );
  }
}