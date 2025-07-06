import 'package:butcher_ctl/00_basic/imports.dart';

class TrashListViewCtn extends StatefulWidget {
  const TrashListViewCtn({super.key});

  @override
  State<TrashListViewCtn> createState() => _TrashListViewCtnState();
}

class _TrashListViewCtnState extends State<TrashListViewCtn> {
  @override
  Widget build(BuildContext context) {
    return
    /* █████████████████████ OFF LIST VIEW CTN █████████████████████ */
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
                  color: ColorsApp.blackNormal,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Text(
                  'LIXO',
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
