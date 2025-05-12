import 'package:flutter/material.dart';
import 'fake_database.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController enderecoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nomeController.text = FakeDatabase.nome;
    telefoneController.text = FakeDatabase.telefone;
    enderecoController.text = FakeDatabase.endereco;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Cadastro'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: telefoneController,
              decoration: const InputDecoration(labelText: 'Telefone'),
            ),
            TextField(
              controller: enderecoController,
              decoration: const InputDecoration(labelText: 'Endereço'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                FakeDatabase.atualizar(
                  novoNome: nomeController.text,
                  novoTelefone: telefoneController.text,
                  novoEndereco: enderecoController.text,
                );
                Navigator.popAndPushNamed(context, '/home');
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
