


import 'package:flutter/material.dart';

class HomePage  extends StatelessWidget{

  final estiloTxt = new TextStyle( fontSize: 25 );
  final conteo = 10;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título de mi App'),
        centerTitle: true,
        elevation: 7.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Número de Taps:', style: estiloTxt),
            Text('$conteo', style: estiloTxt),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,      
      floatingActionButton: FloatingActionButton(        
        child: Icon( Icons.add, size: 35, ),
        // onPressed: null <- al pasarle null desactiva el botón
        onPressed: (){
          print('¡Hola Mundo!'); 
          
        },
      ),
    );
  }

}