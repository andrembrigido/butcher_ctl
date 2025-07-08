import 'package:butcher_ctl/imports.dart';

/// Controlador que busca os dados da API fake e os armazena internamente
class ApiController {
  List<ItemModel> _itemList = [];

  // Acesso externo à lista de itens
  List<ItemModel> get itemList => _itemList;

  // Busca os itens e atualiza a lista
  Future<void> carregarItens() async {
    final resultado = await fetchItens();
    _itemList = resultado;
  }
}
