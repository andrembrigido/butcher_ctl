/* -----------------------------------------------------------------------------
--- Sobre este arquivo ---
  - Este é o widget principal do aplicativo.
  - Ele configura temas, rotas, localizações e define,
    qual será a primeira tela exibida.

--- Regras deste arquivo ---
Pode ter:
  - Configuração do MaterialApp (tema, título, rota inicial, etc).
  - Definição da tela inicial do app.
Não pode ter:
  - Componentes visuais como AppBar, botões ou textos.
  - Lógicas de interface ou de funcionalidades da tela.
------------------------------------------------------------------------------*/

/*------------------------------ START ---------------------------------------*/

// Importa as telas principais do app

// Importa os componentes visuais do Flutter
import 'package:butcher_ctl/imports.dart';

// Widget principal do aplicativo
class AppWidget extends StatelessWidget {
  // Construtor da classe AppWidget
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Retorna o widget MaterialApp, que configura o tema e as rotas do app
    return MaterialApp(
      // Título do app (usado em algumas plataformas)
      title: 'Basic Flutter',
      // Remove a faixa de "debug" do canto superior direito
      debugShowCheckedModeBanner: false,
      // Define o tema do aplicativo com fundo branco
      theme: ThemeData(scaffoldBackgroundColor: ColorsApp.grayNormal),
      // Define qual rota será exibida primeiro ao iniciar o app
      initialRoute: 'HomePg',
      // Define as rotas disponíveis e suas respectivas telas
      routes: {'HomePg': (context) => HomePg()},
    );
  }
}
