import 'package:butcher_ctl/imports.dart';
import 'package:butcher_ctl/06_navbar/nav_bar_ctn.dart';

class HomePg extends StatefulWidget {
  const HomePg({super.key});

  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: ColorsApp.whitePure,
      child: Column(
        children: [
          /* █████████████████████ APPBARCTN █████████████████████ */
          AppBarCtn(),
          /* █████████████████████ LISTVIEW CTN █████████████████████ */
          ListViewCtn(),
          /* █████████████████████ NAVBARCTN █████████████████████ */
          NavBarCtn(),
        ],
      ),
    );
  }
}
