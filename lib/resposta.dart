import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function () quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white
        ),
        child: Text(texto),
      ),
    );
  }
}
