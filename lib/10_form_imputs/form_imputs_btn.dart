import 'package:butcher_ctl/00_basic/imports.dart';
import 'package:butcher_ctl/10_form_imputs/widgets/form_type_btn.dart';

class FormImputsBtn extends StatefulWidget {
  const FormImputsBtn({super.key});

  @override
  State<FormImputsBtn> createState() => _FormImputsBtnState();
}

class _FormImputsBtnState extends State<FormImputsBtn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        width: double.infinity,
        color: ColorsApp.grayNormal,
        child: Column(children: [FormIdBtn(), FormTypeBtn()]),
      ),
    );
  }
}
