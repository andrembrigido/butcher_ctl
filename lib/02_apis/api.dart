import 'package:butcher_ctl/imports.dart';

/// 🧠 O que faz:
/// Simula uma API real, retornando uma lista de carnes congeladas variadas.
///
/// 📌 Para que serve:
/// Fornece dados completos para testar o app, com cortes diferentes por tipo de carne.
Future<List<ItemModel>> fetchItens() async {
  await Future.delayed(const Duration(milliseconds: 500));

  final List<ItemModel> itens = [
    // --------------------------------------------------------------------------
    // 🐄 CARNES BOVINAS
    // --------------------------------------------------------------------------
    ItemModel(
      id: '1',
      type: 'Boi',
      name: 'Picanha',
      freezer: 'F1',
      prateleira: 'A1',
      durabilidade: '60 dias',
      fabricacao: DateTime.parse('2025-06-10'),
      validade: DateTime.parse('2025-08-09'),
    ),
    ItemModel(
      id: '2',
      type: 'Boi',
      name: 'Contra-filé',
      freezer: 'F2',
      prateleira: 'B2',
      durabilidade: '45 dias',
      fabricacao: DateTime.parse('2025-06-15'),
      validade: DateTime.parse('2025-07-30'),
    ),
    ItemModel(
      id: '3',
      type: 'Boi',
      name: 'Filé Mignon',
      freezer: 'F3',
      prateleira: 'C1',
      durabilidade: '30 dias',
      fabricacao: DateTime.parse('2025-06-20'),
      validade: DateTime.parse('2025-07-20'),
    ),
    ItemModel(
      id: '4',
      type: 'Boi',
      name: 'Alcatra',
      freezer: 'F1',
      prateleira: 'A2',
      durabilidade: '40 dias',
      fabricacao: DateTime.parse('2025-06-18'),
      validade: DateTime.parse('2025-07-28'),
    ),
    ItemModel(
      id: '5',
      type: 'Boi',
      name: 'Fraldinha',
      freezer: 'F4',
      prateleira: 'C2',
      durabilidade: '35 dias',
      fabricacao: DateTime.parse('2025-06-22'),
      validade: DateTime.parse('2025-07-27'),
    ),
    ItemModel(
      id: '6',
      type: 'Boi',
      name: 'Acém',
      freezer: 'F2',
      prateleira: 'B1',
      durabilidade: '50 dias',
      fabricacao: DateTime.parse('2025-06-05'),
      validade: DateTime.parse('2025-07-25'),
    ),

    // --------------------------------------------------------------------------
    // 🐖 CARNES SUÍNAS
    // --------------------------------------------------------------------------
    ItemModel(
      id: '7',
      type: 'Porco',
      name: 'Costela',
      freezer: 'F3',
      prateleira: 'A1',
      durabilidade: '60 dias',
      fabricacao: DateTime.parse('2025-06-11'),
      validade: DateTime.parse('2025-08-10'),
    ),
    ItemModel(
      id: '8',
      type: 'Porco',
      name: 'Lombo',
      freezer: 'F1',
      prateleira: 'C2',
      durabilidade: '45 dias',
      fabricacao: DateTime.parse('2025-06-13'),
      validade: DateTime.parse('2025-07-28'),
    ),
    ItemModel(
      id: '9',
      type: 'Porco',
      name: 'Pernil',
      freezer: 'F4',
      prateleira: 'B2',
      durabilidade: '40 dias',
      fabricacao: DateTime.parse('2025-06-09'),
      validade: DateTime.parse('2025-07-19'),
    ),
    ItemModel(
      id: '10',
      type: 'Porco',
      name: 'Linguiça',
      freezer: 'F2',
      prateleira: 'B1',
      durabilidade: '30 dias',
      fabricacao: DateTime.parse('2025-06-16'),
      validade: DateTime.parse('2025-07-16'),
    ),
    ItemModel(
      id: '11',
      type: 'Porco',
      name: 'Paleta',
      freezer: 'F5',
      prateleira: 'C1',
      durabilidade: '35 dias',
      fabricacao: DateTime.parse('2025-06-17'),
      validade: DateTime.parse('2025-07-22'),
    ),
    ItemModel(
      id: '12',
      type: 'Porco',
      name: 'Costela',
      freezer: 'F1',
      prateleira: 'A2',
      durabilidade: '50 dias',
      fabricacao: DateTime.parse('2025-06-12'),
      validade: DateTime.parse('2025-08-01'),
    ),

    // --------------------------------------------------------------------------
    // 🐔 CARNES AVIÁRIAS
    // --------------------------------------------------------------------------
    ItemModel(
      id: '13',
      type: 'Frango',
      name: 'Coxa',
      freezer: 'F3',
      prateleira: 'A1',
      durabilidade: '25 dias',
      fabricacao: DateTime.parse('2025-06-21'),
      validade: DateTime.parse('2025-07-16'),
    ),
    ItemModel(
      id: '14',
      type: 'Frango',
      name: 'Sobrecoxa',
      freezer: 'F4',
      prateleira: 'B2',
      durabilidade: '30 dias',
      fabricacao: DateTime.parse('2025-06-14'),
      validade: DateTime.parse('2025-07-14'),
    ),
    ItemModel(
      id: '15',
      type: 'Frango',
      name: 'Peito',
      freezer: 'F1',
      prateleira: 'C1',
      durabilidade: '35 dias',
      fabricacao: DateTime.parse('2025-06-10'),
      validade: DateTime.parse('2025-07-15'),
    ),
    ItemModel(
      id: '16',
      type: 'Frango',
      name: 'Asa',
      freezer: 'F2',
      prateleira: 'B1',
      durabilidade: '28 dias',
      fabricacao: DateTime.parse('2025-06-18'),
      validade: DateTime.parse('2025-07-16'),
    ),
    ItemModel(
      id: '17',
      type: 'Frango',
      name: 'Frango inteiro',
      freezer: 'F5',
      prateleira: 'A2',
      durabilidade: '45 dias',
      fabricacao: DateTime.parse('2025-06-07'),
      validade: DateTime.parse('2025-07-22'),
    ),
    ItemModel(
      id: '18',
      type: 'Frango',
      name: 'Peito',
      freezer: 'F4',
      prateleira: 'C2',
      durabilidade: '33 dias',
      fabricacao: DateTime.parse('2025-06-11'),
      validade: DateTime.parse('2025-07-14'),
    ),
  ];

  return itens;
}
