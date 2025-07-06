/*
  🧠 O que faz:
  Aqui a gente cria uma "central" que guarda a lista dos produtos congelados.

  📌 Para que serve:
  - Pra buscar os dados da API e guardar
  - Pra adicionar ou remover produtos da lista
  - Pra avisar o app quando a lista mudar, assim a interface atualiza sozinha

  🧺 ANALOGIA:
  Imagine que essa store é uma despensa. Ela recebe os produtos da cozinha (API),
  guarda tudo certinho e avisa quando alguém mexe ali dentro, pra que o garçom (interface)
  possa mostrar a lista atualizada para os clientes.
*/

import 'package:butcher_ctl/00_basic/imports.dart';

class ItemStore extends ChangeNotifier {
  final Api _api = Api();

  List<ItemModel> _items = [];

  // Essa função busca (fetch = buscar e trazer) os produtos da API e salva aqui dentro
  // O async quer dizer: "essa função pode demorar um pouco, mas o app pode continuar funcionando"
  // O await lá dentro diz: "espera essa parte terminar antes de continuar"
  // No caso abaixo, ele espera 1 segundo (simulando uma espera real de rede/API)
  Future<void> fetchProdutos() async {
    _items = await _api.fetchItems();

    // Isso avisa o app que a lista foi atualizada, e que a interface (UI) deve se atualizar
    // Essa função só existe porque usamos ChangeNotifier lá em cima
    notifyListeners();
  }

  // Essa é a versão pública da lista, que o app pode acessar
  List<ItemModel> get congelados => _items;

  // Essa função adiciona um novo produto à lista
  // O nome "novoProduto" é só um nome escolhido, não é palavra reservada.
  // Você poderia usar outro nome como "item", "novo", "produtoNovo"... o que fizer mais sentido
  void adicionar(ItemModel novoProduto) {
    _items.add(novoProduto); // Adiciona o produto à lista
    notifyListeners(); // Avisa que a lista mudou
  }

  // Essa função remove um produto da lista, usando o ID como referência
  // Aqui usamos "produtoParaRemover" como nome, mas você pode usar qualquer outro nome
  void remover(ItemModel produtoParaRemover) {
    _items.removeWhere((elemento) => elemento.id == produtoParaRemover.id);
    notifyListeners(); // Avisa que a lista mudou
  }
}
