import 'package:flutter/material.dart';
import 'package:preferenciasusuariosapp/src/shared_prefs/user_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:preferenciasusuariosapp/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  // definición del nombre de la página con una variable estática
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  late bool _colorSecundario;
  late int _genero;
  // late String _nombre;

  late TextEditingController _textController;

  final prefs = new UserPreferences();

  @override
  void initState() {
    super.initState();

    prefs.lastScreen = SettingsPage.routeName;
    _genero = prefs.genero;
    _colorSecundario = prefs.colorSecundario;
    // _nombre = prefs.nombre;
    // loadPrefs();
    _textController = TextEditingController(text: prefs.nombre);
  }

  // loadPrefs() async {

  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   _genero = prefs.getInt('genero') ?? 1;
  //   setState(() {});

  // }

  // _setSelectedRadio(int? value) async {
  _setSelectedRadio(int? value) async {
    //SharedPreferences prefs = await SharedPreferences.getInstance();
   // prefs.setInt('genero', value as int);
     prefs.genero = value as int;
    _genero = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
        backgroundColor:  ( prefs.colorSecundario ) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold)),
          ),
          Divider(),
          SwitchListTile(
              value: _colorSecundario,
              title: Text('Color Secundario'),
              onChanged: (value) {
                setState(() {
                  prefs.colorSecundario = value;
                  _colorSecundario = value;
                });
              }),
          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
          ),
          RadioListTile(
              value: 2,
              title: Text('Femenino'),
              groupValue: _genero,
              onChanged: _setSelectedRadio),
          Divider(),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona usando el celular'),
                onChanged: (value) {
                  prefs.nombre = value;
                },
              )
          ),
        ],
      ),
    );
  }
}
