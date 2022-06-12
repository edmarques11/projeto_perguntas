import 'package:flutter/cupertino.dart';

class Resultado extends StatelessWidget {
  final String _texto;

  const Resultado(this._texto, Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_texto, style: const TextStyle(fontSize: 28)),
    );
  }
}
