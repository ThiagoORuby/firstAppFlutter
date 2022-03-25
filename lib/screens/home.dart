import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gym app'),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Container(
            child: Text(
          'Hello, world: ${i.toString()}',
          style: TextStyle(color: Colors.blue, fontSize: 36),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            i--;
          });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}


// Widgets aprendidos 
// Container -> Tipo uma div, local para guardar outros widgets 
// Text -> como um label
// Scafold -> Modelo padrão de apps em material design
// App bar -> Barra superior
// Icon -> Icones
// FloatingActionButton -> Botão flutuante
// setState -> Função quando a tela atualiza 