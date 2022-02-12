import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo App Aula Interativa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Exemplo App Aula Interativa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int calc = 0;
  final valueText1 = TextEditingController();
  final valueText2 = TextEditingController();

  void soma() {
    setState(() {
      calc = int.parse(valueText1.text) + int.parse(valueText2.text);
    });
  }

  void subtracao() {
    setState(() {
      calc = int.parse(valueText1.text) - int.parse(valueText2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: valueText1,
              decoration: InputDecoration(hintText: 'Valor 1'),
            ),
            TextField(
              controller: valueText2,
              decoration: InputDecoration(hintText: 'Valor 2'),
            ),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        soma();
                      },
                      child: const Text('+ Somar'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        subtracao();
                      },
                      child: const Text('- Subtrair'),
                    ),
                  ]),
            ),
            SizedBox(height: 32),
            Text('Resultado: ${calc}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
