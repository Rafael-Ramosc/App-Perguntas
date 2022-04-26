import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  final List<Map> perguntas = const [
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

  void responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    /* 
    List<Widget> respostas = [];
    for (String textoResp in perguntas[perguntaSelecionada]['respostas']) {
      respostas.add(Resposta(textoResp, responder)); Um exemplo mais imperativo
    }*/

    List<String>? respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : [];

    List<Widget> widgets =
        respostas!.map((t) => Resposta(t, responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: <Widget>[
                  Questao(perguntas[perguntaSelecionada]['texto'].toString()),
                  ...widgets,
                ],
              )
            : const Center(
                child: Text(
                  'Parabéns!',
                  style: TextStyle(fontSize: 28),
                ),
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
