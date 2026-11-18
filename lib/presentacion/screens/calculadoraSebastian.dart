import 'package:flutter/material.dart';

class CalculadoraSebastian extends StatefulWidget {
  const CalculadoraSebastian({super.key});

  @override
  State<CalculadoraSebastian> createState() => CalculadoraSebastianState();
}

class CalculadoraSebastianState extends State<CalculadoraSebastian> {
  int clicksSuma = 0;
  int clicksResta = 0;
  bool restaIniciada = false;
  int total = 0;

  void incrementarSuma() {
    setState(() {
      clicksSuma++;
    });
  }

  void decrementarResta() {
    setState(() {
      if (!restaIniciada) {
        clicksResta = 25;
        restaIniciada = true;
      } else if (clicksResta > 0) {
        clicksResta--;
      }
    });
  }

  void calcularTotal() {
    setState(() {
      total = clicksSuma - clicksResta;
    });
  }

  Widget recuadro(String texto) {
    return Container(
      width: 220,
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87),
      ),
      child: Text(
        texto,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Calculadora de Sebastian'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 220,
              height: 56,
              child: OutlinedButton(
                onPressed: incrementarSuma,
                child: const Text('Numero de clicks +'),
              ),
            ),
            const SizedBox(height: 12),
            recuadro('$clicksSuma'),
            const SizedBox(height: 24),
            SizedBox(
              width: 220,
              height: 56,
              child: OutlinedButton(
                onPressed: decrementarResta,
                child: const Text('Numero de clicks -'),
              ),
            ),
            const SizedBox(height: 12),
            recuadro('$clicksResta'),
            const SizedBox(height: 24),
            SizedBox(
              width: 220,
              height: 56,
              child: OutlinedButton(
                onPressed: calcularTotal,
                child: const Text('Total'),
              ),
            ),
            const SizedBox(height: 12),
            recuadro('$total'),
          ],
        ),
      ),
    );
  }
}