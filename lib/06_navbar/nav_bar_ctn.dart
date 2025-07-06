import 'package:butcher_ctl/00_basic/imports.dart';

class NavBarCtn extends StatefulWidget {
  const NavBarCtn({super.key});

  @override
  State<NavBarCtn> createState() => _NavBarCtnState();
}

class _NavBarCtnState extends State<NavBarCtn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* █████████████████████ NAVBAR █████████████████████ */
        Container(
          height: 70,
          decoration: BoxDecoration(
            color: ColorsApp.grayNormal,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(10),
            ),
          ),
        ),
        /* █████████████████████ NAVBAR SAFE AREA █████████████████████ */
        Container(height: 30, color: ColorsApp.grayNormal),
      ],
    );
  }
}
