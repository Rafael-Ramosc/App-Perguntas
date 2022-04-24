import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print('Respondido!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Resposta 2 respondida!');
              },
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Resposta 3 respondida'),
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
