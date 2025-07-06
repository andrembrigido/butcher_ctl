import 'package:butcher_ctl/00_basic/imports.dart';

class FormTypeBtn extends StatefulWidget {
  const FormTypeBtn({super.key});

  @override
  State<FormTypeBtn> createState() => _FormTypeBtnState();
}

class _FormTypeBtnState extends State<FormTypeBtn> {
  // Variável que armazena o tipo selecionado (bovina, suína ou aviária)
  String? tipoSelecionado;

  // Função para atualizar a seleção
  void selecionarTipo(String tipo) {
    setState(() {
      tipoSelecionado = tipo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

      // Coluna principal contendo o título e os botões de tipo
      child: Column(
        children: [
          // Caixa com título "TIPO DE CARNE"
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
          // Linha com os 3 botões: Boi, Porco e Ave
          Container(
            height: 60,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /* ████████████████ BOTÃO - BOI ████████████████ */
                GestureDetector(
                  onTap: () => selecionarTipo('bovina'),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      // Se estiver selecionado, mostra verde; senão, cinza
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
                          // Ícone branco se selecionado, preto se não
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
                            // Texto branco se selecionado, preto se não
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
                /* ████████████████ BOTÃO - PORCO ████████████████ */
                GestureDetector(
                  onTap: () => selecionarTipo('suina'),
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
                /* ████████████████ BOTÃO - AVE ████████████████ */
                GestureDetector(
                  onTap: () => selecionarTipo('aviaria'),
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
  }
}
