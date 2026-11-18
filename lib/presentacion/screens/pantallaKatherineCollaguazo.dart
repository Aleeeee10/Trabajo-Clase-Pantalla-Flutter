import 'package:flutter/material.dart';

class pantallaKatherineCollaguazo extends StatefulWidget {
  const pantallaKatherineCollaguazo({super.key});

  @override
  State<pantallaKatherineCollaguazo> createState() => _PantallaKatherineCollaguazoState();
}

class _PantallaKatherineCollaguazoState extends State<pantallaKatherineCollaguazo> {
  int numeroA = 1;
  int numeroB = 25;
  int? total;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de botones - Katherine Collaguazo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 220,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: const Text(
                  'Número de clicks +',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 160,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      '$numeroA',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 12),
                  IconButton.filled(
                    tooltip: 'Sumar uno',
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        numeroA++;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                width: 220,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: const Text(
                  'Número de clicks -',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 160,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      '$numeroB',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 12),
                  IconButton.filled(
                    tooltip: 'Restar uno',
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        numeroB--;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                width: 220,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: const Text(
                  'Total',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 160,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      total?.toString() ?? '',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 12),
                  IconButton.filled(
                    tooltip: 'Calcular total',
                    icon: const Icon(Icons.drag_handle),
                    onPressed: () {
                      setState(() {
                        total = numeroB - numeroA;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}