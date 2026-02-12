import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsLoginForm extends StatelessWidget {
  final VoidCallback onSubmit;

  const DsLoginForm({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Column(
      children: [
        DsLabeledInput(
          label: 'Email', 
          controller: emailController,
          hintText: 'correo@ejemplo.com',
        ),
        const SizedBox(height: DsSpacing.md),
        DsLabeledInput(
          label: 'Contraseña', 
          controller: passwordController,
          obscureText: true,
        ),
        const SizedBox(height: DsSpacing.lg),
        DsPrimaryButton(
          label: 'Iniciar Sesion', 
          onPressed: onSubmit
        ),
      ],
    );
  }
}
