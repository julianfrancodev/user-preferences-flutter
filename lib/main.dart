import 'package:flutter/material.dart';
import 'package:user_preferences/src/routes/routes.dart';

void main() {
  runApp(
      MaterialApp(
        title: 'User Preferences',
        initialRoute: '/',
        routes: routes,
      )
  );
}