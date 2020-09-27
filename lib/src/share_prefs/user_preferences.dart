
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences{

  static final UserPreferences _instance = new UserPreferences._();

  factory UserPreferences(){
    return _instance;
  }

  UserPreferences._();

  SharedPreferences _prefs;

  initPresf ()async{
    _prefs = await SharedPreferences.getInstance();
  }

  // bool _colorSecudario;
  // int _genero;
  // String _nombre;

  get gender{
    return _prefs.getInt('gender') ?? 1;
  }

  set gender(int value){
    _prefs.setInt('gender', value);
  }

  get color{
    return _prefs.getBool('color') ?? false;
  }

  set color(bool value){
    _prefs.setBool('color', value);
  }


  get name{
    return _prefs.getString('name') ?? false;
  }

  set name(String value){
    _prefs.setString('name', value);
  }

  get lastPage{
    return _prefs.getString('last') ?? '/';
  }

  set lastPage(String value){
    _prefs.setString('last', value);
  }


}