import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map> perguntas = [
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Verde', 'Vermelho', 'Preto', 'Branco'],
      },
      {
        'texto': 'Qual seu animal favorito?',
        'respostas': ['Cachorro', 'Gato', 'Papagaio', 'Mico'],
      },
      {
        'texto': 'Qual seu carro favorito?',
        'respostas': ['Gol', 'Uno', 'Chevette', 'Renault Kangoo'],
      }
    ];
    final resposta = [
      'Resposta 1',
      'Resposta 2',
      'Resposta 3',
      'Resposta 4',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['texto']),
            Resposta(resposta[0], responder),
            Resposta(resposta[1], responder),
            Resposta(resposta[2], responder),
            Resposta(resposta[3], responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PerguntaAppState();
  }
}
