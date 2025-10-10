import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Pantalla'),
        backgroundColor: const Color(0xFF3333FF),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          '¡Bienvenido a la nueva pantalla!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
