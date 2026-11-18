import 'package:flutter/material.dart';

class MiPantalla extends StatefulWidget {
  const MiPantalla({super.key});

  @override
  State<MiPantalla> createState() => _MiPantallaState();
}

class _MiPantallaState extends State<MiPantalla> {
  int _contadorPositivo = 0;
  int _contadorRegresivo = 25;
  int _total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Matias Alcivar'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 360),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _filaContador(
                  titulo: 'Numero de clicks +',
                  valor: _contadorPositivo,
                  icono: Icons.add,
                  accion: () => setState(() => _contadorPositivo++),
                ),
                const SizedBox(height: 12),
                _filaContador(
                  titulo: 'Numero de clicks -',
                  valor: _contadorRegresivo,
                  icono: Icons.remove,
                  accion: () => setState(() {
                    if (_contadorRegresivo > 0) _contadorRegresivo--;
                  }),
                ),
                const SizedBox(height: 12),
                _filaContador(
                  titulo: 'Total',
                  valor: _total,
                  icono: Icons.drag_handle,
                  accion: () => setState(
                    () => _total = _contadorPositivo + _contadorRegresivo,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _filaContador({
    required String titulo,
    required int valor,
    required IconData icono,
    required VoidCallback accion,
  }) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Text(titulo, textAlign: TextAlign.center),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Text('$valor', textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
        const SizedBox(width: 14),
        SizedBox(
          width: 52,
          height: 52,
          child: FloatingActionButton(
            heroTag: titulo,
            onPressed: accion,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 1,
            child: Icon(icono),
          ),
        ),
      ],
    );
  }
}
