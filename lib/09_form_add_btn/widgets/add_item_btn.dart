import 'package:butcher_ctl/00_basic/imports.dart';
import 'package:butcher_ctl/09_form_add_btn/form_add_item_ctn.dart';

class AddItemBtn extends StatefulWidget {
  const AddItemBtn({super.key});

  @override
  State<AddItemBtn> createState() => _AddItemBtnState();
}

class _AddItemBtnState extends State<AddItemBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: OutlinedButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) => const FormAddItemCtn(),
          );
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: ColorsApp.transparent,
          side: BorderSide(color: ColorsApp.grayHard, width: 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Icon(
          Icons.add_rounded,
          color: ColorsApp.grayHard,
          size: 60, // mesmo tamanho
        ),
      ),
    );
  }
}
