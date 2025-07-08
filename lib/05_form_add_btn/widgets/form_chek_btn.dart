import 'package:butcher_ctl/imports.dart';

class FormCheckBtn extends StatefulWidget {
  const FormCheckBtn({super.key});

  @override
  State<FormCheckBtn> createState() => _FormCheckBtnState();
}

class _FormCheckBtnState extends State<FormCheckBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: ColorsApp.grayNormal,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsApp.greenNormal,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Icon(
              Icons.check,
              size: 28,
              color: ColorsApp.whiteNormal,
            ),
          ),
        ],
      ),
    );
  }
}
