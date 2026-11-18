
import 'package:flutter/material.dart';

class PantallaChicaiza extends StatefulWidget {
  const PantallaChicaiza({super.key});

  @override
  State<PantallaChicaiza> createState() =>
      _PantallaChicaizaState();
}

class _PantallaChicaizaState extends State<PantallaChicaiza> {

  // Variables de los contadores
  int valor1 = 0;
  int valor2 = 25;

  // Calcular la diferencia entre los dos valores
  int get total => valor1 - valor2;

  void incrementarValor1() {
    setState(() {
      valor1++;
    });
  }

  void disminuirValor1() {
    setState(() {
      valor1--;
    });
  }

  void incrementarValor2() {
    setState(() {
      valor2++;
    });
  }

  void disminuirValor2() {
    setState(() {
      valor2--;
    });
  }

  void reiniciar() {
    setState(() {
      valor1 = 0;
      valor2 = 25;
    });
  }

  Widget construirContador({
    required String titulo,
    required int valor,
    required VoidCallback incrementar,
    required VoidCallback disminuir,
    required Color color,
  }) {
    return Column(
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          '$valor',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),

        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: disminuir,
              child: const Icon(Icons.remove),
            ),

            const SizedBox(width: 20),

            ElevatedButton(
              onPressed: incrementar,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Chicaiza'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // CONTADOR 1
              construirContador(
                titulo: 'Valor 1',
                valor: valor1,
                incrementar: incrementarValor1,
                disminuir: disminuirValor1,
                color: Colors.blue,
              ),

              const SizedBox(height: 35),

              // CONTADOR 2
              construirContador(
                titulo: 'Valor 2',
                valor: valor2,
                incrementar: incrementarValor2,
                disminuir: disminuirValor2,
                color: Colors.green,
              ),

              const SizedBox(height: 35),

              // RESULTADO TOTAL
              const Text(
                'Total (Valor 1 - Valor 2)',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                '$total',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),

              const SizedBox(height: 30),

              // REINICIAR
              ElevatedButton.icon(
                onPressed: reiniciar,
                icon: const Icon(Icons.refresh),
                label: const Text('Reiniciar contadores'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 15,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
