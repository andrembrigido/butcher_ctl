import 'package:butcher_ctl/00_basic/imports.dart';

/// 🧱 Widget principal que exibe três listas de carnes (retiradas, em alerta e em estoque)
/// - Utiliza um PageView para permitir a navegação horizontal entre as listas
/// - Usa um controlador externo (ListViewCtl) para gerenciar as páginas
class ListViewCtn extends StatefulWidget {
  const ListViewCtn({super.key});

  @override
  State<ListViewCtn> createState() => _ListViewCtnState();
}

class _ListViewCtnState extends State<ListViewCtn> {
  // Controlador de páginas (PageView) criado externamente no arquivo `list_view_ctl.dart`
  // Define qual lista está sendo exibida e permite navegação programática entre elas
  final listViewController = ListViewCtl();

  // Método chamado automaticamente quando o widget é destruído
  // Libera os recursos do controlador para evitar vazamento de memória
  @override
  void dispose() {
    listViewController.dispose();
    super.dispose();
  }

  // Constrói a interface visual da lista principal usando PageView
  // - Exibe três widgets: OffList, AlertList e OnList
  // - O usuário pode deslizar lateralmente entre eles
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: listViewController.controller,
        children: [
          TrashListViewCtn(), // Carnes já retiradas do estoque
          StockListViewCtn(), // Carnes em estoque com validade ok
          SoldListViewCtn(), // Carnes próximas da validade
        ],
      ),
    );
  }
}
