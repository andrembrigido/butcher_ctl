import 'package:butcher_ctl/00_basic/imports.dart';

class FormImputsBtn extends StatefulWidget {
  const FormImputsBtn({super.key});

  @override
  State<FormImputsBtn> createState() => _FormImputsBtnState();
}

class _FormImputsBtnState extends State<FormImputsBtn> {
  // Criação do controller unificado
  final formTypeNameCtl = FormTypeNameCls();

  // Carrega os dados da API ao iniciar
  @override
  void initState() {
    super.initState();
    formTypeNameCtl.carregarDadosDaApi();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        width: double.infinity,
        color: ColorsApp.grayNormal,
        child: Column(
          children: [FormIdBtn(), FormTypeNameBtn(controller: formTypeNameCtl)],
        ),
      ),
    );
  }
}
