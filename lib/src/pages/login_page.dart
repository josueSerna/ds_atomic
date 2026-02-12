import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      title: 'Login Page',
      body: DsCenteredTemplate(
        child: DsLoginForm(
          onSubmit: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text('Login presionado')));
          },
        ),
      ),
    );
  }
}
