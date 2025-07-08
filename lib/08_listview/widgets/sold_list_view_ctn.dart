import 'package:butcher_ctl/imports.dart';

class SoldListViewCtn extends StatefulWidget {
  const SoldListViewCtn({super.key});

  @override
  State<SoldListViewCtn> createState() => _SoldListViewCtnState();
}

class _SoldListViewCtnState extends State<SoldListViewCtn> {
  @override
  Widget build(BuildContext context) {
    return
    /* █████████████████████ SOLD LIST VIEW CTN █████████████████████ */
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
                  color: ColorsApp.yellowNormal,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Text(
                  'VENDIDO',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorsApp.whiteNormal,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
