// 🧠 O que faz:
// Exibe o ID visual temporário dentro de um container estilizado.
//
// 📌 Para que serve:
// Permite ao usuário visualizar o próximo ID disponível antes de salvar oficialmente.
//
// 🍽️ Analogia:
// Como uma prévia do número da comanda no balcão: o cliente vê, mas ainda pode cancelar.
//
// 🧱 Onde se encaixa:
// Chamado dentro do `FormAdd`, aparece sempre que um novo item for adicionado.

import 'package:butcher_ctl/00_basic/imports.dart';

class FormIdBtn extends StatefulWidget {
  const FormIdBtn({super.key});

  @override
  State<FormIdBtn> createState() => _FormIdBtnState();
}

class _FormIdBtnState extends State<FormIdBtn> {
  // 🎛️ Controller que gerencia a lógica do ID
  final FormIdCls _controller = FormIdCls();

  // 💾 ID visual temporário exibido ao usuário
  String? _idVisual;

  @override
  void initState() {
    super.initState();

    // 🔧 Gera o ID visual assim que o botão é construído
    _idVisual = _controller.gerarIdVisual();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 📦 Container principal com borda e estilo fixo
        Container(
          height: 40,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(40, 10, 40, 0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: ColorsApp.grayHard, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.only(left: 12),
          alignment: Alignment.center,
          child: Text(
            'ID - ${_idVisual ?? ''}', // Exibe o ID visual
            style: const TextStyle(
              color: ColorsApp.grayHard,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
