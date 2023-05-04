import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  final estiloTexto = const TextStyle(fontSize: 25.0);
  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título'),
        centerTitle: true,
        elevation: 50.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks', style: estiloTexto),
            Text('$_conteo', style: estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(width: 35.0),
        FloatingActionButton(
            onPressed: _reset, child: const Icon(Icons.exposure_zero)),
        const Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(onPressed: _sustraer, child: const Icon(Icons.remove)),
        const Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(onPressed: _agregar, child: const Icon(Icons.add)),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
