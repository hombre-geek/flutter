import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  // Singleton Pattern

  static final UserPreferences _instance = new UserPreferences._internal();

  factory UserPreferences() {
    return _instance;
  }

  UserPreferences._internal();

  // 'late' significa que esta variable en este momento no tiene un valor pero lo tendrá.
  late SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // get & ser for 'genero'
  int get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  // get & ser for 'colorSecundario'
  bool get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  // get & ser for 'nombre'
  String get nombre {
    return _prefs.getString('nombre') ?? '';
  }

  set nombre(String value) {
    _prefs.setString('nombre', value);
  }

  // get & ser for 'Last Screen visited'
  String get lastScreen {
    return _prefs.getString('lastScreen') ?? 'home';
  }

  set lastScreen(String value) {
    _prefs.setString('lastScreen', value);
  }


//   bool? _colorSecundario;
//   int? _genero;
//   String? _nombre;
}
