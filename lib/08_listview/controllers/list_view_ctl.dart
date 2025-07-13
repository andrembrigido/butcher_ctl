/*
  🧠 O que faz:
  Controlador responsável por gerenciar a navegação entre as páginas da lista de carnes.

  📌 Para que serve:
  - Centraliza o `PageController` fora da interface visual
  - Permite navegar entre páginas da lista (vencidas, alerta, estoque)
  - Facilita o descarte correto do controlador (evita vazamento de memória)

  🛠️ Como usar:
  1. Crie uma instância do controlador:
     final listViewCtl = ListViewCtl();

  2. Use no PageView:
     PageView(controller: listViewCtl.controller)

  3. No método dispose do widget:
     listViewCtl.dispose();
*/

import 'package:butcher_ctl/00_/imports.dart';

class ListViewCtl {
  // Controlador de páginas que define qual lista está visível no PageView
  final PageController controller = PageController(initialPage: 1);

  // Método de descarte para liberar os recursos do controlador
  void dispose() {
    controller.dispose();
  }
}
