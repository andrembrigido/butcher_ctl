import 'package:flutter/material.dart';

/// 🧠 O que faz:
/// Controla o tipo de carne selecionado no formulário.
///
/// 📌 Para que serve:
/// Armazena o tipo selecionado (bovina, suína ou aviária)
/// de forma reativa usando `ValueNotifier`, permitindo que
/// o valor seja acessado e atualizado por outros widgets.
///
/// 🍽️ Analogia:
/// Como uma ficha de pedido onde o usuário marca qual tipo de carne quer.
/// Esse valor pode ser lido depois por qualquer parte do sistema.
class FormTypeCtl {
  // Armazena o tipo de carne selecionado.
  // Pode ser 'bovina', 'suina', 'aviaria' ou null.
  final ValueNotifier<String?> tipoSelecionado = ValueNotifier<String?>(null);

  // Atualiza o tipo selecionado com o valor recebido.
  void selecionar(String tipo) {
    tipoSelecionado.value = tipo;
  }

  // Retorna o tipo atualmente selecionado.
  String? get tipoAtual => tipoSelecionado.value;
}
