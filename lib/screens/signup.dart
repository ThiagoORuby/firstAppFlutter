// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple.shade400, Colors.purple.shade200])),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cadastrar',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Form(
                child: Column(children: [
                  TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          prefixIcon: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.white,
                          ),
                          labelText: 'Nome completo',
                          labelStyle: TextStyle(color: Colors.white)
                          //maxLength: 100,
                          )
                      //maxLength: 100,
                      ),
                  TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white)
                          //maxLength: 100,
                          )),
                  TextFormField(
                      obscureText: obscureText,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          prefixIcon: Icon(
                            Icons.key_outlined,
                            color: Colors.white,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscureText
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                          ),
                          labelText: 'Senha',
                          labelStyle: TextStyle(color: Colors.white)
                          //maxLength: 100,
                          )),
                  obscureText
                      ? TextFormField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              prefixIcon: Icon(
                                Icons.key_outlined,
                                color: Colors.white,
                              ),
                              labelText: 'Confirme a senha',
                              labelStyle: TextStyle(color: Colors.white)
                              //maxLength: 100,
                              ))
                      : Padding(padding: EdgeInsets.only(top: 10)),
                ]),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    //TODO: só por fins didáticos
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(color: Colors.purple.shade500),
                    ),
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 18),
                        primary: Colors.grey.shade300),
                  ))
            ],
          )),
        ));
  }
}
