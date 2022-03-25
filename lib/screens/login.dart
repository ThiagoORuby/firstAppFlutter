// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app1/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool continueConnected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.purple.shade300]),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // aprender mais sobre
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, // aprender mais sobre
              children: [
                Image.asset(
                  'images/logo_gymapp.png',
                  height: 150,
                ),
                Text('Entrar',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        labelText: 'Username',
                      ),
                      //maxLength: 100,
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key_outlined),
                        labelText: 'Password',
                      ),
                      //maxLength: 100,
                    ),
                  ],
                )),
                Padding(padding: EdgeInsets.only(top: 7)),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Esqueceu a senha?',
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: continueConnected,
                        activeColor: Colors.purple.shade500,
                        onChanged: (bool? newValue) {
                          setState(() {
                            continueConnected = newValue!;
                          });
                        }),
                    Text('Continuar conectado?')
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 18),
                      primary: Colors.purple.shade500),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(129, 255, 255, 255),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  'Ainda não tem uma conta?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpScreen();
                        }));
                      },
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(color: Colors.purple.shade500),
                      ),
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize: 18),
                          primary: Colors.grey.shade300),
                    )),
              ],
            ),
          )),
    );
  }
}
