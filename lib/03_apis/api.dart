/*
  🧫 O que faz:
  Esse arquivo simula uma API que retorna uma lista de itens do estoque (congelados).
  Cada item é criado com todos os campos definidos no modelo original.

  📌 Para que serve:
  - Testar o app sem precisar de servidor real
  - Treinar a interface com dados completos e coerentes
  - Garantir que o modelo está sendo usado corretamente

  🍽️ ANALOGIA:
  Imagine que a gente montou um estoque de carnes já embaladas, com etiqueta, data e tudo.
  Esses dados simulam esse estoque pronto pra ser exibido no sistema.
*/

import 'package:butcher_ctl/00_basic/imports.dart';

Future<List<ItemModel>> fetchItens() async {
  await Future.delayed(const Duration(milliseconds: 500));

  final List<ItemModel> itens = [
    // --------------------------------------------------------------------------
    // 🐄 ITENS BOVINOS
    // --------------------------------------------------------------------------
    ItemModel(
      id: '2',
      type: 'Boi',
      name: 'Patinho',
      freezer: 'F6',
      prateleira: 'B1',
      durabilidade: '15 dias',
      fabricacao: DateTime.parse('2025-07-03'),
      validade: DateTime.parse('2025-07-18'),
    ),
    ItemModel(
      id: '3',
      type: 'Boi',
      name: 'Patinho',
      freezer: 'F2',
      prateleira: 'C1',
      durabilidade: '79 dias',
      fabricacao: DateTime.parse('2025-07-04'),
      validade: DateTime.parse('2025-09-21'),
    ),
    ItemModel(
      id: '11',
      type: 'Boi',
      name: 'Fraldinha',
      freezer: 'F1',
      prateleira: 'C2',
      durabilidade: '73 dias',
      fabricacao: DateTime.parse('2025-05-08'),
      validade: DateTime.parse('2025-07-20'),
    ),
    ItemModel(
      id: '12',
      type: 'Boi',
      name: 'Acém',
      freezer: 'F5',
      prateleira: 'B2',
      durabilidade: '51 dias',
      fabricacao: DateTime.parse('2025-06-03'),
      validade: DateTime.parse('2025-07-24'),
    ),

    // --------------------------------------------------------------------------
    // 🐔 ITENS AVIÁRIOS
    // --------------------------------------------------------------------------
    ItemModel(
      id: '1',
      type: 'Frango',
      name: 'Peito',
      freezer: 'F1',
      prateleira: 'B2',
      durabilidade: '30 dias',
      fabricacao: DateTime.parse('2025-06-18'),
      validade: DateTime.parse('2025-07-18'),
    ),
    ItemModel(
      id: '4',
      type: 'Frango',
      name: 'Asa',
      freezer: 'F4',
      prateleira: 'C2',
      durabilidade: '31 dias',
      fabricacao: DateTime.parse('2025-06-25'),
      validade: DateTime.parse('2025-07-26'),
    ),
    ItemModel(
      id: '5',
      type: 'Frango',
      name: 'Asa',
      freezer: 'F6',
      prateleira: 'B1',
      durabilidade: '51 dias',
      fabricacao: DateTime.parse('2025-05-25'),
      validade: DateTime.parse('2025-07-15'),
    ),
    ItemModel(
      id: '6',
      type: 'Frango',
      name: 'Peito',
      freezer: 'F4',
      prateleira: 'B1',
      durabilidade: '37 dias',
      fabricacao: DateTime.parse('2025-06-02'),
      validade: DateTime.parse('2025-07-09'),
    ),
    ItemModel(
      id: '7',
      type: 'Frango',
      name: 'Peito',
      freezer: 'F1',
      prateleira: 'A2',
      durabilidade: '85 dias',
      fabricacao: DateTime.parse('2025-05-13'),
      validade: DateTime.parse('2025-08-06'),
    ),
    ItemModel(
      id: '8',
      type: 'Frango',
      name: 'Coxa',
      freezer: 'F4',
      prateleira: 'A2',
      durabilidade: '36 dias',
      fabricacao: DateTime.parse('2025-06-08'),
      validade: DateTime.parse('2025-07-14'),
    ),
    ItemModel(
      id: '9',
      type: 'Frango',
      name: 'Sobrecoxa',
      freezer: 'F3',
      prateleira: 'A1',
      durabilidade: '37 dias',
      fabricacao: DateTime.parse('2025-06-20'),
      validade: DateTime.parse('2025-07-27'),
    ),
    ItemModel(
      id: '10',
      type: 'Frango',
      name: 'Frango inteiro',
      freezer: 'F1',
      prateleira: 'A2',
      durabilidade: '88 dias',
      fabricacao: DateTime.parse('2025-06-21'),
      validade: DateTime.parse('2025-09-17'),
    ),
    ItemModel(
      id: '17',
      type: 'Frango',
      name: 'Asa',
      freezer: 'F1',
      prateleira: 'C2',
      durabilidade: '64 dias',
      fabricacao: DateTime.parse('2025-06-13'),
      validade: DateTime.parse('2025-08-16'),
    ),
    ItemModel(
      id: '18',
      type: 'Frango',
      name: 'Frango inteiro',
      freezer: 'F1',
      prateleira: 'C1',
      durabilidade: '63 dias',
      fabricacao: DateTime.parse('2025-06-05'),
      validade: DateTime.parse('2025-08-07'),
    ),
    ItemModel(
      id: '19',
      type: 'Frango',
      name: 'Peito',
      freezer: 'F1',
      prateleira: 'C2',
      durabilidade: '41 dias',
      fabricacao: DateTime.parse('2025-06-18'),
      validade: DateTime.parse('2025-07-29'),
    ),
    ItemModel(
      id: '20',
      type: 'Frango',
      name: 'Frango inteiro',
      freezer: 'F2',
      prateleira: 'B2',
      durabilidade: '85 dias',
      fabricacao: DateTime.parse('2025-06-26'),
      validade: DateTime.parse('2025-09-19'),
    ),

    // --------------------------------------------------------------------------
    // 🐖 ITENS SUÍNOS
    // --------------------------------------------------------------------------
    ItemModel(
      id: '13',
      type: 'Porco',
      name: 'Linguiça',
      freezer: 'F1',
      prateleira: 'A2',
      durabilidade: '64 dias',
      fabricacao: DateTime.parse('2025-06-07'),
      validade: DateTime.parse('2025-08-10'),
    ),
    ItemModel(
      id: '14',
      type: 'Porco',
      name: 'Costela',
      freezer: 'F2',
      prateleira: 'C1',
      durabilidade: '21 dias',
      fabricacao: DateTime.parse('2025-07-01'),
      validade: DateTime.parse('2025-07-22'),
    ),
    ItemModel(
      id: '15',
      type: 'Porco',
      name: 'Linguiça',
      freezer: 'F5',
      prateleira: 'C2',
      durabilidade: '87 dias',
      fabricacao: DateTime.parse('2025-06-18'),
      validade: DateTime.parse('2025-09-13'),
    ),
    ItemModel(
      id: '16',
      type: 'Porco',
      name: 'Linguiça',
      freezer: 'F5',
      prateleira: 'C1',
      durabilidade: '73 dias',
      fabricacao: DateTime.parse('2025-06-15'),
      validade: DateTime.parse('2025-08-27'),
    ),
  ];

  return itens;
}
