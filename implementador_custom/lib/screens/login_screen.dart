import 'package:flutter/material.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final width = MediaQuery.of(context).size.width * 0.33;

    return Scaffold(
      appBar: AppBar(title: const Text("Iniciar Sesión")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width,
                child: CustomInput(
                  label: "Correo",
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                width: width,
                child: CustomInput(
                  label: "Contraseña",
                  controller: passwordController,
                  isPassword: true,
                ),
              ),
              const SizedBox(height: 16),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: width * 0.6,
                  child: CustomButton(
                    texto: "Iniciar Sesión",
                    onPressed: () {
                    },
                  ),
                ),
              ),

              const SizedBox(height: 8),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: width * 0.6,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/registro');
                    },
                    child: const Text("¿No tienes cuenta? Regístrate"),
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
