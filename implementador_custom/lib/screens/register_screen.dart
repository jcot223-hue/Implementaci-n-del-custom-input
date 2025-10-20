import 'package:flutter/material.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.6;

    final nombreController = TextEditingController();
    final apellidoPaternoController = TextEditingController();
    final apellidoMaternoController = TextEditingController();
    final correoController = TextEditingController();
    final telefonoController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmarPasswordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Registro")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                width: width,
                child: CustomInput(
                  label: "Nombre",
                  controller: nombreController,
                ),
              ),
              SizedBox(
                width: width,
                child: CustomInput(
                  label: "Apellido Paterno",
                  controller: apellidoPaternoController,
                ),
              ),
              SizedBox(
                width: width,
                child: CustomInput(
                  label: "Apellido Materno",
                  controller: apellidoMaternoController,
                ),
              ),
              SizedBox(
                width: width,
                child: CustomInput(
                  label: "Correo",
                  controller: correoController,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                width: width,
                child: CustomInput(
                  label: "Teléfono",
                  controller: telefonoController,
                  keyboardType: TextInputType.phone,
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
              SizedBox(
                width: width,
                child: CustomInput(
                  label: "Confirmar Contraseña",
                  controller: confirmarPasswordController,
                  isPassword: true,
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: width * 0.33,
                  child: CustomButton(
                    texto: "Registrarse",
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: width * 0.33,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("¿Ya tienes cuenta? Inicia Sesión"),
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
