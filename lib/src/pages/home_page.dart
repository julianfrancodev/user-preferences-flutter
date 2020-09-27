import 'package:flutter/material.dart';
import 'package:user_preferences/src/share_prefs/user_preferences.dart';
import 'package:user_preferences/src/widgets/drawer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final prefs = UserPreferences();

  @override
  Widget build(BuildContext context) {

    prefs.lastPage = '/';

    return Scaffold(
        appBar: AppBar(
          title: Text('User Preferences'),
          centerTitle: true,
          backgroundColor: (prefs.color) ? Colors.deepPurple : Colors.blue ,
        ),
        drawer: DrawerWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Color secundario ${prefs.color}'),
            Divider(),
            Text('Genero ${prefs.gender}'),
            Divider(),
            Text('Nombre de usuario ${prefs.name}'),
            Divider(),
          ],
        ));
  }
}
