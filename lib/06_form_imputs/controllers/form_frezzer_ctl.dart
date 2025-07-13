import 'package:butcher_ctl/00_/imports.dart';

/// Classe de controle responsável por armazenar as seleções de freezer e prateleira
class FormFrezzerCls {
  // Freezer selecionado (F1, F2, ..., F6)
  final ValueNotifier<String?> freezerSelecionado = ValueNotifier(null);

  // Prateleira selecionada (P1, P2, ..., P6)
  final ValueNotifier<String?> prateleiraSelecionada = ValueNotifier(null);

  // Define o freezer atual
  void selecionarFreezer(String freezer) {
    freezerSelecionado.value = freezer;
  }

  // Define a prateleira atual
  void selecionarPrateleira(String prateleira) {
    prateleiraSelecionada.value = prateleira;
  }

  // Getters úteis para acesso direto
  String? get freezerAtual => freezerSelecionado.value;
  String? get prateleiraAtual => prateleiraSelecionada.value;
}
