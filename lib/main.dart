import 'package:flutter/material.dart';
import 'package:user_preferences/src/routes/routes.dart';
import 'package:user_preferences/src/share_prefs/user_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = UserPreferences();
  await prefs.initPresf();
  runApp(
      MaterialApp(
        title: 'User Preferences',
        initialRoute: prefs.lastPage,
        routes: routes  ,
      )
  );
}