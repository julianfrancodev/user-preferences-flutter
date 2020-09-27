import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/menu-img.jpg'),
                  fit: BoxFit.cover),
            )),
        ListTile(
          leading: Icon(
            Icons.pages,
            color: Colors.blue,
          ),
          title: Text("Settings"),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.event,
            color: Colors.blue,
          ),
          title: Text("People"),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.cloud_queue,
            color: Colors.blue,
          ),
          title: Text("Cloud"),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/settings');
          },
        ),
      ],
    ));
  }
}
