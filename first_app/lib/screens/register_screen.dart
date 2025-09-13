import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/logo_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _register() {
    print(
      "Registro: ${_nameController.text}, ${_emailController.text}, ${_passwordController.text}",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro - AeroCaribean")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // ✅ evita problemas en pantallas pequeñas
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
              const SizedBox(height: 32),

              CustomTextField(controller: _nameController, label: "Nombre"),
              const SizedBox(height: 16),

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

              CustomButton(
                text: "Registrarse",
                onPressed: _register,
                isPrimary: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
