import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final Function() responder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
    Key? key,
  }) : super(key: key);

  bool get _temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = _temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas'] as List<String>
        : [];

    return Column(
      children: [
        Questao(
            perguntas[perguntaSelecionada]['texto'] as String, const Key('0')),
        ...respostas.map((t) => Resposta(t, responder, Key(t))).toList()
      ],
    );
  }
}
