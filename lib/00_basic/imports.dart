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
  
    import 'package:butcher_ctl/00_basic/imports.dart';

  ⚠️ Regras:
  - Só adicione aqui arquivos que são compartilhados entre várias partes do app.
  - Evite colocar arquivos específicos que só são usados em um único lugar.
*/

/// 🌐 FLUTTER SDK
export 'package:flutter/material.dart';

/// 🚀 ENTRADA DO APP
export 'package:butcher_ctl/00_basic/app.dart';

/// 🎨 TEMAS E CORES
export 'package:butcher_ctl/01_themes/colors_palette.dart';

/// 📦 MODELOS
export 'package:butcher_ctl/02 _models/model.dart';

/// 🔌 API FAKE + CONTROLLER
export 'package:butcher_ctl/03_apis/api.dart';
export 'package:butcher_ctl/03_apis/api_ctl.dart';

/// 📦 STORE
export 'package:butcher_ctl/04_stores/store.dart';

/// 🧱 COMPONENTES COMPARTILHADOS
export 'package:butcher_ctl/05_appbar/app_bar_ctn.dart';

/// 🏠 TELA PRINCIPAL
export 'package:butcher_ctl/07_home/home_pg.dart';

/// 📋 LISTVIEW (e subcomponentes)
export 'package:butcher_ctl/08_listview/list_view_ctn.dart';
export 'package:butcher_ctl/08_listview/controllers/list_view_ctl.dart';
export 'package:butcher_ctl/08_listview/widgets/stock_list_view_ctn.dart';
export 'package:butcher_ctl/08_listview/widgets/trash_list_view_ctn.dart';
export 'package:butcher_ctl/08_listview/widgets/sold_list_view_ctn.dart';

/// 🎯 ÍCONES
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
