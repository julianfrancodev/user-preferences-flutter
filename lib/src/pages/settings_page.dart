import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_preferences/src/widgets/drawer_widget.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool switchIndicator = false;
  int gender = 1;
  TextEditingController _textEditingController;
  String name = 'pepe';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadPrefs();
    _textEditingController = new TextEditingController(text: name);
  }

  loadPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      gender = prefs.getInt('gender');
    });
  }

  _selectedRadio(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setInt('gender', value);
    setState(() {
      this.gender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          centerTitle: true,
        ),
        drawer: DrawerWidget(),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            SwitchListTile(
                value: switchIndicator,
                title: Text('Color Secundario'),
                onChanged: (value) {
                  setState(() {
                    this.switchIndicator = value;
                  });
                }),
            RadioListTile(
              value: 1,
              title: Text('Masculino'),
              onChanged: _selectedRadio,
              groupValue: this.gender,
            ),
            RadioListTile(
              value: 2,
              title: Text('Femenino'),
              onChanged: _selectedRadio,
              groupValue: this.gender,
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _textEditingController,
                decoration:
                    InputDecoration(labelText: 'Name', helperText: 'Name'),
                onChanged: (value) {},
              ),
            ),
          ],
        ));
  }
}
