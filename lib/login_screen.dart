import 'package:flutter/material.dart';
import 'fake_database.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: userController,
              decoration: const InputDecoration(labelText: 'Usuário'),
            ),
            TextField(
              controller: senhaController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Senha'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Savar o nome
                FakeDatabase.nome = userController.text;

                // Ir para Home
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
