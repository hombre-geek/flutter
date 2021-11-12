import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();

  // createState(){
  //   return new _ContadorPageState();
  // }

}

class _ContadorPageState extends State {
  final _estiloTxt = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefullWidget'),
        centerTitle: true,
        elevation: 7.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Taps:', style: _estiloTxt),
            Text('$_conteo', style: _estiloTxt),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _createBtns(),
    );
  }

  Widget _createBtns() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, 
    children: [
      SizedBox( width: 30, ),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset ),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _minus ),
      SizedBox( width: 5.0 ),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
    ]);
  }

  void _add() { setState(() =>  _conteo++ ); }

  void _minus() { setState( () => _conteo-- ); }

  void _reset() { setState(() => _conteo = 0 ); }

}
