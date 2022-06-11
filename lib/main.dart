import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(const PerguntAPP());

class _PerguntaAppState extends State<PerguntAPP> {
  int _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      if ((perguntas.length - 1) > _perguntaSelecionada) _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada], const Key('1')),
            ElevatedButton(
              onPressed: _responder,
              child: const Text("Resposta 1"),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}

@immutable
class PerguntAPP extends StatefulWidget {
  const PerguntAPP({Key? key}) : super(key: key);

  @override
  State<PerguntAPP> createState() {
    return _PerguntaAppState();
  }
}
