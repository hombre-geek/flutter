import 'package:flutter/material.dart';
import 'package:products_app/ui/input_decorations.dart';
import 'package:products_app/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgorund(
        child: SingleChildScrollView(
          child: Column(
            children:  [

              SizedBox( height: 250),

              CardContainer(

                child: Column(
                    children: [
                      SizedBox( height: 10, ),
                      Text( 'Login', style: Theme.of(context).textTheme.headline4 ),
                      SizedBox( height: 30, ),
                      
                      _LoginForm()
                    ],
                )
                
              ),

              SizedBox( height: 50 ),
              Text( 'Crear una Cuenta', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) )
            
            ],
          ) 
        ),
      )

    );
  }
}

class _LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [

            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'jhon.doe@tucorreo.com',
                labelText: 'Correo Electrónico',
                prefixIcon: Icons.alternate_email_sharp
              ),
            ),

            SizedBox( height: 30),

            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                 hintText: '*****',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_open
              ),
            ),

            SizedBox( height: 30),

            MaterialButton(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10) ),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                padding: EdgeInsets.symmetric( horizontal: 80, vertical: 15 ),
                child: Text(
                  'Ingresar',
                  style: TextStyle( color: Colors.white )),
              ),
              onPressed: (){}
            )

            

          ],
        ) ,
      )
    );
  }
}