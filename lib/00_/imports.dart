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

export 'package:flutter/material.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:butcher_ctl/00_/app.dart';
export 'package:butcher_ctl/01_themes/colors_palette.dart';
export 'package:butcher_ctl/02_apis/models/api_mdl.dart';
export 'package:butcher_ctl/02_apis/api.dart';
export 'package:butcher_ctl/02_apis/controllers/api_ctl.dart';
export 'package:butcher_ctl/02_apis/stores/api_store.dart';
export 'package:butcher_ctl/03_appbar/app_bar_ctn.dart';
export 'package:butcher_ctl/05_form_add_btn/form_add_item_ctn.dart';
export 'package:butcher_ctl/06_form_imputs/widgets/form_id_btn.dart';
export 'package:butcher_ctl/06_form_imputs/controllers/form_id_ctl.dart';
export 'package:butcher_ctl/06_form_imputs/widgets/form_type_btn.dart';
export 'package:butcher_ctl/06_form_imputs/controllers/form_type_ctl.dart';
export 'package:butcher_ctl/06_form_imputs/widgets/form_frezzer_btn.dart';
export 'package:butcher_ctl/06_form_imputs/controllers/form_frezzer_ctl.dart';
export 'package:butcher_ctl/06_form_imputs/widgets/form_validade_btn.dart';
export 'package:butcher_ctl/06_form_imputs/controllers/form_validade_ctl.dart';
export 'package:butcher_ctl/07_home/home_pg.dart';
export 'package:butcher_ctl/08_listview/list_view_ctn.dart';
export 'package:butcher_ctl/08_listview/controllers/list_view_ctl.dart';
export 'package:butcher_ctl/08_listview/widgets/stock_list_view_ctn.dart';
export 'package:butcher_ctl/08_listview/widgets/trash_list_view_ctn.dart';
export 'package:butcher_ctl/08_listview/widgets/sold_list_view_ctn.dart';
