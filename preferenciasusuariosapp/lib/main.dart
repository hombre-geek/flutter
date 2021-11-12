import 'package:flutter/material.dart';

import 'package:preferenciasusuariosapp/src/pages/home_page.dart';
import 'package:preferenciasusuariosapp/src/pages/settings_page.dart';
import 'package:preferenciasusuariosapp/src/shared_prefs/user_preferences.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // creo la instancia e inicializo las preferencias del usuario.
  final prefs = UserPreferences();
  await prefs.initPrefs();

  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  final prefs = new UserPreferences();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      debugShowCheckedModeBanner: false,
      // initialRoute: HomePage.routeName,
      initialRoute: prefs.lastScreen,

      routes:{ 
        HomePage.routeName : ( BuildContext context ) => HomePage(),
        SettingsPage.routeName : ( BuildContext context ) => SettingsPage(),

       },
     
    );
  }
}