import 'package:butcher_ctl/00_basic/imports.dart';

/// 🧠 O que faz:
/// Widget visual que exibe os botões de tipo de carne no formulário.
///
/// 📌 Para que serve:
/// Permite ao usuário escolher entre Boi, Porco ou Ave.
/// A seleção é feita visualmente e salva no controller `FormTypeCtl`.
///
/// 🧱 Onde se encaixa:
/// Este componente faz parte do formulário `FormAdd` e deve ser exibido
/// junto aos outros campos como ID, corte, freezer e validade.
class FormTypeBtn extends StatelessWidget {
  const FormTypeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    // Instância do controller responsável por armazenar a seleção
    final FormTypeCtl controller = FormTypeCtl();

    // Escuta reativa: reconstrói o widget quando o valor muda
    return ValueListenableBuilder<String?>(
      valueListenable: controller.tipoSelecionado,
      builder: (context, tipoSelecionado, _) {
        return Container(
          height: 90,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              // Caixa com o título "TIPO DE CARNE"
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

              // Linha com os botões de seleção: Boi, Porco e Ave
              Container(
                height: 60,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Botão BOI
                    GestureDetector(
                      onTap: () => controller.selecionar('bovina'),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:
                              tipoSelecionado == 'bovina'
                                  ? ColorsApp.greenNormal
                                  : ColorsApp.grayHard,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.cow,
                              size: 20,
                              color:
                                  tipoSelecionado == 'bovina'
                                      ? ColorsApp.whiteNormal
                                      : ColorsApp.blackLight,
                            ),
                            Text(
                              'Boi',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color:
                                    tipoSelecionado == 'bovina'
                                        ? ColorsApp.whiteNormal
                                        : ColorsApp.blackLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Botão PORCO
                    GestureDetector(
                      onTap: () => controller.selecionar('suina'),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:
                              tipoSelecionado == 'suina'
                                  ? ColorsApp.greenNormal
                                  : ColorsApp.grayHard,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.piggyBank,
                              size: 20,
                              color:
                                  tipoSelecionado == 'suina'
                                      ? ColorsApp.whiteNormal
                                      : ColorsApp.blackLight,
                            ),
                            Text(
                              'Porco',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color:
                                    tipoSelecionado == 'suina'
                                        ? ColorsApp.whiteNormal
                                        : ColorsApp.blackLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Botão AVE
                    GestureDetector(
                      onTap: () => controller.selecionar('aviaria'),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:
                              tipoSelecionado == 'aviaria'
                                  ? ColorsApp.greenNormal
                                  : ColorsApp.grayHard,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.kiwiBird,
                              size: 20,
                              color:
                                  tipoSelecionado == 'aviaria'
                                      ? ColorsApp.whiteNormal
                                      : ColorsApp.blackLight,
                            ),
                            Text(
                              'Ave',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color:
                                    tipoSelecionado == 'aviaria'
                                        ? ColorsApp.whiteNormal
                                        : ColorsApp.blackLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
