import 'package:butcher_ctl/00_basic/imports.dart';

/// Widget visual que exibe os botões de tipo e o dropdown de nome da carne
class FormTypeBtn extends StatelessWidget {
  final FormTypeNameCls controller;

  const FormTypeBtn({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // =========================================================================
          // TÍTULO "TIPO DE CARNE"
          // =========================================================================
          Container(
            height: 20,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorsApp.greenNormal,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'TIPO DE CARNE',
              style: TextStyle(
                color: ColorsApp.whiteNormal,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // =========================================================================
          // BOTÕES DE BOI, PORCO E AVE
          // =========================================================================
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: ValueListenableBuilder<String?>(
              valueListenable: controller.tipoSelecionado,
              builder: (context, tipoSelecionado, _) {
                return Container(
                  height: 60,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _TipoBotao(
                        texto: 'Boi',
                        icone: FontAwesomeIcons.cow,
                        ativo: tipoSelecionado == 'bovina',
                        onTap: () => controller.selecionarTipo('bovina'),
                      ),
                      _TipoBotao(
                        texto: 'Porco',
                        icone: FontAwesomeIcons.piggyBank,
                        ativo: tipoSelecionado == 'suina',
                        onTap: () => controller.selecionarTipo('suina'),
                      ),
                      _TipoBotao(
                        texto: 'Ave',
                        icone: FontAwesomeIcons.kiwiBird,
                        ativo: tipoSelecionado == 'aviaria',
                        onTap: () => controller.selecionarTipo('aviaria'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // =========================================================================
          // DROPDOWN DE NOMES DOS CORTES
          // =========================================================================
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: ValueListenableBuilder<List<String>>(
              valueListenable: controller.nomesDisponiveis,
              builder: (context, nomes, _) {
                return ValueListenableBuilder<String?>(
                  valueListenable: controller.nomeSelecionado,
                  builder: (context, selecionado, _) {
                    return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: ColorsApp.grayNormal,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          color: ColorsApp.greenNormal,
                          width: 2,
                        ),
                      ),
                      child: DropdownButtonFormField<String>(
                        isExpanded: true,
                        isDense: true,
                        alignment: Alignment.center,
                        borderRadius: BorderRadius.circular(20),
                        value: selecionado,
                        items:
                            nomes.map((nome) {
                              return DropdownMenuItem<String>(
                                value: nome,
                                child: Text(
                                  nome,
                                  style: TextStyle(
                                    color: ColorsApp.blackNormal,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            }).toList(),
                        onChanged: (novoNome) {
                          if (novoNome != null) {
                            controller.selecionarNome(novoNome);
                          }
                        },
                        dropdownColor: ColorsApp.whiteNormal,
                        iconEnabledColor: ColorsApp.blackNormal,
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Selecione um Corte',
                        ),
                        hint: Text(
                          'Selecione um Corte',
                          style: TextStyle(
                            color: ColorsApp.blackLight,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// COMPONENTE VISUAL REUTILIZÁVEL PARA CADA BOTÃO DE TIPO
// ============================================================================
class _TipoBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final bool ativo;
  final VoidCallback onTap;

  const _TipoBotao({
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
              size: 20,
              color: ativo ? ColorsApp.whiteNormal : ColorsApp.blackLight,
            ),
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
