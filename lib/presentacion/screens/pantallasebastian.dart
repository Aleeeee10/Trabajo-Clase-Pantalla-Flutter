import 'package:flutter/material.dart';

class PantallaSebastian extends StatelessWidget {
  const PantallaSebastian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Sebastian'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person, size: 80),
            SizedBox(height: 16),
            Text(
              'Hola, soy Sebastian',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
