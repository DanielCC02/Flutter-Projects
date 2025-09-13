import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/logo_widget.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    print("Login con: ${_emailController.text}, ${_passwordController.text}");
  }

  void _goToRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login - AeroCaribean")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LogoWidget(),
            const SizedBox(height: 32),

            CustomTextField(
              controller: _emailController,
              label: "Correo",
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),

            CustomTextField(
              controller: _passwordController,
              label: "Contraseña",
              isPassword: true,
            ),
            const SizedBox(height: 24),

            CustomButton(text: "Login", onPressed: _login, isPrimary: true),
            const SizedBox(height: 12),
            CustomButton(
              text: "Registrarse",
              onPressed: _goToRegister,
              isPrimary: false,
            ),
          ],
        ),
      ),
    );
  }
}
