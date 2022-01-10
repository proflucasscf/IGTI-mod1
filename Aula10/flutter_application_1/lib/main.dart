// Importa pacote do flutter para Material Design
import 'package:flutter/material.dart';

void main() {
  // Chama a função runApp(), que é do Flutter
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // O MaterialApp é um widget que envolve vários outros
    // widgets - Necessário no Material Design
    return MaterialApp(home: MeuAppStateful());
  }
}

class MeuAppStateful extends StatefulWidget {
  MeuAppStateful() : super();

  @override
  MyStetefulAppState createState() => MyStetefulAppState();
}

class MyStetefulAppState extends State<MeuAppStateful> {
  static const texto = ["I", "IG", "IGT", "IGTI"];
  int contador = 0;

  void mudarValor() {
    setState(() {
      if (contador == 3) {
        contador = 0;
      } else {
        contador++;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primeiro Aplicativo - IGTI"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            texto[contador],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const SizedBox(height: 30),
          TextButton(
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 32)),
              onPressed: mudarValor,
              child: const Text('Alterar'))
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }
}
