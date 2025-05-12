import 'package:flutter/material.dart';
import 'fake_database.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumo do Usuário'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${FakeDatabase.nome}'),
            Text('Telefone: ${FakeDatabase.telefone}'),
            Text('Endereço: ${FakeDatabase.endereco}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/edit');
              },
              child: const Text('Editar Cadastro'),
            ),
          ],
        ),
      ),
    );
  }
}
