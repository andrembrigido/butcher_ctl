/*
  🧠 O que faz:
  Este arquivo centraliza todos os arquivos mais usados no projeto e os repassa usando `export`.
  Isso permite importar um único arquivo (`imports.dart`) em vez de vários separados.

  📌 Para que serve:
  - Facilita o trabalho: você não precisa lembrar de todos os arquivos em cada nova tela.
  - Deixa o código mais limpo: evita múltiplas linhas de import repetidas.
  - Mantém a organização do projeto conforme ele cresce.

  💡 Como usar:
  Em qualquer outro arquivo do projeto, basta escrever:
  
    import 'package:basic_project/imports.dart';

  Isso já dá acesso a todos os pacotes, temas, controllers e outros arquivos exportados aqui.

  🔁 Qual a diferença entre `import` e `export` no Dart?

    ✅ import  → você usa algo diretamente neste arquivo.
    ✅ export  → você repassa algo para que outros arquivos também possam usar.

  Exemplo:
    export 'package:flutter/material.dart';
    // Isso permite que qualquer arquivo que importe este `imports.dart` também use `material.dart`.

  ⚠️ Regras:
  - Só adicione aqui arquivos que são compartilhados entre várias partes do app.
  - Evite colocar arquivos específicos que só são usados em um único lugar.
*/

// Flutter SDK
export 'package:flutter/material.dart';
// Paleta de cores personalizada do projeto
export '../01_themes/colors_palette.dart';
// Ícones do FontAwesome (ex: FontAwesomeIcons.dog, cat, fish)
export 'package:font_awesome_flutter/font_awesome_flutter.dart';

export '../00_basic/app.dart';
export '../02 _models/model.dart';
export '../03_apis/api.dart';
export '../04_stores/store.dart';
export '../05_appbar/app_bar_ctn.dart';
export '../07_home/home_pg.dart';
export '../08_listview/list_view_ctn.dart';
export '../08_listview/controllers/list_view_ctl.dart';
export '../08_listview/widgets/stock_list_view_ctn.dart';
export '../08_listview/widgets/trash_list_view_ctn.dart';
export '../08_listview/widgets/sold_list_view_ctn.dart';
