import 'package:butcher_ctl/00_/imports.dart';

/// Widget visual responsável por exibir os botões de seleção de Freezer e Prateleira
class FormFrezzerBtn extends StatelessWidget {
  final FormFrezzerCls controller;

  const FormFrezzerBtn({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /* █████████████████████ TEXTO FREEZER █████████████████████ */
          Container(
            height: 20,
            width: 120,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorsApp.greenNormal,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'FREEZER',
              style: TextStyle(
                color: ColorsApp.whiteNormal,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          /* █████████████████████ FREEZER CTN █████████████████████ */
          ValueListenableBuilder<String?>(
            valueListenable: controller.freezerSelecionado,
            builder: (context, selecionado, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(5, (index) {
                  final nome = 'F${index + 1}';
                  return _SelecaoQuadrada(
                    texto: nome,
                    icone: FontAwesomeIcons.snowflake,
                    ativo: selecionado == nome,
                    onTap: () => controller.selecionarFreezer(nome),
                  );
                }),
              );
            },
          ),
          /* █████████████████████ TEXTO PRATELEIRA █████████████████████ */
          Container(
            height: 20,
            width: 120,
            margin: EdgeInsets.fromLTRB(0, 15, 10, 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorsApp.greenNormal,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'PRATELEIRA',
              style: TextStyle(
                color: ColorsApp.whiteNormal,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          /* █████████████████████ PRATELEIRA CTN █████████████████████ */
          ValueListenableBuilder<String?>(
            valueListenable: controller.prateleiraSelecionada,
            builder: (context, selecionado, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(5, (index) {
                  final nome = 'P${index + 1}';
                  return _SelecaoQuadrada(
                    texto: nome,
                    icone: FontAwesomeIcons.boxesStacked,
                    ativo: selecionado == nome,
                    onTap: () => controller.selecionarPrateleira(nome),
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// BOTÃO VISUAL QUADRADO REUTILIZÁVEL PARA FREEZER E PRATELEIRA
// ============================================================================
class _SelecaoQuadrada extends StatelessWidget {
  final String texto;
  final IconData icone;
  final bool ativo;
  final VoidCallback onTap;

  const _SelecaoQuadrada({
    required this.texto,
    required this.icone,
    required this.ativo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: ativo ? ColorsApp.greenNormal : ColorsApp.grayHard,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icone,
              size: 18,
              color: ativo ? ColorsApp.whiteNormal : ColorsApp.blackLight,
            ),
            const SizedBox(height: 2),
            Text(
              texto,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: ativo ? ColorsApp.whiteNormal : ColorsApp.blackLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
