/*
  🧠 O que faz:
  Essa Store é responsável por controlar os dados dos itens no app.
  Ela busca os dados da API fake, armazena e notifica a UI quando algo mudar.

  📌 Para que serve:
  - Centraliza a lista de itens que serão exibidos no app
  - Notifica automaticamente a interface ao carregar dados
  - Faz a ponte entre o controller e os widgets

  🍽️ ANALOGIA:
  Pense na store como um "estoque" que avisa os funcionários quando chega produto novo.
  Quando o app chama `loadItens()`, ela preenche o estoque e avisa a tela pra mostrar os dados.
*/

import 'package:butcher_ctl/00_basic/imports.dart';

class ItemStore extends ChangeNotifier {
  // Instância do controller responsável por buscar os dados
  final ApiController _apiController = ApiController();

  // Getter para acessar a lista de itens na interface
  List<ItemModel> get itens => _apiController.itemList;

  // Método para carregar os itens a partir da API fake
  Future<void> loadItens() async {
    await _apiController.carregarItens();
    notifyListeners(); // Avisa que a UI pode se atualizar
  }
}
