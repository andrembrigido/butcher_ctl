import 'package:butcher_ctl/00_/imports.dart';

class FormImputsBtn extends StatefulWidget {
  const FormImputsBtn({super.key});

  @override
  State<FormImputsBtn> createState() => _FormImputsBtnState();
}

class _FormImputsBtnState extends State<FormImputsBtn> {
  // Controller responsável por tipo e nome da carne
  final formTypeNameCtl = FormTypeNameCls();

  // Controller responsável por freezer e prateleira
  final formFrezzerCtl = FormFrezzerCls();

  // Controller responsável pela data de validade
  final formValidadeCtl = FormValidadeCtl();

  @override
  void initState() {
    super.initState();

    // Carrega os dados da API (nomes dos cortes) ao iniciar
    formTypeNameCtl.carregarDadosDaApi();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: ColorsApp.grayNormal,
        child: Column(
          children: [
            FormIdBtn(),
            FormTypeBtn(controller: formTypeNameCtl),
            FormFrezzerBtn(controller: formFrezzerCtl),
            FormValidadeBtn(controller: formValidadeCtl),
          ],
        ),
      ),
    );
  }
}
