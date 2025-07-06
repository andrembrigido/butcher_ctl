import 'package:butcher_ctl/00_basic/imports.dart';

class AppBarCtn extends StatefulWidget {
  const AppBarCtn({super.key});

  @override
  State<AppBarCtn> createState() => _AppBarCTNState();
}

class _AppBarCTNState extends State<AppBarCtn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* █████████████████████ APPBAR SAFE AREA █████████████████████  */
        Container(height: 60, color: ColorsApp.grayNormal),
        /* █████████████████████ APPBAR █████████████████████ */
        Container(
          height: 90,
          decoration: BoxDecoration(
            color: ColorsApp.grayNormal,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
        ),
        /* █████████████████████ GAP █████████████████████ */
      ],
    );
  }
}
