import 'package:flutter/material.dart';

class PantallaCristian extends StatefulWidget {
  const PantallaCristian({super.key});

  @override
  State<PantallaCristian> createState() => _PantallaCristianState();
}

class _PantallaCristianState extends State<PantallaCristian> {
  int clicksMas = 0;
  int clicksMenos = 0;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pantalla Cristian y Calculadora',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 130,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(border: Border.all()),
                      child: const Center(child: Text('Numero de clicks +')),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(border: Border.all()),
                      child: Center(child: Text('$clicksMas')),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(border: Border.all()),
                      child: const Center(child: Text('Numero de clicks -')),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(border: Border.all()),
                      child: Center(child: Text('$clicksMenos')),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(border: Border.all()),
                      child: const Center(child: Text('Total')),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(border: Border.all()),
                      child: Center(child: Text('$total')),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          clicksMas++;
                        });
                      },
                      child: const Text('+'),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (clicksMenos == 0) {
                            clicksMenos = 25;
                          } else {
                            clicksMenos--;
                          }
                        });
                      },
                      child: const Text('-'),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          total = clicksMas + clicksMenos;
                        });
                      },
                      child: const Text('='),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}