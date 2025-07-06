import 'package:flutter/material.dart';

/// Controlador responsável por armazenar a data de validade selecionada
class FormValidadeCtl {
  // Armazena a data de validade escolhida
  final ValueNotifier<DateTime?> dataSelecionada = ValueNotifier(null);

  // Atualiza a data
  void definirData(DateTime novaData) {
    dataSelecionada.value = novaData;
  }

  // Getter da data atual (para uso externo)
  DateTime? get dataAtual => dataSelecionada.value;
}
