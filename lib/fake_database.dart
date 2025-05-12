class FakeDatabase {
  static String nome = '';
  static String telefone = '';
  static String endereco = '';

  static void atualizar({
    required String novoNome,
    required String novoTelefone,
    required String novoEndereco,
  }) {
    nome = novoNome;
    telefone = novoTelefone;
    endereco = novoEndereco;
  }
}
