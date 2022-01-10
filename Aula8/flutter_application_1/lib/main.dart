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
    return MaterialApp(
      // Widget que define características típicas de um app
      // AppBar, actions, menus
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Primeiro Aplicativo - IGTI'),
        ),
        body: const Center(
          child: Text(
            'Olá Turma!!! \nDesenvoledor Mobile \nIGTI',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ),
      ),
    );
  }
}
