import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(const PerguntAPP());

class _PerguntaAppState extends State<PerguntAPP> {
  int _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Bode', 'Pato', 'Coruja', 'Calango de preguiça']
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Pedro', 'Alberto']
    }
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get _temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: _temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder)
            : const Resultado('Parabéns!', Key('result')),
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
