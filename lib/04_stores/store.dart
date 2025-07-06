import 'package:butcher_ctl/00_basic/imports.dart';

/// Store que escuta mudanças na lista de itens da API e notifica a UI
class ItemStore extends ChangeNotifier {
  final ApiController _apiController = ApiController();

  List<ItemModel> get itens => _apiController.itemList;

  // Carrega os itens e avisa a interface
  Future<void> loadItens() async {
    await _apiController.carregarItens();
    notifyListeners();
  }
}
