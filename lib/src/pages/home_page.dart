import 'package:flutter/material.dart';
import 'package:user_preferences/src/widgets/drawer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Preferences'),
          centerTitle: true,
        ),
        drawer: DrawerWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Color secundario'),
            Divider(),
            Text('Genero'),
            Divider(),
            Text('Nombre de usuario'),
            Divider(),
          ],
        ));
  }
}
