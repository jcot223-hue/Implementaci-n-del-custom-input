import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomInput(
            controller: TextEditingController(),
            label: "Contraseña",
            isPassword: true,
          ),
          CustomButton(
            texto: "Ir a nueva pantalla",
            onPressed: () {
              Navigator.pushNamed(context, '/nueva');
            },
          ),
        ],
      ),
    );
  }
}
