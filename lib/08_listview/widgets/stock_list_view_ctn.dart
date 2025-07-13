import 'package:butcher_ctl/00_/imports.dart';
import 'package:butcher_ctl/05_form_add_btn/widgets/add_item_btn.dart';
import 'package:butcher_ctl/09_items/items_ctn.dart';

class StockListViewCtn extends StatefulWidget {
  const StockListViewCtn({super.key});

  @override
  State<StockListViewCtn> createState() => _StockListViewCtnState();
}

class _StockListViewCtnState extends State<StockListViewCtn> {
  @override
  Widget build(BuildContext context) {
    return
    /* █████████████████████ ON LIST VIEW CTN █████████████████████ */
    Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorsApp.grayNormal,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Column(
            children: [
              /* █████████████████████ Titulo CTN █████████████████████ */
              Container(
                width: 250,
                height: 35,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorsApp.greenNormal,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Text(
                  'ESTOQUE',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorsApp.whiteNormal,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              /* █████████████████████ ADD ITEMS BOTTON █████████████████████ */
              AddItemBtn(),
              ItemsCtn(),
            ],
          ),
        ],
      ),
    );
  }
}
