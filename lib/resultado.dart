import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  int nota;
  final void Function() quandoReiiniciarQuestionario;

  Resultado(this.nota, this.quandoReiiniciarQuestionario);

  String get fraseResultado {
    if (nota < 10) {
      return 'PARABÉNS!!';
    } else if (nota < 15) {
      return 'Muito Bom';
    } else if (nota < 20) {
      return 'Maravilha!';
    } else if (nota < 25) {
      return 'O melhor!';
    } else {
      return 'High Score';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          onPressed: quandoReiiniciarQuestionario,
          child: Text('Reiniciar?'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.blue)),
        )
      ],
    );
  }
}
