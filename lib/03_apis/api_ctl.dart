/*
  🧠 O que faz:
  Esse controller é quem cuida de buscar os dados da nossa API fake.
  Ele conversa com a função `fetchItens()` e organiza tudo pra gente usar no app.

  📌 Para que serve:
  - Pra separar a lógica da API do resto do app (store, telas, etc.)
  - Pra deixar o código mais limpo, organizado e fácil de manter
  - Pra facilitar testes e mudanças futuras (ex: trocar por uma API real)

  🧱 Onde se encaixa:
  Fica na pasta do passo 02, junto da API fake. Serve de ponte entre a API e quem usa os dados.
  Exemplo de caminho:
  lib/features/passo_02/controller/api_ctl.dart

  🛠️ O que pode evoluir depois:
  - Adicionar mensagens de erro se algo der errado
  - Mostrar carregando (loading) enquanto busca os dados
  - Criar filtros (ex: só itens de certo tipo) ou buscas específicas

  🍽️ ANALOGIA:
  Imagine que você tem um garçom que vai até a cozinha (API),
  pega os pratos prontos (itens do estoque) e traz organizadinho pra mesa (tela).
  Esse controller é o garçom! Ele facilita a vida de todo mundo 😄
*/

import 'package:butcher_ctl/00_basic/imports.dart';

class ApiController {
  // Lista que armazena os itens retornados pela API fake
  List<ItemModel> _itemList = [];

  // Getter para permitir acesso externo à lista
  List<ItemModel> get itemList => _itemList;

  // Método que busca os dados da API simulada
  Future<void> carregarItens() async {
    // Chama a função que simula a resposta da API
    final resultado = await fetchItens();

    // Armazena o resultado localmente
    _itemList = resultado;
  }
}
