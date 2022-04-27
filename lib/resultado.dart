import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  String answer;

  Resultado(this.answer);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        answer,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}
