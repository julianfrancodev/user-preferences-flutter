import 'package:flutter/material.dart';
import 'package:user_preferences/src/pages/home_page.dart';
import 'package:user_preferences/src/pages/settings_page.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => HomePage(),
  '/settings': (context) => SettingsPage(),
};
