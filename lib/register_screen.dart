import 'package:flutter/material.dart';
import 'package:todofrontend/login_screen.dart';
import 'package:todofrontend/widgets/customized_input.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Image.network(
                  'https://img.icons8.com/flat_round/2x/list.png',
                  height: size.height * 0.2,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                width: size.width * 0.8,
                child: Text(
                  'Crea tu cuenta',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Form(
                child: Column(
                  children: [
                    InputText(
                        placeHolder: 'Nombre de usuario', hideText: false),
                    SizedBox(height: 30.0),
                    InputText(placeHolder: 'Correo', hideText: false),
                    SizedBox(height: 30.0),
                    InputText(placeHolder: 'Contraseña', hideText: true),
                    SizedBox(height: 30.0),
                    CustomAccessButton(textButton: 'Registrarme')
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.15),
              Text('• O regístrate con •'),
              SizedBox(height: 20.0),
              Container(
                width: size.width * 0.18,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ]),
                child: RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  color: Colors.white,
                  child: Image.network(
                    'https://cdn4.iconfinder.com/data/icons/new-google-logo-2015/400/new-google-favicon-512.png',
                    height: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
