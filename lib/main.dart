import 'package:flutter/material.dart';
import './questao.dart';
import './resultado.dart';
import './questinario.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var notaTotal = 0;

  final List<Map> perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Vermelho', 'nota': 10},
        {'texto': 'Preto', 'nota': 8},
        {'texto': 'Branco', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': 'Gato', 'nota': 8},
        {'texto': 'Papagaio', 'nota': 5},
        {'texto': 'Mico', 'nota': 3},
      ],
    },
    {
      'texto': 'Qual seu carro favorito?',
      'respostas': [
        {'texto': 'Gol', 'nota': 3},
        {'texto': 'Uno', 'nota': 5},
        {'texto': 'Chevette', 'nota': 8},
        {'texto': 'Renault Kangoo', 'nota': 10},
      ],
    }
  ];

  void responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        notaTotal += nota;
      });
    }
    print(notaTotal);
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: perguntas,
                perguntaSelecionada: perguntaSelecionada,
                quandoResponder: responder)
            : Resultado(notaTotal),
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
