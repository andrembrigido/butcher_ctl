import 'package:butcher_ctl/00_basic/imports.dart';

class FormTypeNameBtn extends StatelessWidget {
  final FormTypeNameCls controller;

  const FormTypeNameBtn({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Seletor de tipo de carne
        ValueListenableBuilder<String?>(
          valueListenable: controller.tipoSelecionado,
          builder: (context, tipoSelecionado, _) {
            return Container(
              height: 90,
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                children: [
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
                  Container(
                    height: 60,
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
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
                  ),
                ],
              ),
            );
          },
        ),

        // Dropdown de nomes
        ValueListenableBuilder<List<String>>(
          valueListenable: controller.nomesDisponiveis,
          builder: (context, nomes, _) {
            return ValueListenableBuilder<String?>(
              valueListenable: controller.nomeSelecionado,
              builder: (context, selecionado, _) {
                return Container(
                  height: 70,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: ColorsApp.grayLight,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorsApp.grayHard, width: 2),
                  ),
                  child: Center(
                    child: DropdownButtonFormField<String>(
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
                        hintText: 'Nome da carne',
                      ),
                      hint: Text(
                        'Nome da carne',
                        style: TextStyle(
                          color: ColorsApp.blackLight,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

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
