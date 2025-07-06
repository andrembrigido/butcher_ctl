/* -----------------------------------------------------------------------------
--- Sobre este arquivo ---
  - Este é o ponto inicial do aplicativo Flutter.
  - Toda vez que alguém abre o app, o código começa por aqui.
  - Ele carrega o widget principal do app e mostra a primeira
    tela para o usuário.
  - Tudo que for visual ou funcional depois disso vem do
    widget chamado "AppWidget".

--- Regras deste arquivo ---
Pode ter:
  - A função "runApp()", que inicia o app.
  - A chamada do widget principal (AppWidget), que está em outro arquivo.
  - Lógica de inicialização, como Firebase, configurações ou
    serviços que precisam ser carregados antes do app abrir.

Não pode ter:
  - Nenhum tipo de interface visual (nada de AppBar, Scaffold, botões, textos).
  - Nenhuma lógica da tela ou de funcionalidades do app.
------------------------------------------------------------------------------*/

/*------------------------------ START ---------------------------------------*/

// Importa o pacote principal do Flutter com widgets e tema Material.
import 'package:butcher_ctl/00_basic/imports.dart';

// Função principal executada ao iniciar o app.
void main() {
  // Executa o widget principal do app, iniciando a interface.
  runApp(AppWidget());
}
