import 'package:butcher_ctl/00_basic/imports.dart';
import 'package:butcher_ctl/09_form_add_btn/widgets/form_chek_btn.dart';
import 'package:butcher_ctl/09_form_add_btn/widgets/form_close_btn.dart';
import 'package:butcher_ctl/09_form_add_btn/widgets/form_imputs_btn.dart';

class FormAddItemCtn extends StatefulWidget {
  const FormAddItemCtn({super.key});

  @override
  State<FormAddItemCtn> createState() => _FormAddItemCtnState();
}

class _FormAddItemCtnState extends State<FormAddItemCtn> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: UnconstrainedBox(
        child: Container(
          width: 350,
          height: 600,
          decoration: BoxDecoration(
            color: ColorsApp.grayNormal,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [FormCloseBtn(), FormImputsBtn(), FormCheckBtn()],
          ),
        ),
      ),
    );
  }
}
