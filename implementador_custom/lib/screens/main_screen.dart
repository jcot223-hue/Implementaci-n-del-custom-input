import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;
    final passwordWidth = fullWidth * 0.33; 
    final buttonWidth = fullWidth * 0.15; 

    return Scaffold(
      appBar: AppBar(
        title: const Text("Iniciar Sesión"), 
        backgroundColor: const Color(0xFF3333FF),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: passwordWidth,
                child: CustomInput(
                  controller: TextEditingController(),
                  label: "Contraseña",
                  isPassword: true,
                ),
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: buttonWidth,
                child: CustomButton(
                  texto: "Iniciar Sesión",
                  onPressed: () {
                  },
                ),
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: buttonWidth,
                child: CustomButton(
                  texto: "Ir a pantalla de GPS",
                  onPressed: () {
                    Navigator.pushNamed(context, '/nueva');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
