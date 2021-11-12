import 'package:flutter/material.dart';
import 'package:preferenciasusuariosapp/src/shared_prefs/user_preferences.dart';

import 'package:preferenciasusuariosapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
 

  // definición del nombre de la página con una variable estática
  static final String routeName = 'home';
  final prefs = new UserPreferences();


  @override
  Widget build(BuildContext context) {

    prefs.lastScreen = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencia del Usuario'),
        backgroundColor:  ( prefs.colorSecundario ) ? Colors.teal : Colors.blue,
      ),
      // drawer: _createMenu( context ),
      drawer: MenuWidget(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Nombre Usuario: ${ prefs.nombre } '),
          Divider(),
          Text('Género: ${ (prefs.genero == 1) ? 'Masculino' : 'Femenino' } '),
          Divider(),
          Text('Color secundario: ${ (prefs.colorSecundario) ? 'Activado' : 'Desactivado' }'),
          Divider()
        ],
      ),
    );
  }

  // Drawer _createMenu( BuildContext context ) {
  //   return Drawer(
  //       child: ListView(
  //         padding:EdgeInsets.zero,
  //         children: [
  //           DrawerHeader(
  //             child: Container(),
  //             decoration: BoxDecoration(
  //                 image: DecorationImage(
  //                     image: AssetImage('assets/menu-img.jpg'),
  //                     fit: BoxFit.cover)
  //             ),
  //           ),

  //           ListTile(
  //             leading: Icon( Icons.pages, color: Colors.blue, ),
  //             title: Text('Home'),
  //             onTap: ()=> Navigator.pushReplacementNamed(context, HomePage.routeName),
  //           ),

  //           ListTile(
  //             leading: Icon( Icons.party_mode, color: Colors.blue, ),
  //             title: Text('Party Mode'),
  //             onTap: ()=> Navigator.pushReplacementNamed(context, HomePage.routeName),
  //           ),

  //             ListTile(
  //             leading: Icon( Icons.people, color: Colors.blue, ),
  //             title: Text('People'),
  //             onTap: (){},
  //           ),

  //             ListTile(
  //             leading: Icon( Icons.settings, color: Colors.blue, ),
  //             title: Text('Settings'),                  
  //             onTap: () => Navigator.pushReplacementNamed(context, SettingsPage.routeName),
  //                 // Navigator.pop(context);
  //                 // Navigator.pushNamed(context, SettingsPage.routeName);

  //           ),

  //         ],
  //   )
  //   );
  // }



}
