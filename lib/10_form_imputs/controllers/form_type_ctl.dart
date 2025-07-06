import 'package:butcher_ctl/00_basic/imports.dart';

/// 🧠 O que faz:
/// Controla a seleção de tipo e nome da carne, com dados vindos da API fake.
///
/// 📌 Para que serve:
/// Carrega os nomes dos cortes de carne reais da API (`fetchItens`)
/// e organiza dinamicamente os cortes por tipo selecionado.
///
/// 🧱 Onde se encaixa:
/// Usado dentro do botão visual `FormTypeNameBtn`.
class FormTypeNameCls {
  // Tipo de carne selecionado
  final ValueNotifier<String?> tipoSelecionado = ValueNotifier(null);

  // Lista de nomes disponíveis para o tipo atual
  final ValueNotifier<List<String>> nomesDisponiveis = ValueNotifier([]);

  // Nome da carne selecionado
  final ValueNotifier<String?> nomeSelecionado = ValueNotifier(null);

  // Armazena os cortes agrupados por tipo (padronizados para minúsculo)
  final Map<String, List<String>> _cortesPorTipo = {
    'bovina': [],
    'suina': [],
    'aviaria': [],
  };

  // Função que busca os dados da API e organiza os cortes
  Future<void> carregarDadosDaApi() async {
    // Busca todos os itens da API fake
    final List<ItemModel> todos = await fetchItens();

    for (var item in todos) {
      // Os tipos da API vêm como: Boi, Porco, Frango
      // Aqui mapeamos para: bovina, suina, aviaria
      final tipoOriginal = item.type.toLowerCase();
      final String tipo;

      if (tipoOriginal == 'boi') {
        tipo = 'bovina';
      } else if (tipoOriginal == 'porco') {
        tipo = 'suina';
      } else if (tipoOriginal == 'frango') {
        tipo = 'aviaria';
      } else {
        continue; // Ignora tipos não reconhecidos
      }

      final nome = item.name;

      if (_cortesPorTipo.containsKey(tipo) &&
          !_cortesPorTipo[tipo]!.contains(nome)) {
        _cortesPorTipo[tipo]!.add(nome);
      }
    }
  }

  // Define o tipo e atualiza a lista de nomes disponíveis
  void selecionarTipo(String tipo) {
    tipoSelecionado.value = tipo;
    nomesDisponiveis.value = _cortesPorTipo[tipo] ?? [];

    if (!nomesDisponiveis.value.contains(nomeSelecionado.value)) {
      nomeSelecionado.value = null;
    }
  }

  // Define o nome selecionado
  void selecionarNome(String nome) {
    nomeSelecionado.value = nome;
  }

  // Getters para acesso externo
  String? get tipoAtual => tipoSelecionado.value;
  String? get nomeAtual => nomeSelecionado.value;
}
