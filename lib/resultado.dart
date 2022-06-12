import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int _pontuacao;
  final void Function() _reiniciarQuestionario;

  const Resultado(this._pontuacao, this._reiniciarQuestionario, Key? key)
      : super(key: key);

  String get fraseResultado {
    if (_pontuacao < 8) {
      return 'Parabéns!';
    } else if (_pontuacao < 12) {
      return 'Você é o bom!';
    } else if (_pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado, style: const TextStyle(fontSize: 28)),
        ),
        TextButton(
          onPressed: _reiniciarQuestionario,
          style: TextButton.styleFrom(primary: Colors.blue),
          child: const Text(
            'Reiniciar!',
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
