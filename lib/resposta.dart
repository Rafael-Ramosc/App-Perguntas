import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resp;
  final void Function() quandoSelecionado;

  Resposta(this.resp, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(resp),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.purple),
            foregroundColor: MaterialStateProperty.all(Colors.black87)),
      ),
    );
  }
}
